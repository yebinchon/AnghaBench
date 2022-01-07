; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_overlay.c_armada_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i64 }

@CFG_CSC_RGB_COMPUTER = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i64 0, align 8
@CFG_CSC_YUV_CCIR709 = common dso_local global i32 0, align 4
@CFG_CSC_YUV_CCIR601 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*)* @armada_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_csc(%struct.drm_plane_state* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %2, align 8
  %3 = load i32, i32* @CFG_CSC_RGB_COMPUTER, align 4
  %4 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DRM_COLOR_YCBCR_BT709, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @CFG_CSC_YUV_CCIR709, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CFG_CSC_YUV_CCIR601, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = or i32 %3, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
