; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_get_ramp_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ti-lmu-common.c_ti_lmu_common_get_ramp_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.ti_lmu_bank = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"ramp-up-us\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"ramp-up-us property missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"ramp-down-us\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ramp-down-us property missing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_lmu_common_get_ramp_params(%struct.device* %0, %struct.fwnode_handle* %1, %struct.ti_lmu_bank* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca %struct.ti_lmu_bank*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %5, align 8
  store %struct.ti_lmu_bank* %2, %struct.ti_lmu_bank** %6, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %9 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %6, align 8
  %10 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %9, i32 0, i32 1
  %11 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_warn(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %19 = load %struct.ti_lmu_bank*, %struct.ti_lmu_bank** %6, align 8
  %20 = getelementptr inbounds %struct.ti_lmu_bank, %struct.ti_lmu_bank* %19, i32 0, i32 0
  %21 = call i32 @fwnode_property_read_u32(%struct.fwnode_handle* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  ret i32 0
}

declare dso_local i32 @fwnode_property_read_u32(%struct.fwnode_handle*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
