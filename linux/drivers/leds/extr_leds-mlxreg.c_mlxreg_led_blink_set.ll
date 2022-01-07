; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxreg.c_mlxreg_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.mlxreg_led_data = type { i64 }

@MLXREG_LED_BLINK_3HZ = common dso_local global i64 0, align 8
@MLXREG_LED_BLINK_6HZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLXREG_LED_OFFSET_BLINK_6HZ = common dso_local global i64 0, align 8
@MLXREG_LED_OFFSET_BLINK_3HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @mlxreg_led_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mlxreg_led_data*, align 8
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %11 = call %struct.mlxreg_led_data* @cdev_to_priv(%struct.led_classdev* %10)
  store %struct.mlxreg_led_data* %11, %struct.mlxreg_led_data** %8, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15, %3
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MLXREG_LED_BLINK_3HZ, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MLXREG_LED_BLINK_3HZ, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %24, %19
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MLXREG_LED_BLINK_6HZ, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MLXREG_LED_BLINK_6HZ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %34, %24, %15
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MLXREG_LED_BLINK_6HZ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %49 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %50 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MLXREG_LED_OFFSET_BLINK_6HZ, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @mlxreg_led_store_hw(%struct.mlxreg_led_data* %48, i64 %53)
  store i32 %54, i32* %9, align 4
  br label %75

55:                                               ; preds = %42
  %56 = load i64*, i64** %6, align 8
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MLXREG_LED_BLINK_3HZ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %62 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %63 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MLXREG_LED_OFFSET_BLINK_3HZ, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @mlxreg_led_store_hw(%struct.mlxreg_led_data* %61, i64 %66)
  store i32 %67, i32* %9, align 4
  br label %74

68:                                               ; preds = %55
  %69 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %70 = load %struct.mlxreg_led_data*, %struct.mlxreg_led_data** %8, align 8
  %71 = getelementptr inbounds %struct.mlxreg_led_data, %struct.mlxreg_led_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mlxreg_led_store_hw(%struct.mlxreg_led_data* %69, i64 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %60
  br label %75

75:                                               ; preds = %74, %47
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %39
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.mlxreg_led_data* @cdev_to_priv(%struct.led_classdev*) #1

declare dso_local i32 @mlxreg_led_store_hw(%struct.mlxreg_led_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
