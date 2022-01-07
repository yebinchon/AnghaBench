; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___enqueue_in_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___enqueue_in_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }

@VB2_BUF_STATE_ACTIVE = common dso_local global i32 0, align 4
@buf_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @__enqueue_in_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__enqueue_in_driver(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %4 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %4, i32 0, i32 1
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  store %struct.vb2_queue* %6, %struct.vb2_queue** %3, align 8
  %7 = load i32, i32* @VB2_BUF_STATE_ACTIVE, align 4
  %8 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %9 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %15 = call i32 @trace_vb2_buf_queue(%struct.vb2_queue* %13, %struct.vb2_buffer* %14)
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %17 = load i32, i32* @buf_queue, align 4
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %19 = call i32 @call_void_vb_qop(%struct.vb2_buffer* %16, i32 %17, %struct.vb2_buffer* %18)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_vb2_buf_queue(%struct.vb2_queue*, %struct.vb2_buffer*) #1

declare dso_local i32 @call_void_vb_qop(%struct.vb2_buffer*, i32, %struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
