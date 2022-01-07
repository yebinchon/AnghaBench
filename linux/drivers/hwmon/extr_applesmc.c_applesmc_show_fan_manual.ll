; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_manual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_applesmc.c_applesmc_show_fan_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@FANS_MANUAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @applesmc_show_fan_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @applesmc_show_fan_manual(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @FANS_MANUAL, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %13 = call i32 @applesmc_read_key(i32 %11, i32* %12, i32 2)
  store i32 %13, i32* %8, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %16, %18
  %20 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %21 = call i32 @to_index(%struct.device_attribute* %20)
  %22 = ashr i32 %19, %21
  %23 = and i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %33

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %26
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @applesmc_read_key(i32, i32*, i32) #1

declare dso_local i32 @to_index(%struct.device_attribute*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
