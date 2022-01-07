; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mlxcpld.c_mlxcpld_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.mlxcpld_led_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@MLXCPLD_LED_BLINK_3HZ = common dso_local global i64 0, align 8
@MLXCPLD_LED_BLINK_6HZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MLXCPLD_LED_OFFSET_FULL = common dso_local global i64 0, align 8
@MLXCPLD_LED_OFFSET_HALF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @mlxcpld_led_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mlxcpld_led_priv*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %10 = call %struct.mlxcpld_led_priv* @cdev_to_priv(%struct.led_classdev* %9)
  store %struct.mlxcpld_led_priv* %10, %struct.mlxcpld_led_priv** %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14, %3
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MLXCPLD_LED_BLINK_3HZ, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLXCPLD_LED_BLINK_3HZ, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %41, label %28

28:                                               ; preds = %23, %18
  %29 = load i64*, i64** %6, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLXCPLD_LED_BLINK_6HZ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLXCPLD_LED_BLINK_6HZ, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %79

41:                                               ; preds = %33, %23, %14
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MLXCPLD_LED_BLINK_6HZ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %48 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %52 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %56 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MLXCPLD_LED_OFFSET_FULL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @mlxcpld_led_store_hw(i32 %50, i32 %54, i64 %60)
  br label %78

62:                                               ; preds = %41
  %63 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %64 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %68 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mlxcpld_led_priv*, %struct.mlxcpld_led_priv** %8, align 8
  %72 = getelementptr inbounds %struct.mlxcpld_led_priv, %struct.mlxcpld_led_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MLXCPLD_LED_OFFSET_HALF, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @mlxcpld_led_store_hw(i32 %66, i32 %70, i64 %76)
  br label %78

78:                                               ; preds = %62, %46
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.mlxcpld_led_priv* @cdev_to_priv(%struct.led_classdev*) #1

declare dso_local i32 @mlxcpld_led_store_hw(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
