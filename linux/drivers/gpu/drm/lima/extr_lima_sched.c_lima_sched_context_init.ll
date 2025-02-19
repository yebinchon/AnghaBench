; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_sched_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_sched_rq* }
%struct.drm_sched_rq = type { i32 }
%struct.lima_sched_context = type { i32 }

@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lima_sched_context_init(%struct.lima_sched_pipe* %0, %struct.lima_sched_context* %1, i32* %2) #0 {
  %4 = alloca %struct.lima_sched_pipe*, align 8
  %5 = alloca %struct.lima_sched_context*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.drm_sched_rq*, align 8
  store %struct.lima_sched_pipe* %0, %struct.lima_sched_pipe** %4, align 8
  store %struct.lima_sched_context* %1, %struct.lima_sched_context** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %4, align 8
  %9 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.drm_sched_rq*, %struct.drm_sched_rq** %10, align 8
  %12 = load i32, i32* @DRM_SCHED_PRIORITY_NORMAL, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.drm_sched_rq, %struct.drm_sched_rq* %11, i64 %13
  store %struct.drm_sched_rq* %14, %struct.drm_sched_rq** %7, align 8
  %15 = load %struct.lima_sched_context*, %struct.lima_sched_context** %5, align 8
  %16 = getelementptr inbounds %struct.lima_sched_context, %struct.lima_sched_context* %15, i32 0, i32 0
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @drm_sched_entity_init(i32* %16, %struct.drm_sched_rq** %7, i32 1, i32* %17)
  ret i32 %18
}

declare dso_local i32 @drm_sched_entity_init(i32*, %struct.drm_sched_rq**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
