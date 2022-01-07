; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_crtc_ddp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_crtc_ddp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mtk_drm_crtc = type { i32, i32, %struct.drm_plane*, %struct.mtk_ddp_comp**, %struct.TYPE_3__ }
%struct.drm_plane = type { i32 }
%struct.mtk_ddp_comp = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_crtc_state = type { i32, i32, i32, i32 }
%struct.mtk_plane_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @mtk_crtc_ddp_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_crtc_ddp_config(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.mtk_drm_crtc*, align 8
  %4 = alloca %struct.mtk_crtc_state*, align 8
  %5 = alloca %struct.mtk_ddp_comp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca %struct.mtk_plane_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = call %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc* %9)
  store %struct.mtk_drm_crtc* %10, %struct.mtk_drm_crtc** %3, align 8
  %11 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %12 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mtk_crtc_state* @to_mtk_crtc_state(i32 %14)
  store %struct.mtk_crtc_state* %15, %struct.mtk_crtc_state** %4, align 8
  %16 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %16, i32 0, i32 3
  %18 = load %struct.mtk_ddp_comp**, %struct.mtk_ddp_comp*** %17, align 8
  %19 = getelementptr inbounds %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %18, i64 0
  %20 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %19, align 8
  store %struct.mtk_ddp_comp* %20, %struct.mtk_ddp_comp** %5, align 8
  %21 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %4, align 8
  %22 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %5, align 8
  %27 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mtk_ddp_comp_config(%struct.mtk_ddp_comp* %26, i32 %29, i32 %32, i32 %35, i32 0)
  %37 = load %struct.mtk_crtc_state*, %struct.mtk_crtc_state** %4, align 8
  %38 = getelementptr inbounds %struct.mtk_crtc_state, %struct.mtk_crtc_state* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %25, %1
  %40 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %41 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %48 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %45
  %52 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %53 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %52, i32 0, i32 2
  %54 = load %struct.drm_plane*, %struct.drm_plane** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %54, i64 %56
  store %struct.drm_plane* %57, %struct.drm_plane** %7, align 8
  %58 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.mtk_plane_state* @to_mtk_plane_state(i32 %60)
  store %struct.mtk_plane_state* %61, %struct.mtk_plane_state** %8, align 8
  %62 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %8, align 8
  %63 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %51
  %68 = load %struct.mtk_ddp_comp*, %struct.mtk_ddp_comp** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %8, align 8
  %71 = call i32 @mtk_ddp_comp_layer_config(%struct.mtk_ddp_comp* %68, i32 %69, %struct.mtk_plane_state* %70)
  %72 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %51
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %45

79:                                               ; preds = %45
  %80 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %3, align 8
  %81 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %39
  ret void
}

declare dso_local %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mtk_crtc_state* @to_mtk_crtc_state(i32) #1

declare dso_local i32 @mtk_ddp_comp_config(%struct.mtk_ddp_comp*, i32, i32, i32, i32) #1

declare dso_local %struct.mtk_plane_state* @to_mtk_plane_state(i32) #1

declare dso_local i32 @mtk_ddp_comp_layer_config(%struct.mtk_ddp_comp*, i32, %struct.mtk_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
