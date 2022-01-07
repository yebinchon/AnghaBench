; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_next_bin_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_next_bin_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i64 }
%struct.vc4_exec_info = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_submit_next_bin_job(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  %5 = alloca %struct.vc4_exec_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %6)
  store %struct.vc4_dev* %7, %struct.vc4_dev** %3, align 8
  br label %8

8:                                                ; preds = %68, %1
  %9 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %10 = call %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev* %9)
  store %struct.vc4_exec_info* %10, %struct.vc4_exec_info** %4, align 8
  %11 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %12 = icmp ne %struct.vc4_exec_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = call i32 @vc4_flush_caches(%struct.drm_device* %15)
  %17 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %18 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %26 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %31 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %32 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @vc4_perfmon_start(%struct.vc4_dev* %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %21, %14
  %36 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %37 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %40 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %46 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %49 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @submit_cl(%struct.drm_device* %44, i32 0, i64 %47, i64 %50)
  br label %70

52:                                               ; preds = %35
  %53 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %54 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %55 = call i32 @vc4_move_job_to_render(%struct.drm_device* %53, %struct.vc4_exec_info* %54)
  %56 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %57 = call %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev* %56)
  store %struct.vc4_exec_info* %57, %struct.vc4_exec_info** %5, align 8
  %58 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %59 = icmp ne %struct.vc4_exec_info* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %62 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %65 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %8

69:                                               ; preds = %60, %52
  br label %70

70:                                               ; preds = %13, %69, %43
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_bin_job(%struct.vc4_dev*) #1

declare dso_local i32 @vc4_flush_caches(%struct.drm_device*) #1

declare dso_local i32 @vc4_perfmon_start(%struct.vc4_dev*, i64) #1

declare dso_local i32 @submit_cl(%struct.drm_device*, i32, i64, i64) #1

declare dso_local i32 @vc4_move_job_to_render(%struct.drm_device*, %struct.vc4_exec_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
