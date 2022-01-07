; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_disconnect_pipelines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_drv.c_omap_disconnect_pipelines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, %struct.omap_drm_pipeline* }
%struct.omap_drm_pipeline = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @omap_disconnect_pipelines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_disconnect_pipelines(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_drm_pipeline*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  store %struct.omap_drm_private* %8, %struct.omap_drm_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %12 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %9
  %16 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %17 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %16, i32 0, i32 2
  %18 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %18, i64 %20
  store %struct.omap_drm_pipeline* %21, %struct.omap_drm_pipeline** %5, align 8
  %22 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %5, align 8
  %23 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %15
  %29 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %5, align 8
  %30 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @drm_panel_detach(i64 %33)
  br label %35

35:                                               ; preds = %28, %15
  %36 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %5, align 8
  %37 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @omapdss_device_disconnect(i32* null, %struct.TYPE_3__* %38)
  %40 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %5, align 8
  %41 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @omapdss_device_put(%struct.TYPE_3__* %42)
  %44 = load %struct.omap_drm_pipeline*, %struct.omap_drm_pipeline** %5, align 8
  %45 = getelementptr inbounds %struct.omap_drm_pipeline, %struct.omap_drm_pipeline* %44, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %45, align 8
  br label %46

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %51 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %50, i32 0, i32 1
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %54 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  ret void
}

declare dso_local i32 @drm_panel_detach(i64) #1

declare dso_local i32 @omapdss_device_disconnect(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @omapdss_device_put(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
