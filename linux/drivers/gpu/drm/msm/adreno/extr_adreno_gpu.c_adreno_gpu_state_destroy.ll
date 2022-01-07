; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_gpu_state_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_gpu_state_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu_state = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adreno_gpu_state_destroy(%struct.msm_gpu_state* %0) #0 {
  %2 = alloca %struct.msm_gpu_state*, align 8
  %3 = alloca i32, align 4
  store %struct.msm_gpu_state* %0, %struct.msm_gpu_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %7 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %6, i32 0, i32 5
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %8)
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %13 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kvfree(i32 %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %27 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %33 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %51

38:                                               ; preds = %36
  %39 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %40 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %39, i32 0, i32 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kvfree(i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %25

51:                                               ; preds = %36
  %52 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %53 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @kfree(%struct.TYPE_3__* %54)
  %56 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %57 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i32 @kfree(%struct.TYPE_3__* %58)
  %60 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %61 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @kfree(%struct.TYPE_3__* %62)
  %64 = load %struct.msm_gpu_state*, %struct.msm_gpu_state** %2, align 8
  %65 = getelementptr inbounds %struct.msm_gpu_state, %struct.msm_gpu_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = call i32 @kfree(%struct.TYPE_3__* %66)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
