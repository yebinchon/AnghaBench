; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_set_qos_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.dpu_plane = type { %struct.TYPE_10__, %struct.TYPE_9__*, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* }
%struct.TYPE_6__ = type { i32, i64 }

@DPU_PLANE_QOS_VBLANK_CTRL = common dso_local global i32 0, align 4
@DPU_PLANE_QOS_VBLANK_AMORTIZE = common dso_local global i32 0, align 4
@DPU_PLANE_QOS_PANIC_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"plane%u: pnum:%d ds:%d vb:%d pri[0x%x, 0x%x] is_rt:%d\0A\00", align 1
@SSPP_VIG0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, i32, i32)* @_dpu_plane_set_qos_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_set_qos_ctrl(%struct.drm_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_plane*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %9 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %8)
  store %struct.dpu_plane* %9, %struct.dpu_plane** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DPU_PLANE_QOS_VBLANK_CTRL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %3
  %15 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %16 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %21 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  store i64 %19, i64* %22, align 8
  %23 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %24 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %29 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %33 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  br label %35

35:                                               ; preds = %14, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @DPU_PLANE_QOS_VBLANK_AMORTIZE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %42 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %45 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DPU_PLANE_QOS_PANIC_CTRL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %55 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %59 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %64 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %67 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %71 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %75 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SSPP_VIG0, align 8
  %78 = sub nsw i64 %76, %77
  %79 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %80 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %84 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %88 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %92 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %96 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %78, i32 %82, i32 %86, i64 %90, i32 %94, i32 %97)
  %99 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %100 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)*, i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)** %103, align 8
  %105 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %106 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load %struct.dpu_plane*, %struct.dpu_plane** %7, align 8
  %109 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %108, i32 0, i32 0
  %110 = call i32 %104(%struct.TYPE_9__* %107, %struct.TYPE_10__* %109)
  ret void
}

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i64, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
