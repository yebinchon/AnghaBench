; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_crtc.c_meson_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { %struct.drm_crtc*, %struct.TYPE_2__*, i32 }
%struct.drm_crtc = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.meson_crtc = type { i32, i32, i32, %struct.drm_crtc, %struct.meson_drm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@meson_crtc_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"meson_crtc\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to init CRTC\0A\00", align 1
@VPU_COMPATIBLE_G12A = common dso_local global i32 0, align 4
@meson_g12a_crtc_enable_osd1 = common dso_local global i32 0, align 4
@meson_g12a_crtc_enable_vd1 = common dso_local global i32 0, align 4
@MESON_G12A_VIU_OFFSET = common dso_local global i32 0, align 4
@meson_g12a_crtc_helper_funcs = common dso_local global i32 0, align 4
@meson_crtc_enable_osd1 = common dso_local global i32 0, align 4
@meson_crtc_enable_vd1 = common dso_local global i32 0, align 4
@meson_crtc_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_crtc_create(%struct.meson_drm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca %struct.meson_crtc*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  %7 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.meson_crtc* @devm_kzalloc(i32 %11, i32 24, i32 %12)
  store %struct.meson_crtc* %13, %struct.meson_crtc** %4, align 8
  %14 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %15 = icmp ne %struct.meson_crtc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %73

19:                                               ; preds = %1
  %20 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %21 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %22 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %21, i32 0, i32 4
  store %struct.meson_drm* %20, %struct.meson_drm** %22, align 8
  %23 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %24 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %23, i32 0, i32 3
  store %struct.drm_crtc* %24, %struct.drm_crtc** %5, align 8
  %25 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %26 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %29 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %30 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @drm_crtc_init_with_planes(%struct.TYPE_2__* %27, %struct.drm_crtc* %28, i32 %31, i32* null, i32* @meson_crtc_funcs, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %37 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %19
  %44 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %45 = load i32, i32* @VPU_COMPATIBLE_G12A, align 4
  %46 = call i64 @meson_vpu_is_compatible(%struct.meson_drm* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* @meson_g12a_crtc_enable_osd1, align 4
  %50 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %51 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @meson_g12a_crtc_enable_vd1, align 4
  %53 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %54 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @MESON_G12A_VIU_OFFSET, align 4
  %56 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %57 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %59 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %58, i32* @meson_g12a_crtc_helper_funcs)
  br label %69

60:                                               ; preds = %43
  %61 = load i32, i32* @meson_crtc_enable_osd1, align 4
  %62 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %63 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @meson_crtc_enable_vd1, align 4
  %65 = load %struct.meson_crtc*, %struct.meson_crtc** %4, align 8
  %66 = getelementptr inbounds %struct.meson_crtc, %struct.meson_crtc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %68 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %67, i32* @meson_crtc_helper_funcs)
  br label %69

69:                                               ; preds = %60, %48
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %71 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %72 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %71, i32 0, i32 0
  store %struct.drm_crtc* %70, %struct.drm_crtc** %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %69, %35, %16
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.meson_crtc* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.TYPE_2__*, %struct.drm_crtc*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @meson_vpu_is_compatible(%struct.meson_drm*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
