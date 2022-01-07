; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_pipe.c_mdp5_pipe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_pipe.c_mdp5_pipe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }
%struct.mdp5_hw_pipe = type { i64, i32, i32 }
%struct.mdp5_kms = type { i64 }
%struct.mdp5_global_state = type { i32, %struct.mdp5_hw_pipe_state }
%struct.mdp5_hw_pipe_state = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: release from plane %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: free SMP blocks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp5_pipe_release(%struct.drm_atomic_state* %0, %struct.mdp5_hw_pipe* %1) #0 {
  %3 = alloca %struct.drm_atomic_state*, align 8
  %4 = alloca %struct.mdp5_hw_pipe*, align 8
  %5 = alloca %struct.msm_drm_private*, align 8
  %6 = alloca %struct.mdp5_kms*, align 8
  %7 = alloca %struct.mdp5_global_state*, align 8
  %8 = alloca %struct.mdp5_hw_pipe_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %3, align 8
  store %struct.mdp5_hw_pipe* %1, %struct.mdp5_hw_pipe** %4, align 8
  %9 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %10 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.msm_drm_private*, %struct.msm_drm_private** %12, align 8
  store %struct.msm_drm_private* %13, %struct.msm_drm_private** %5, align 8
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %5, align 8
  %15 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @to_mdp_kms(i32 %16)
  %18 = call %struct.mdp5_kms* @to_mdp5_kms(i32 %17)
  store %struct.mdp5_kms* %18, %struct.mdp5_kms** %6, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %3, align 8
  %20 = call %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state* %19)
  store %struct.mdp5_global_state* %20, %struct.mdp5_global_state** %7, align 8
  %21 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %7, align 8
  %22 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %21, i32 0, i32 1
  store %struct.mdp5_hw_pipe_state* %22, %struct.mdp5_hw_pipe_state** %8, align 8
  %23 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %24 = icmp ne %struct.mdp5_hw_pipe* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %82

26:                                               ; preds = %2
  %27 = load %struct.mdp5_hw_pipe_state*, %struct.mdp5_hw_pipe_state** %8, align 8
  %28 = getelementptr inbounds %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_pipe_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %31 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %82

41:                                               ; preds = %26
  %42 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %43 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mdp5_hw_pipe_state*, %struct.mdp5_hw_pipe_state** %8, align 8
  %46 = getelementptr inbounds %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_pipe_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %49 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %54)
  %56 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %57 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %41
  %61 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %62 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load %struct.mdp5_kms*, %struct.mdp5_kms** %6, align 8
  %66 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %7, align 8
  %69 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %68, i32 0, i32 0
  %70 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %71 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @mdp5_smp_release(i64 %67, i32* %69, i32 %72)
  br label %74

74:                                               ; preds = %60, %41
  %75 = load %struct.mdp5_hw_pipe_state*, %struct.mdp5_hw_pipe_state** %8, align 8
  %76 = getelementptr inbounds %struct.mdp5_hw_pipe_state, %struct.mdp5_hw_pipe_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = load %struct.mdp5_hw_pipe*, %struct.mdp5_hw_pipe** %4, align 8
  %79 = getelementptr inbounds %struct.mdp5_hw_pipe, %struct.mdp5_hw_pipe* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 %80
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %81, align 8
  br label %82

82:                                               ; preds = %74, %40, %25
  ret void
}

declare dso_local %struct.mdp5_kms* @to_mdp5_kms(i32) #1

declare dso_local i32 @to_mdp_kms(i32) #1

declare dso_local %struct.mdp5_global_state* @mdp5_get_global_state(%struct.drm_atomic_state*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @mdp5_smp_release(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
