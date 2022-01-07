; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_disp.c_nv50_mstm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_mstm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.drm_dp_aux* }
%struct.drm_dp_aux = type { i32 }

@DP_MSTM_CTRL = common dso_local global i32 0, align 4
@DP_MST_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Hub gone, disabling MST topology\0A\00", align 1
@DP_MSTM_CAP = common dso_local global i32 0, align 4
@DP_MST_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_mstm_detect(%struct.nv50_mstm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_mstm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_dp_aux*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nv50_mstm* %0, %struct.nv50_mstm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %14 = icmp ne %struct.nv50_mstm* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %119

16:                                               ; preds = %3
  %17 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %18 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %22 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %27 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %28, align 8
  store %struct.drm_dp_aux* %29, %struct.drm_dp_aux** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %16
  %33 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %8, align 8
  %34 = load i32, i32* @DP_MSTM_CTRL, align 4
  %35 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %33, i32 %34, i32* %12)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @DP_MST_EN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38, %32
  %44 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %74

46:                                               ; preds = %16
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 18
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %8, align 8
  %53 = load i32, i32* @DP_MSTM_CAP, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %52, i32 %53, i32* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %113

60:                                               ; preds = %51
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DP_MST_CAP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 17, i32* %69, align 4
  br label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %80 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %119

84:                                               ; preds = %74
  %85 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @nv50_mstm_enable(%struct.nv50_mstm* %85, i32 %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %113

94:                                               ; preds = %84
  %95 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %96 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %100 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %99, i32 0, i32 0
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_2__* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nv50_mstm_enable(%struct.nv50_mstm* %106, i32 %109, i32 0)
  store i32 %110, i32* %4, align 4
  br label %119

111:                                              ; preds = %94
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %93, %59
  %114 = load %struct.nv50_mstm*, %struct.nv50_mstm** %5, align 8
  %115 = getelementptr inbounds %struct.nv50_mstm, %struct.nv50_mstm* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %113, %111, %105, %78, %15
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nv50_mstm_enable(%struct.nv50_mstm*, i32, i32) #1

declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
