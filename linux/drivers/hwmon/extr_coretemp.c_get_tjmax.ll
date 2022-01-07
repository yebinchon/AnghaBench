; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_get_tjmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_get_tjmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32 }
%struct.device = type { i32 }

@MSR_IA32_TEMPERATURE_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unable to read TjMax from CPU %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"TjMax is %d degrees C\0A\00", align 1
@force_tjmax = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TjMax forced to %d degrees C by user\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuinfo_x86*, i32, %struct.device*)* @get_tjmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tjmax(%struct.cpuinfo_x86* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuinfo_x86*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MSR_IA32_TEMPERATURE_TARGET, align 4
  %14 = call i32 @rdmsr_safe_on_cpu(i32 %12, i32 %13, i32* %9, i32* %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %19 = call i64 @cpu_has_tjmax(%struct.cpuinfo_x86* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  br label %39

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 1000
  store i32 %37, i32* %4, align 4
  br label %53

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* @force_tjmax, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load i32, i32* @force_tjmax, align 4
  %45 = call i32 @dev_notice(%struct.device* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @force_tjmax, align 4
  %47 = mul nsw i32 %46, 1000
  store i32 %47, i32* %4, align 4
  br label %53

48:                                               ; preds = %39
  %49 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.device*, %struct.device** %7, align 8
  %52 = call i32 @adjust_tjmax(%struct.cpuinfo_x86* %49, i32 %50, %struct.device* %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %42, %32
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @rdmsr_safe_on_cpu(i32, i32, i32*, i32*) #1

declare dso_local i64 @cpu_has_tjmax(%struct.cpuinfo_x86*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

declare dso_local i32 @adjust_tjmax(%struct.cpuinfo_x86*, i32, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
