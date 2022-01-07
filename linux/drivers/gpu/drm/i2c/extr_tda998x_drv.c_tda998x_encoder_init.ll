; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_encoder_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.drm_device = type { i32 }
%struct.tda998x_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Falling back to first CRTC\0A\00", align 1
@tda998x_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.drm_device*)* @tda998x_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_encoder_init(%struct.device* %0, %struct.drm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.tda998x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.tda998x_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.tda998x_priv* %10, %struct.tda998x_priv** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @drm_of_find_possible_crtcs(%struct.drm_device* %16, i64 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %30 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %34 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %33, i32 0, i32 0
  %35 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %36 = call i32 @drm_encoder_init(%struct.drm_device* %32, %struct.TYPE_4__* %34, i32* @tda998x_encoder_funcs, i32 %35, i32* null)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %54

40:                                               ; preds = %27
  %41 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %42 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %41, i32 0, i32 0
  %43 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %44 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %43, i32 0, i32 1
  %45 = call i32 @drm_bridge_attach(%struct.TYPE_4__* %42, i32* %44, i32* null)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %56

50:                                               ; preds = %48
  %51 = load %struct.tda998x_priv*, %struct.tda998x_priv** %6, align 8
  %52 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %51, i32 0, i32 0
  %53 = call i32 @drm_encoder_cleanup(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.tda998x_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @drm_of_find_possible_crtcs(%struct.drm_device*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
