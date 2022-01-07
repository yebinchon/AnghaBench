; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tda998x_priv = type { i64, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@REG_CEC_RXSHPDINTENA = common dso_local global i32 0, align 4
@REG_INT_FLAGS_2 = common dso_local global i32 0, align 4
@INT_FLAGS_2_EDID_BLK_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @tda998x_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda998x_destroy(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tda998x_priv*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.tda998x_priv* @dev_get_drvdata(%struct.device* %4)
  store %struct.tda998x_priv* %5, %struct.tda998x_priv** %3, align 8
  %6 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %7 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %6, i32 0, i32 6
  %8 = call i32 @drm_bridge_remove(i32* %7)
  %9 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %10 = load i32, i32* @REG_CEC_RXSHPDINTENA, align 4
  %11 = call i32 @cec_write(%struct.tda998x_priv* %9, i32 %10, i32 0)
  %12 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %13 = load i32, i32* @REG_INT_FLAGS_2, align 4
  %14 = load i32, i32* @INT_FLAGS_2_EDID_BLK_RD, align 4
  %15 = call i32 @reg_clear(%struct.tda998x_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %22 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @platform_device_unregister(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %27 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %26, i32 0, i32 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %34 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %39 = call i32 @free_irq(i64 %37, %struct.tda998x_priv* %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %42 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %41, i32 0, i32 3
  %43 = call i32 @del_timer_sync(i32* %42)
  %44 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %44, i32 0, i32 2
  %46 = call i32 @cancel_work_sync(i32* %45)
  %47 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %48 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @i2c_unregister_device(i32 %49)
  %51 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %52 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load %struct.tda998x_priv*, %struct.tda998x_priv** %3, align 8
  %57 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @cec_notifier_put(i64 %58)
  br label %60

60:                                               ; preds = %55, %40
  ret void
}

declare dso_local %struct.tda998x_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_bridge_remove(i32*) #1

declare dso_local i32 @cec_write(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.tda998x_priv*, i32, i32) #1

declare dso_local i32 @platform_device_unregister(i64) #1

declare dso_local i32 @free_irq(i64, %struct.tda998x_priv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

declare dso_local i32 @cec_notifier_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
