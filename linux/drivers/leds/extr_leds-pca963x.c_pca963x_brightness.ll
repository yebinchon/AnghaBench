; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-pca963x.c_pca963x_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pca963x_led = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PCA963X_LED_ON = common dso_local global i32 0, align 4
@PCA963X_PWM_BASE = common dso_local global i32 0, align 4
@PCA963X_LED_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pca963x_led*, i32)* @pca963x_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca963x_brightness(%struct.pca963x_led* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pca963x_led*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pca963x_led* %0, %struct.pca963x_led** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %12 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %19 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 4
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %24 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = srem i32 %25, 4
  %27 = mul nsw i32 2, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 3, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %31 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %66 [
    i32 129, label %38
    i32 128, label %54
  ]

38:                                               ; preds = %2
  %39 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %40 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @PCA963X_LED_ON, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  %53 = call i32 @i2c_smbus_write_byte_data(i32 %43, i32 %44, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %99

54:                                               ; preds = %2
  %55 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %56 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @i2c_smbus_write_byte_data(i32 %59, i32 %60, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %99

66:                                               ; preds = %2
  %67 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %68 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCA963X_PWM_BASE, align 4
  %73 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %74 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %72, %75
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @i2c_smbus_write_byte_data(i32 %71, i32 %76, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %101

83:                                               ; preds = %66
  %84 = load %struct.pca963x_led*, %struct.pca963x_led** %4, align 8
  %85 = getelementptr inbounds %struct.pca963x_led, %struct.pca963x_led* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  %94 = load i32, i32* @PCA963X_LED_PWM, align 4
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %94, %95
  %97 = or i32 %93, %96
  %98 = call i32 @i2c_smbus_write_byte_data(i32 %88, i32 %89, i32 %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %83, %54, %38
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %81
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
