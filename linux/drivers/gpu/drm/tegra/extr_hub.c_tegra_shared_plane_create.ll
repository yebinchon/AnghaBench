; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_shared_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { %struct.tegra_display_hub* }
%struct.tegra_display_hub = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_shared_plane = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, %struct.drm_plane }

@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra_shared_plane_formats = common dso_local global i32* null, align 8
@tegra_shared_plane_modifiers = common dso_local global i32* null, align 8
@tegra_plane_funcs = common dso_local global i32 0, align 4
@tegra_shared_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane* @tegra_shared_plane_create(%struct.drm_device* %0, %struct.tegra_dc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_drm*, align 8
  %12 = alloca %struct.tegra_display_hub*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tegra_shared_plane*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.drm_plane*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.tegra_dc* %1, %struct.tegra_dc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %22, align 8
  store %struct.tegra_drm* %23, %struct.tegra_drm** %11, align 8
  %24 = load %struct.tegra_drm*, %struct.tegra_drm** %11, align 8
  %25 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %24, i32 0, i32 0
  %26 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %25, align 8
  store %struct.tegra_display_hub* %26, %struct.tegra_display_hub** %12, align 8
  store i32 7, i32* %13, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.tegra_shared_plane* @kzalloc(i32 24, i32 %27)
  store %struct.tegra_shared_plane* %28, %struct.tegra_shared_plane** %14, align 8
  %29 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %30 = icmp ne %struct.tegra_shared_plane* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.drm_plane* @ERR_PTR(i32 %33)
  store %struct.drm_plane* %34, %struct.drm_plane** %5, align 8
  br label %89

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 768, %36
  %38 = add i32 2560, %37
  %39 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %40 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %44 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %12, align 8
  %47 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %53 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %52, i32 0, i32 1
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %53, align 8
  %54 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %55 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %58 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %62 = getelementptr inbounds %struct.tegra_shared_plane, %struct.tegra_shared_plane* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  store %struct.drm_plane* %63, %struct.drm_plane** %17, align 8
  %64 = load i32*, i32** @tegra_shared_plane_formats, align 8
  %65 = call i32 @ARRAY_SIZE(i32* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** @tegra_shared_plane_formats, align 8
  store i32* %66, i32** %18, align 8
  %67 = load i32*, i32** @tegra_shared_plane_modifiers, align 8
  store i32* %67, i32** %16, align 8
  %68 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %69 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %18, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @drm_universal_plane_init(%struct.drm_device* %68, %struct.drm_plane* %69, i32 %70, i32* @tegra_plane_funcs, i32* %71, i32 %72, i32* %73, i32 %74, i32* null)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %35
  %79 = load %struct.tegra_shared_plane*, %struct.tegra_shared_plane** %14, align 8
  %80 = call i32 @kfree(%struct.tegra_shared_plane* %79)
  %81 = load i32, i32* %19, align 4
  %82 = call %struct.drm_plane* @ERR_PTR(i32 %81)
  store %struct.drm_plane* %82, %struct.drm_plane** %5, align 8
  br label %89

83:                                               ; preds = %35
  %84 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %85 = call i32 @drm_plane_helper_add(%struct.drm_plane* %84, i32* @tegra_shared_plane_helper_funcs)
  %86 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  %87 = call i32 @drm_plane_create_zpos_property(%struct.drm_plane* %86, i32 0, i32 0, i32 255)
  %88 = load %struct.drm_plane*, %struct.drm_plane** %17, align 8
  store %struct.drm_plane* %88, %struct.drm_plane** %5, align 8
  br label %89

89:                                               ; preds = %83, %78, %31
  %90 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  ret %struct.drm_plane* %90
}

declare dso_local %struct.tegra_shared_plane* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @kfree(%struct.tegra_shared_plane*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(%struct.drm_plane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
