; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_move_job_to_render.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_move_job_to_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i32 }
%struct.vc4_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_move_job_to_render(%struct.drm_device* %0, %struct.vc4_exec_info* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  %5 = alloca %struct.vc4_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %7)
  store %struct.vc4_dev* %8, %struct.vc4_dev** %5, align 8
  %9 = load %struct.vc4_dev*, %struct.vc4_dev** %5, align 8
  %10 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %13 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %12, i32 0, i32 0
  %14 = load %struct.vc4_dev*, %struct.vc4_dev** %5, align 8
  %15 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %14, i32 0, i32 0
  %16 = call i32 @list_move_tail(i32* %13, i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %21 = call i32 @vc4_submit_next_render_job(%struct.drm_device* %20)
  br label %22

22:                                               ; preds = %19, %2
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @vc4_submit_next_render_job(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
