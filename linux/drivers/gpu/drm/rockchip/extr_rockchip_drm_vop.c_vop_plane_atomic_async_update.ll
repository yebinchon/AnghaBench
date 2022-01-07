; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_async_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_plane_atomic_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_framebuffer = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vop = type { i32, i32, i32, i64 }

@VOP_PENDING_FB_UNREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vop_plane_atomic_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vop_plane_atomic_async_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vop*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.vop* @to_vop(i32 %11)
  store %struct.vop* %12, %struct.vop** %5, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %6, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 9
  store i32 %20, i32* %24, align 4
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %29 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 8
  store i32 %27, i32* %31, align 8
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %36 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  store i32 %34, i32* %38, align 4
  %39 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %40 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %43 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  store i32 %41, i32* %45, align 8
  %46 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %47 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %50 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %54 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %57 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %55, i32* %59, align 8
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %64 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 4
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %71 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 8
  %74 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %75 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %77, align 8
  %79 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %80 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @swap(%struct.drm_framebuffer* %78, i32 %81)
  %83 = load %struct.vop*, %struct.vop** %5, align 8
  %84 = getelementptr inbounds %struct.vop, %struct.vop* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %132

87:                                               ; preds = %2
  %88 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %89 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %90 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = call i32 @vop_plane_atomic_update(%struct.drm_plane* %88, %struct.TYPE_2__* %91)
  %93 = load %struct.vop*, %struct.vop** %5, align 8
  %94 = getelementptr inbounds %struct.vop, %struct.vop* %93, i32 0, i32 2
  %95 = call i32 @spin_lock(i32* %94)
  %96 = load %struct.vop*, %struct.vop** %5, align 8
  %97 = call i32 @vop_cfg_done(%struct.vop* %96)
  %98 = load %struct.vop*, %struct.vop** %5, align 8
  %99 = getelementptr inbounds %struct.vop, %struct.vop* %98, i32 0, i32 2
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %102 = icmp ne %struct.drm_framebuffer* %101, null
  br i1 %102, label %103, label %131

103:                                              ; preds = %87
  %104 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %105 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %107, align 8
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %110 = icmp ne %struct.drm_framebuffer* %108, %109
  br i1 %110, label %111, label %131

111:                                              ; preds = %103
  %112 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %113 = call i32 @drm_framebuffer_get(%struct.drm_framebuffer* %112)
  %114 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %115 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @drm_crtc_vblank_get(i32 %118)
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @WARN_ON(i32 %121)
  %123 = load %struct.vop*, %struct.vop** %5, align 8
  %124 = getelementptr inbounds %struct.vop, %struct.vop* %123, i32 0, i32 1
  %125 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %126 = call i32 @drm_flip_work_queue(i32* %124, %struct.drm_framebuffer* %125)
  %127 = load i32, i32* @VOP_PENDING_FB_UNREF, align 4
  %128 = load %struct.vop*, %struct.vop** %5, align 8
  %129 = getelementptr inbounds %struct.vop, %struct.vop* %128, i32 0, i32 0
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  br label %131

131:                                              ; preds = %111, %103, %87
  br label %132

132:                                              ; preds = %131, %2
  ret void
}

declare dso_local %struct.vop* @to_vop(i32) #1

declare dso_local i32 @swap(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @vop_plane_atomic_update(%struct.drm_plane*, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vop_cfg_done(%struct.vop*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_framebuffer_get(%struct.drm_framebuffer*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @drm_crtc_vblank_get(i32) #1

declare dso_local i32 @drm_flip_work_queue(i32*, %struct.drm_framebuffer*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
