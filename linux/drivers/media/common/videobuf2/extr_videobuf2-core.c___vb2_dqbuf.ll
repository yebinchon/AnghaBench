; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_dqbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_dqbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }

@VB2_BUF_STATE_DEQUEUED = common dso_local global i64 0, align 8
@init_buffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @__vb2_dqbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vb2_dqbuf(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_queue*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %4 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %5 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %4, i32 0, i32 1
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  store %struct.vb2_queue* %6, %struct.vb2_queue** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VB2_BUF_STATE_DEQUEUED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load i64, i64* @VB2_BUF_STATE_DEQUEUED, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %16 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %18 = load i32, i32* @init_buffer, align 4
  %19 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %20 = call i32 @call_void_bufop(%struct.vb2_queue* %17, i32 %18, %struct.vb2_buffer* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @call_void_bufop(%struct.vb2_queue*, i32, %struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
