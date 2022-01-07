; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c_dpu_plane_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i64 }
%struct.dpu_plane = type { i32, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i64)* }
%struct.dpu_plane_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"invalid plane\0A\00", align 1
@DPU_PLANE_COLOR_FILL_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_plane_flush(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.dpu_plane*, align 8
  %4 = alloca %struct.dpu_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %5 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %6 = icmp ne %struct.drm_plane* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7, %1
  %13 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %83

14:                                               ; preds = %7
  %15 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %16 = call %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane* %15)
  store %struct.dpu_plane* %16, %struct.dpu_plane** %3, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.dpu_plane_state* @to_dpu_plane_state(i64 %19)
  store %struct.dpu_plane_state* %20, %struct.dpu_plane_state** %4, align 8
  %21 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %27 = call i32 @_dpu_plane_color_fill(%struct.dpu_plane* %26, i32 16777215, i32 255)
  br label %75

28:                                               ; preds = %14
  %29 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %30 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DPU_PLANE_COLOR_FILL_FLAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %37 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %38 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @_dpu_plane_color_fill(%struct.dpu_plane* %36, i32 %39, i32 255)
  br label %74

41:                                               ; preds = %28
  %42 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %43 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %48 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %53 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %56, align 8
  %58 = icmp ne i32 (%struct.TYPE_4__*, i64)* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %61 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_4__*, i64)*, i32 (%struct.TYPE_4__*, i64)** %64, align 8
  %66 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %67 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.dpu_plane*, %struct.dpu_plane** %3, align 8
  %70 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 %65(%struct.TYPE_4__* %68, i64 %71)
  br label %73

73:                                               ; preds = %59, %51, %46, %41
  br label %74

74:                                               ; preds = %73, %35
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %77 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.dpu_plane_state*, %struct.dpu_plane_state** %4, align 8
  %82 = getelementptr inbounds %struct.dpu_plane_state, %struct.dpu_plane_state* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %12, %80, %75
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_plane* @to_dpu_plane(%struct.drm_plane*) #1

declare dso_local %struct.dpu_plane_state* @to_dpu_plane_state(i64) #1

declare dso_local i32 @_dpu_plane_color_fill(%struct.dpu_plane*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
