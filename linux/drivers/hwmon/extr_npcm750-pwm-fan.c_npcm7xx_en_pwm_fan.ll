; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_en_pwm_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_npcm750-pwm-fan.c_npcm7xx_en_pwm_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.npcm7xx_pwm_fan_data = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@NPCM7XX_PWM_CMR_DEFAULT_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cooling-levels\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"fan-tach-ch\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FAN_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.npcm7xx_pwm_fan_data*)* @npcm7xx_en_pwm_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm7xx_en_pwm_fan(%struct.device* %0, %struct.device_node* %1, %struct.npcm7xx_pwm_fan_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.npcm7xx_pwm_fan_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.npcm7xx_pwm_fan_data* %2, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %102

20:                                               ; preds = %3
  %21 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %22 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32 1, i32* %25, align 4
  %26 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @NPCM7XX_PWM_CMR_DEFAULT_NUM, align 4
  %29 = call i32 @npcm7xx_pwm_config_set(%struct.npcm7xx_pwm_fan_data* %26, i64 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32 @of_property_count_u8_elems(%struct.device_node* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %20
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @npcm7xx_create_pwm_cooling(%struct.device* %35, %struct.device_node* %36, %struct.npcm7xx_pwm_fan_data* %37, i64 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %102

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %20
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @of_property_count_u8_elems(%struct.device_node* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %46
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32* @devm_kcalloc(%struct.device* %55, i32 %56, i32 4, i32 %57)
  store i32* %58, i32** %8, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %102

64:                                               ; preds = %54
  %65 = load %struct.device_node*, %struct.device_node** %6, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @of_property_read_u8_array(%struct.device_node* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %102

73:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %98, %73
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %12, align 4
  %84 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %85 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 1, i32* %89, align 4
  %90 = load i32, i32* @FAN_INIT, align 4
  %91 = load %struct.npcm7xx_pwm_fan_data*, %struct.npcm7xx_pwm_fan_data** %7, align 8
  %92 = getelementptr inbounds %struct.npcm7xx_pwm_fan_data, %struct.npcm7xx_pwm_fan_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %74

101:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %71, %61, %51, %43, %18
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @npcm7xx_pwm_config_set(%struct.npcm7xx_pwm_fan_data*, i64, i32) #1

declare dso_local i32 @of_property_count_u8_elems(%struct.device_node*, i8*) #1

declare dso_local i32 @npcm7xx_create_pwm_cooling(%struct.device*, %struct.device_node*, %struct.npcm7xx_pwm_fan_data*, i64, i32) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u8_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
