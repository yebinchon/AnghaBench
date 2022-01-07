; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_get_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_get_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_led_data = type { i32, %struct.TYPE_2__, %struct.mlxreg_core_data*, %struct.mlxreg_led_priv_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mlxreg_core_data = type { i32, i64, i32 }
%struct.mlxreg_led_priv_data = type { %struct.mlxreg_core_platform_data* }
%struct.mlxreg_core_platform_data = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Failed to get current brightness, error: %d\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4
@MLXREG_LED_OFFSET_BLINK_6HZ = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_led_data*)* @mlxreg_led_get_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_led_get_hw(%struct.mlxreg_led_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxreg_led_data*, align 8
  %4 = alloca %struct.mlxreg_led_priv_data*, align 8
  %5 = alloca %struct.mlxreg_core_platform_data*, align 8
  %6 = alloca %struct.mlxreg_core_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxreg_led_data* %0, %struct.mlxreg_led_data** %3, align 8
  %9 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %10 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %9, i32 0, i32 3
  %11 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %10, align 8
  store %struct.mlxreg_led_priv_data* %11, %struct.mlxreg_led_priv_data** %4, align 8
  %12 = load %struct.mlxreg_led_priv_data*, %struct.mlxreg_led_priv_data** %4, align 8
  %13 = getelementptr inbounds %struct.mlxreg_led_priv_data, %struct.mlxreg_led_priv_data* %12, i32 0, i32 0
  %14 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %13, align 8
  store %struct.mlxreg_core_platform_data* %14, %struct.mlxreg_core_platform_data** %5, align 8
  %15 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %16 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %15, i32 0, i32 2
  %17 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %16, align 8
  store %struct.mlxreg_core_data* %17, %struct.mlxreg_core_data** %6, align 8
  %18 = load %struct.mlxreg_core_platform_data*, %struct.mlxreg_core_platform_data** %5, align 8
  %19 = getelementptr inbounds %struct.mlxreg_core_platform_data, %struct.mlxreg_core_platform_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %22 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @regmap_read(i32 %20, i32 %23, i32* %7)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %29 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_warn(i32 %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @LED_OFF, align 4
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %38 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = xor i32 %39, -1
  %41 = and i32 %36, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %43 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %46 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ror32(i32 %44, i64 %47)
  %49 = icmp eq i32 %48, 240
  br i1 %49, label %50, label %56

50:                                               ; preds = %35
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %53 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ror32(i32 %51, i64 %54)
  br label %63

56:                                               ; preds = %35
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %6, align 8
  %59 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 4
  %62 = call i32 @ror32(i32 %57, i64 %61)
  br label %63

63:                                               ; preds = %56, %50
  %64 = phi i32 [ %55, %50 ], [ %62, %56 ]
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %67 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %3, align 8
  %73 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MLXREG_LED_OFFSET_BLINK_6HZ, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp sle i32 %71, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @LED_FULL, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %70, %63
  %81 = load i32, i32* @LED_OFF, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %78, %27
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @ror32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
