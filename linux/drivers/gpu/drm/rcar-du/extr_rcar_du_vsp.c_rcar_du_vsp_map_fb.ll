; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_map_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_map_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_vsp = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sg_table = type { i32 }
%struct.drm_gem_cma_object = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_vsp_map_fb(%struct.rcar_du_vsp* %0, %struct.drm_framebuffer* %1, %struct.sg_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_vsp*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.rcar_du_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_gem_cma_object*, align 8
  %12 = alloca %struct.sg_table*, align 8
  %13 = alloca %struct.sg_table*, align 8
  store %struct.rcar_du_vsp* %0, %struct.rcar_du_vsp** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %14 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %15 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %14, i32 0, i32 1
  %16 = load %struct.rcar_du_device*, %struct.rcar_du_device** %15, align 8
  store %struct.rcar_du_device* %16, %struct.rcar_du_device** %8, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %17
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %26, i32 %27)
  store %struct.drm_gem_cma_object* %28, %struct.drm_gem_cma_object** %11, align 8
  %29 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %29, i64 %31
  store %struct.sg_table* %32, %struct.sg_table** %12, align 8
  %33 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %34 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %37 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %38 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %41 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %44 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dma_get_sgtable(i32 %35, %struct.sg_table* %36, i32 %39, i32 %42, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %25
  br label %69

51:                                               ; preds = %25
  %52 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %53 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %56 = call i32 @vsp1_du_map_sg(i32 %54, %struct.sg_table* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load %struct.sg_table*, %struct.sg_table** %12, align 8
  %61 = call i32 @sg_free_table(%struct.sg_table* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %69

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %17

68:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %88

69:                                               ; preds = %59, %50
  br label %70

70:                                               ; preds = %74, %69
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %75, i64 %77
  store %struct.sg_table* %78, %struct.sg_table** %13, align 8
  %79 = load %struct.rcar_du_vsp*, %struct.rcar_du_vsp** %5, align 8
  %80 = getelementptr inbounds %struct.rcar_du_vsp, %struct.rcar_du_vsp* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %83 = call i32 @vsp1_du_unmap_sg(i32 %81, %struct.sg_table* %82)
  %84 = load %struct.sg_table*, %struct.sg_table** %13, align 8
  %85 = call i32 @sg_free_table(%struct.sg_table* %84)
  br label %70

86:                                               ; preds = %70
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %68
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @dma_get_sgtable(i32, %struct.sg_table*, i32, i32, i32) #1

declare dso_local i32 @vsp1_du_map_sg(i32, %struct.sg_table*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @vsp1_du_unmap_sg(i32, %struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
