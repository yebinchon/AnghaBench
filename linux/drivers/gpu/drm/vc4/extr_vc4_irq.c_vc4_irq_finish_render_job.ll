; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq_finish_render_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_irq.c_vc4_irq_finish_render_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32, i32, i32, i32 }
%struct.vc4_exec_info = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @vc4_irq_finish_render_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_irq_finish_render_job(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  %5 = alloca %struct.vc4_exec_info*, align 8
  %6 = alloca %struct.vc4_exec_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %7)
  store %struct.vc4_dev* %8, %struct.vc4_dev** %3, align 8
  %9 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %10 = call %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev* %9)
  store %struct.vc4_exec_info* %10, %struct.vc4_exec_info** %4, align 8
  %11 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %12 = icmp ne %struct.vc4_exec_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %96

14:                                               ; preds = %1
  %15 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %20 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %19, i32 0, i32 2
  %21 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %22 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %21, i32 0, i32 2
  %23 = call i32 @list_move_tail(i32* %20, i32* %22)
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %25 = call %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev* %24)
  store %struct.vc4_exec_info* %25, %struct.vc4_exec_info** %5, align 8
  %26 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %27 = call %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev* %26)
  store %struct.vc4_exec_info* %27, %struct.vc4_exec_info** %6, align 8
  %28 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %29 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %14
  %33 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %34 = icmp ne %struct.vc4_exec_info* %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %32
  %36 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %37 = icmp ne %struct.vc4_exec_info* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %40 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %43 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38, %35
  %47 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %48 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %49 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @vc4_perfmon_stop(%struct.vc4_dev* %47, i64 %50, i32 1)
  br label %52

52:                                               ; preds = %46, %38, %32, %14
  %53 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %54 = icmp ne %struct.vc4_exec_info* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %57 = call i32 @vc4_submit_next_render_job(%struct.drm_device* %56)
  br label %73

58:                                               ; preds = %52
  %59 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %60 = icmp ne %struct.vc4_exec_info* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %63 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %66 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %71 = call i32 @vc4_submit_next_bin_job(%struct.drm_device* %70)
  br label %72

72:                                               ; preds = %69, %61, %58
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %75 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %80 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dma_fence_signal_locked(i32* %81)
  %83 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %84 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @dma_fence_put(i32* %85)
  %87 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %88 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %78, %73
  %90 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %91 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %90, i32 0, i32 1
  %92 = call i32 @wake_up_all(i32* %91)
  %93 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %94 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %93, i32 0, i32 0
  %95 = call i32 @schedule_work(i32* %94)
  br label %96

96:                                               ; preds = %89, %13
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev*) #1

declare dso_local i32 @vc4_perfmon_stop(%struct.vc4_dev*, i64, i32) #1

declare dso_local i32 @vc4_submit_next_render_job(%struct.drm_device*) #1

declare dso_local i32 @vc4_submit_next_bin_job(%struct.drm_device*) #1

declare dso_local i32 @dma_fence_signal_locked(i32*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
