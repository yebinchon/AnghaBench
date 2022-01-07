; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_core_perf = type { i32*, i32*, i32*, i64 }

@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_core_perf_destroy(%struct.dpu_core_perf* %0) #0 {
  %2 = alloca %struct.dpu_core_perf*, align 8
  store %struct.dpu_core_perf* %0, %struct.dpu_core_perf** %2, align 8
  %3 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %2, align 8
  %4 = icmp ne %struct.dpu_core_perf* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %16

7:                                                ; preds = %1
  %8 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %2, align 8
  %9 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %10, i32 0, i32 2
  store i32* null, i32** %11, align 8
  %12 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %2, align 8
  %13 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.dpu_core_perf*, %struct.dpu_core_perf** %2, align 8
  %15 = getelementptr inbounds %struct.dpu_core_perf, %struct.dpu_core_perf* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
