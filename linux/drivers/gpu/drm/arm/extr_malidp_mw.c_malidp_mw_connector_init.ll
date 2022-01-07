; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_mw.c_malidp_mw_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@malidp_mw_connector_helper_funcs = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@malidp_mw_connector_funcs = common dso_local global i32 0, align 4
@malidp_mw_encoder_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malidp_mw_connector_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %9, align 8
  store %struct.malidp_drm* %10, %struct.malidp_drm** %4, align 8
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %12 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %22 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %21, i32 0, i32 1
  %23 = call i32 @drm_crtc_index(i32* %22)
  %24 = shl i32 1, %23
  %25 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %26 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %30 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @drm_connector_helper_add(i32* %31, i32* @malidp_mw_connector_helper_funcs)
  %33 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %34 = call i32* @get_writeback_formats(%struct.malidp_drm* %33, i32* %7)
  store i32* %34, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %20
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %43 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %42, i32 0, i32 0
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @drm_writeback_connector_init(%struct.drm_device* %41, %struct.TYPE_8__* %43, i32* @malidp_mw_connector_funcs, i32* @malidp_mw_encoder_helper_funcs, i32* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @kfree(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51, %37, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @drm_crtc_index(i32*) #1

declare dso_local i32 @drm_connector_helper_add(i32*, i32*) #1

declare dso_local i32* @get_writeback_formats(%struct.malidp_drm*, i32*) #1

declare dso_local i32 @drm_writeback_connector_init(%struct.drm_device*, %struct.TYPE_8__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
