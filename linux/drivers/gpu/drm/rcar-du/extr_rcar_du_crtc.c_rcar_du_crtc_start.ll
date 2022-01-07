; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DSYSR_TVM_MASK = common dso_local global i32 0, align 4
@DSYSR_SCM_MASK = common dso_local global i32 0, align 4
@DSYSR_SCM_INT_VIDEO = common dso_local global i32 0, align 4
@DSYSR_TVM_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_start(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca i32, align 4
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %4 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %12 = load i32, i32* @DSYSR_TVM_MASK, align 4
  %13 = load i32, i32* @DSYSR_SCM_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @DSYSR_SCM_INT_VIDEO, align 4
  br label %20

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* @DSYSR_TVM_MASTER, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc* %11, i32 %14, i32 %23)
  %25 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %26 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rcar_du_group_start_stop(i32 %27, i32 1)
  ret void
}

declare dso_local i32 @rcar_du_crtc_dsysr_clr_set(%struct.rcar_du_crtc*, i32, i32) #1

declare dso_local i32 @rcar_du_group_start_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
