; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_validate_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-max77693.c_max77693_led_validate_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_led_device = type { i32 }
%struct.max77693_led_config_data = type { i64, i32, i64, i64, i64*, i32, i32 }

@FLASH_IOUT_MAX_2LEDS = common dso_local global i32 0, align 4
@FLASH_IOUT_MAX_1LED = common dso_local global i32 0, align 4
@FLED1 = common dso_local global i32 0, align 4
@FLED2 = common dso_local global i32 0, align 4
@MAX77693_LED_BOOST_NONE = common dso_local global i64 0, align 8
@MAX77693_LED_BOOST_FIXED = common dso_local global i64 0, align 8
@TORCH_IOUT_MIN = common dso_local global i32 0, align 4
@TORCH_IOUT_MAX = common dso_local global i32 0, align 4
@TORCH_IOUT_STEP = common dso_local global i32 0, align 4
@FLASH_IOUT_MIN = common dso_local global i32 0, align 4
@FLASH_IOUT_STEP = common dso_local global i32 0, align 4
@FLASH_TIMEOUT_MIN = common dso_local global i32 0, align 4
@FLASH_TIMEOUT_MAX = common dso_local global i32 0, align 4
@FLASH_TIMEOUT_STEP = common dso_local global i32 0, align 4
@FLASH_VOUT_MIN = common dso_local global i32 0, align 4
@FLASH_VOUT_MAX = common dso_local global i32 0, align 4
@FLASH_VOUT_STEP = common dso_local global i32 0, align 4
@MAX_FLASH1_VSYS_MIN = common dso_local global i32 0, align 4
@MAX_FLASH1_VSYS_MAX = common dso_local global i32 0, align 4
@MAX_FLASH1_VSYS_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_led_device*, %struct.max77693_led_config_data*)* @max77693_led_validate_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_led_validate_configuration(%struct.max77693_led_device* %0, %struct.max77693_led_config_data* %1) #0 {
  %3 = alloca %struct.max77693_led_device*, align 8
  %4 = alloca %struct.max77693_led_config_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_led_device* %0, %struct.max77693_led_device** %3, align 8
  store %struct.max77693_led_config_data* %1, %struct.max77693_led_config_data** %4, align 8
  %7 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %8 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FLASH_IOUT_MAX_2LEDS, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FLASH_IOUT_MAX_1LED, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %18 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %23 = load i32, i32* @FLED1, align 4
  %24 = call i64 @max77693_fled_used(%struct.max77693_led_device* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %28 = load i32, i32* @FLED2, align 4
  %29 = call i64 @max77693_fled_used(%struct.max77693_led_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %33 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %26, %21, %15
  %35 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %36 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MAX77693_LED_BOOST_NONE, align 8
  %39 = load i64, i64* @MAX77693_LED_BOOST_FIXED, align 8
  %40 = call i64 @clamp_val(i64 %37, i64 %38, i64 %39)
  %41 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %42 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %44 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAX77693_LED_BOOST_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %34
  %49 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %50 = getelementptr inbounds %struct.max77693_led_device, %struct.max77693_led_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i64, i64* @MAX77693_LED_BOOST_FIXED, align 8
  %55 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %56 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %48, %34
  %58 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %59 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %60 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TORCH_IOUT_MIN, align 4
  %63 = load i32, i32* @TORCH_IOUT_MAX, align 4
  %64 = load i32, i32* @TORCH_IOUT_STEP, align 4
  %65 = call i32 @max77693_align_iout_current(%struct.max77693_led_device* %58, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.max77693_led_device*, %struct.max77693_led_device** %3, align 8
  %67 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %68 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FLASH_IOUT_MIN, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @FLASH_IOUT_STEP, align 4
  %73 = call i32 @max77693_align_iout_current(%struct.max77693_led_device* %66, i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %92, %57
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %77 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %76, i32 0, i32 4
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @ARRAY_SIZE(i64* %78)
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %74
  %82 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %83 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i32, i32* @FLASH_TIMEOUT_MIN, align 4
  %89 = load i32, i32* @FLASH_TIMEOUT_MAX, align 4
  %90 = load i32, i32* @FLASH_TIMEOUT_STEP, align 4
  %91 = call i32 @clamp_align(i64* %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %74

95:                                               ; preds = %74
  %96 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %97 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %96, i32 0, i32 3
  %98 = load i32, i32* @FLASH_VOUT_MIN, align 4
  %99 = load i32, i32* @FLASH_VOUT_MAX, align 4
  %100 = load i32, i32* @FLASH_VOUT_STEP, align 4
  %101 = call i32 @clamp_align(i64* %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %103 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %95
  %107 = load %struct.max77693_led_config_data*, %struct.max77693_led_config_data** %4, align 8
  %108 = getelementptr inbounds %struct.max77693_led_config_data, %struct.max77693_led_config_data* %107, i32 0, i32 2
  %109 = load i32, i32* @MAX_FLASH1_VSYS_MIN, align 4
  %110 = load i32, i32* @MAX_FLASH1_VSYS_MAX, align 4
  %111 = load i32, i32* @MAX_FLASH1_VSYS_STEP, align 4
  %112 = call i32 @clamp_align(i64* %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %95
  ret void
}

declare dso_local i64 @max77693_fled_used(%struct.max77693_led_device*, i32) #1

declare dso_local i64 @clamp_val(i64, i64, i64) #1

declare dso_local i32 @max77693_align_iout_current(%struct.max77693_led_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @clamp_align(i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
