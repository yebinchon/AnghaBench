; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71805f_data = type { i32* }

@F71805F_REG_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Starting monitoring operations\0A\00", align 1
@FAN_CTRL_LATCH_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f71805f_data*)* @f71805f_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f71805f_init_device(%struct.f71805f_data* %0) #0 {
  %2 = alloca %struct.f71805f_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.f71805f_data* %0, %struct.f71805f_data** %2, align 8
  %5 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %6 = load i32, i32* @F71805F_REG_START, align 4
  %7 = call i8* @f71805f_read8(%struct.f71805f_data* %5, i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 65
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %15 = load i32, i32* @F71805F_REG_START, align 4
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, 1
  %18 = and i32 %17, -65
  %19 = call i32 @f71805f_write8(%struct.f71805f_data* %14, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %69, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %72

24:                                               ; preds = %21
  %25 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @F71805F_REG_FAN_CTRL(i32 %26)
  %28 = call i8* @f71805f_read8(%struct.f71805f_data* %25, i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %31 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  %36 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %37 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FAN_CTRL_LATCH_FULL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %24
  %47 = load i32, i32* @FAN_CTRL_LATCH_FULL, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %50 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %48
  store i32 %56, i32* %54, align 4
  %57 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @F71805F_REG_FAN_CTRL(i32 %58)
  %60 = load %struct.f71805f_data*, %struct.f71805f_data** %2, align 8
  %61 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @f71805f_write8(%struct.f71805f_data* %57, i32 %59, i32 %66)
  br label %68

68:                                               ; preds = %46, %24
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %21

72:                                               ; preds = %21
  ret void
}

declare dso_local i8* @f71805f_read8(%struct.f71805f_data*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @f71805f_write8(%struct.f71805f_data*, i32, i32) #1

declare dso_local i32 @F71805F_REG_FAN_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
