; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { %struct.TYPE_3__, %struct.drm_connector, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.drm_device = type { i32 }

@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@tda998x_connector_helper_funcs = common dso_local global i32 0, align 4
@tda998x_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, %struct.drm_device*)* @tda998x_connector_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_connector_init(%struct.tda998x_priv* %0, %struct.drm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  %8 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %9 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %8, i32 0, i32 1
  store %struct.drm_connector* %9, %struct.drm_connector** %6, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %13 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %20 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %24 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %30 = call i32 @drm_connector_helper_add(%struct.drm_connector* %29, i32* @tda998x_connector_helper_funcs)
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %33 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %34 = call i32 @drm_connector_init(%struct.drm_device* %31, %struct.drm_connector* %32, i32* @tda998x_connector_funcs, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %28
  %40 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %41 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %40, i32 0, i32 1
  %42 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %43 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %41, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %37
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
