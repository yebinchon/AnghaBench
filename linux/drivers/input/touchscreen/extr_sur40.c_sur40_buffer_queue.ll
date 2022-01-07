; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sur40.c_sur40_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.sur40_state = type { i32, i32 }
%struct.sur40_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @sur40_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sur40_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.sur40_state*, align 8
  %4 = alloca %struct.sur40_buffer*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sur40_state* @vb2_get_drv_priv(i32 %7)
  store %struct.sur40_state* %8, %struct.sur40_state** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = bitcast %struct.vb2_buffer* %9 to %struct.sur40_buffer*
  store %struct.sur40_buffer* %10, %struct.sur40_buffer** %4, align 8
  %11 = load %struct.sur40_state*, %struct.sur40_state** %3, align 8
  %12 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.sur40_buffer*, %struct.sur40_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.sur40_buffer, %struct.sur40_buffer* %14, i32 0, i32 0
  %16 = load %struct.sur40_state*, %struct.sur40_state** %3, align 8
  %17 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %16, i32 0, i32 1
  %18 = call i32 @list_add_tail(i32* %15, i32* %17)
  %19 = load %struct.sur40_state*, %struct.sur40_state** %3, align 8
  %20 = getelementptr inbounds %struct.sur40_state, %struct.sur40_state* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  ret void
}

declare dso_local %struct.sur40_state* @vb2_get_drv_priv(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
