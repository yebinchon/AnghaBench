; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_next_render_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_submit_next_render_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_exec_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_submit_next_render_job(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %5)
  store %struct.vc4_dev* %6, %struct.vc4_dev** %3, align 8
  %7 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %8 = call %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev* %7)
  store %struct.vc4_exec_info* %8, %struct.vc4_exec_info** %4, align 8
  %9 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %10 = icmp ne %struct.vc4_exec_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %14 = call i32 @vc4_flush_texture_caches(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %16 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %17 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %20 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @submit_cl(%struct.drm_device* %15, i32 1, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_exec_info* @vc4_first_render_job(%struct.vc4_dev*) #1

declare dso_local i32 @vc4_flush_texture_caches(%struct.drm_device*) #1

declare dso_local i32 @submit_cl(%struct.drm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
