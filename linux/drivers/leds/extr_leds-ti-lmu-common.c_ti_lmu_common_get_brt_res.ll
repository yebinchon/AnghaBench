; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_get_brt_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_get_brt_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.ti_lmu_bank = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"ti,brightness-resolution\00", align 1
@MAX_BRIGHTNESS_8BIT = common dso_local global i64 0, align 8
@MAX_BRIGHTNESS_11BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_lmu_common_get_brt_res(%struct.device* %0, %struct.fwnode_handle* %1, %struct.ti_lmu_bank* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca %struct.ti_lmu_bank*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %6, align 8
  store %struct.ti_lmu_bank* %2, %struct.ti_lmu_bank** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %11 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %10, i32 0, i32 0
  %12 = call i32 @device_property_read_u32(%struct.device* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %17 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %18 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %17, i32 0, i32 0
  %19 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64* %18)
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %15, %3
  %21 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %22 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64, i64* @MAX_BRIGHTNESS_8BIT, align 8
  %27 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %28 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %20
  %31 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %32 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_BRIGHTNESS_11BIT, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i64, i64* @MAX_BRIGHTNESS_11BIT, align 8
  %38 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %7, align 8
  %39 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @device_property_read_u32(%struct.device*, i8*, i64*) #1

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
