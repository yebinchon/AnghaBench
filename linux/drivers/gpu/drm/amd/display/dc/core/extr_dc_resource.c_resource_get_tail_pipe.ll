; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_get_tail_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_get_tail_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_context = type { i32 }
%struct.pipe_ctx = type { %struct.pipe_ctx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_ctx* (%struct.resource_context*, %struct.pipe_ctx*)* @resource_get_tail_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_ctx* @resource_get_tail_pipe(%struct.resource_context* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.resource_context*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 0
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %7, align 8
  store %struct.pipe_ctx* %8, %struct.pipe_ctx** %5, align 8
  br label %9

9:                                                ; preds = %12, %2
  %10 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %11 = icmp ne %struct.pipe_ctx* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  store %struct.pipe_ctx* %13, %struct.pipe_ctx** %4, align 8
  %14 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %14, i32 0, i32 0
  %16 = load %struct.pipe_ctx*, %struct.pipe_ctx** %15, align 8
  store %struct.pipe_ctx* %16, %struct.pipe_ctx** %5, align 8
  br label %9

17:                                               ; preds = %9
  %18 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  ret %struct.pipe_ctx* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
