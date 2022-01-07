; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_atomic_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_crtc.c_mtk_drm_crtc_atomic_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { %struct.mtk_drm_private* }
%struct.mtk_drm_private = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.drm_crtc_state = type { i32 }
%struct.mtk_drm_crtc = type { i32, i32, i32, i32, i32, i32*, %struct.drm_plane*, i64 }
%struct.drm_plane = type { i32 }
%struct.mtk_plane_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @mtk_drm_crtc_atomic_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_drm_crtc_atomic_flush(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.mtk_drm_crtc*, align 8
  %6 = alloca %struct.mtk_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.mtk_plane_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %12 = call %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc* %11)
  store %struct.mtk_drm_crtc* %12, %struct.mtk_drm_crtc** %5, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %16, align 8
  store %struct.mtk_drm_private* %17, %struct.mtk_drm_private** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %24 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %60, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %33, i32 0, i32 6
  %35 = load %struct.drm_plane*, %struct.drm_plane** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %35, i64 %37
  store %struct.drm_plane* %38, %struct.drm_plane** %9, align 8
  %39 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %40 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.mtk_plane_state* @to_mtk_plane_state(i32 %41)
  store %struct.mtk_plane_state* %42, %struct.mtk_plane_state** %10, align 8
  %43 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %10, align 8
  %44 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %32
  %49 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %10, align 8
  %50 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %10, align 8
  %53 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %48, %32
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %26

63:                                               ; preds = %26
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %68 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %71 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %95, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %80 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %85 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %84, i32 0, i32 5
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %92 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call i32 @mtk_ddp_gamma_set(i32 %90, %struct.TYPE_8__* %93)
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %77

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.mtk_drm_private*, %struct.mtk_drm_private** %6, align 8
  %101 = getelementptr inbounds %struct.mtk_drm_private, %struct.mtk_drm_private* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %108 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @mtk_disp_mutex_acquire(i32 %109)
  %111 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %112 = call i32 @mtk_crtc_ddp_config(%struct.drm_crtc* %111)
  %113 = load %struct.mtk_drm_crtc*, %struct.mtk_drm_crtc** %5, align 8
  %114 = getelementptr inbounds %struct.mtk_drm_crtc, %struct.mtk_drm_crtc* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @mtk_disp_mutex_release(i32 %115)
  br label %117

117:                                              ; preds = %106, %99
  ret void
}

declare dso_local %struct.mtk_drm_crtc* @to_mtk_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mtk_plane_state* @to_mtk_plane_state(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mtk_ddp_gamma_set(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @mtk_disp_mutex_acquire(i32) #1

declare dso_local i32 @mtk_crtc_ddp_config(%struct.drm_crtc*) #1

declare dso_local i32 @mtk_disp_mutex_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
