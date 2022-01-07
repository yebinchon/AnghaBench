; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_plane_update_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_plane_update_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.drm_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.vmw_framebuffer = type { i32 }
%struct.vmw_fence_obj = type { i32 }
%struct.vmw_du_update_plane_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32*, %struct.vmw_fence_obj**, %struct.vmw_framebuffer*, i32, %struct.vmw_private*, %struct.drm_plane_state*, %struct.drm_plane* }

@SVGA_CAP_3D = common dso_local global i32 0, align 4
@vmw_stdu_bo_fifo_size_cpu = common dso_local global i32 0, align 4
@vmw_stdu_bo_pre_clip_cpu = common dso_local global i32 0, align 4
@vmw_stdu_bo_clip_cpu = common dso_local global i32 0, align 4
@vmw_stdu_bo_populate_update_cpu = common dso_local global i32 0, align 4
@vmw_stdu_bo_fifo_size = common dso_local global i32 0, align 4
@vmw_stdu_bo_populate_dma = common dso_local global i32 0, align 4
@vmw_stdu_bo_populate_clip = common dso_local global i32 0, align 4
@vmw_stdu_bo_populate_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.vmw_framebuffer*, %struct.vmw_fence_obj**)* @vmw_stdu_plane_update_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_stdu_plane_update_bo(%struct.vmw_private* %0, %struct.drm_plane* %1, %struct.drm_plane_state* %2, %struct.vmw_framebuffer* %3, %struct.vmw_fence_obj** %4) #0 {
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.drm_plane_state*, align 8
  %9 = alloca %struct.vmw_framebuffer*, align 8
  %10 = alloca %struct.vmw_fence_obj**, align 8
  %11 = alloca %struct.vmw_du_update_plane_buffer, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store %struct.drm_plane_state* %2, %struct.drm_plane_state** %8, align 8
  store %struct.vmw_framebuffer* %3, %struct.vmw_framebuffer** %9, align 8
  store %struct.vmw_fence_obj** %4, %struct.vmw_fence_obj*** %10, align 8
  %12 = call i32 @memset(%struct.vmw_du_update_plane_buffer* %11, i32 0, i32 80)
  %13 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %14 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 12
  store %struct.drm_plane* %13, %struct.drm_plane** %15, align 8
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %17 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 11
  store %struct.drm_plane_state* %16, %struct.drm_plane_state** %18, align 8
  %19 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 10
  store %struct.vmw_private* %19, %struct.vmw_private** %21, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vmw_crtc_to_du(i32 %26)
  %28 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  %30 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %9, align 8
  %31 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  store %struct.vmw_framebuffer* %30, %struct.vmw_framebuffer** %32, align 8
  %33 = load %struct.vmw_fence_obj**, %struct.vmw_fence_obj*** %10, align 8
  %34 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 7
  store %struct.vmw_fence_obj** %33, %struct.vmw_fence_obj*** %35, align 8
  %36 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.vmw_private*, %struct.vmw_private** %6, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SVGA_CAP_3D, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %5
  %55 = load i32, i32* @vmw_stdu_bo_fifo_size_cpu, align 4
  %56 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @vmw_stdu_bo_pre_clip_cpu, align 4
  %59 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @vmw_stdu_bo_clip_cpu, align 4
  %62 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @vmw_stdu_bo_populate_update_cpu, align 4
  %65 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %80

67:                                               ; preds = %5
  %68 = load i32, i32* @vmw_stdu_bo_fifo_size, align 4
  %69 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @vmw_stdu_bo_populate_dma, align 4
  %72 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @vmw_stdu_bo_populate_clip, align 4
  %75 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @vmw_stdu_bo_populate_update, align 4
  %78 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %80

80:                                               ; preds = %67, %54
  %81 = getelementptr inbounds %struct.vmw_du_update_plane_buffer, %struct.vmw_du_update_plane_buffer* %11, i32 0, i32 0
  %82 = call i32 @vmw_du_helper_plane_update(%struct.TYPE_4__* %81)
  ret i32 %82
}

declare dso_local i32 @memset(%struct.vmw_du_update_plane_buffer*, i32, i32) #1

declare dso_local i32 @vmw_crtc_to_du(i32) #1

declare dso_local i32 @vmw_du_helper_plane_update(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
