; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic_helper.c_drm_atomic_helper_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_atomic_state = type { i32, i64 }

@commit_work = common dso_local global i32 0, align 4
@system_unbound_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_helper_commit(%struct.drm_device* %0, %struct.drm_atomic_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_atomic_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %10 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %16 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %14, %struct.drm_atomic_state* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %84

21:                                               ; preds = %13
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %24 = call i32 @drm_atomic_helper_async_commit(%struct.drm_device* %22, %struct.drm_atomic_state* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %27 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %25, %struct.drm_atomic_state* %26)
  store i32 0, i32* %4, align 4
  br label %84

28:                                               ; preds = %3
  %29 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @drm_atomic_helper_setup_commit(%struct.drm_atomic_state* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %28
  %37 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %38 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %37, i32 0, i32 0
  %39 = load i32, i32* @commit_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %42 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %43 = call i32 @drm_atomic_helper_prepare_planes(%struct.drm_device* %41, %struct.drm_atomic_state* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %84

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %54 = call i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device* %52, %struct.drm_atomic_state* %53, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %79

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %48
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %61 = call i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state* %60, i32 1)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %79

65:                                               ; preds = %59
  %66 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %67 = call i32 @drm_atomic_state_get(%struct.drm_atomic_state* %66)
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @system_unbound_wq, align 4
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %73 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %72, i32 0, i32 0
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  br label %78

75:                                               ; preds = %65
  %76 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %77 = call i32 @commit_tail(%struct.drm_atomic_state* %76)
  br label %78

78:                                               ; preds = %75, %70
  store i32 0, i32* %4, align 4
  br label %84

79:                                               ; preds = %64, %57
  %80 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %6, align 8
  %82 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %80, %struct.drm_atomic_state* %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %78, %46, %34, %21, %19
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @drm_atomic_helper_prepare_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_async_commit(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_setup_commit(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_swap_state(%struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_state_get(%struct.drm_atomic_state*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @commit_tail(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
