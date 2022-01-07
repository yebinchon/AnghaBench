; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_cec_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, %struct.TYPE_2__*, %struct.gpio_desc* }
%struct.TYPE_2__ = type { i64 }
%struct.gpio_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tda998x_priv*)* @tda998x_cec_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_cec_calibration(%struct.tda998x_priv* %0) #0 {
  %2 = alloca %struct.tda998x_priv*, align 8
  %3 = alloca %struct.gpio_desc*, align 8
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %2, align 8
  %4 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %5 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %4, i32 0, i32 2
  %6 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  store %struct.gpio_desc* %6, %struct.gpio_desc** %3, align 8
  %7 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %8 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %11 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %18 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @disable_irq(i64 %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %25 = call i32 @gpiod_direction_output(%struct.gpio_desc* %24, i32 1)
  %26 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %27 = call i32 @tda998x_cec_set_calibration(%struct.tda998x_priv* %26, i32 1)
  %28 = call i32 (...) @local_irq_disable()
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %30 = call i32 @gpiod_set_value(%struct.gpio_desc* %29, i32 0)
  %31 = call i32 @mdelay(i32 10)
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %33 = call i32 @gpiod_set_value(%struct.gpio_desc* %32, i32 1)
  %34 = call i32 (...) @local_irq_enable()
  %35 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %36 = call i32 @tda998x_cec_set_calibration(%struct.tda998x_priv* %35, i32 0)
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %3, align 8
  %38 = call i32 @gpiod_direction_input(%struct.gpio_desc* %37)
  %39 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %40 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %23
  %46 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %47 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @enable_irq(i64 %50)
  br label %52

52:                                               ; preds = %45, %23
  %53 = load %struct.tda998x_priv*, %struct.tda998x_priv** %2, align 8
  %54 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq(i64) #1

declare dso_local i32 @gpiod_direction_output(%struct.gpio_desc*, i32) #1

declare dso_local i32 @tda998x_cec_set_calibration(%struct.tda998x_priv*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @gpiod_direction_input(%struct.gpio_desc*) #1

declare dso_local i32 @enable_irq(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
