; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_block_manager_write_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_block_manager_write_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32 }
%struct.buffer_aux = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, %struct.dm_block*, i32)* }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*)* @dm_block_manager_write_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_block_manager_write_callback(%struct.dm_buffer* %0) #0 {
  %2 = alloca %struct.dm_buffer*, align 8
  %3 = alloca %struct.buffer_aux*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %2, align 8
  %4 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %5 = call %struct.buffer_aux* @dm_bufio_get_aux_data(%struct.dm_buffer* %4)
  store %struct.buffer_aux* %5, %struct.buffer_aux** %3, align 8
  %6 = load %struct.buffer_aux*, %struct.buffer_aux** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.buffer_aux*, %struct.buffer_aux** %3, align 8
  %12 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.TYPE_2__*, %struct.dm_block*, i32)*, i32 (%struct.TYPE_2__*, %struct.dm_block*, i32)** %14, align 8
  %16 = load %struct.buffer_aux*, %struct.buffer_aux** %3, align 8
  %17 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %20 = bitcast %struct.dm_buffer* %19 to %struct.dm_block*
  %21 = load %struct.dm_buffer*, %struct.dm_buffer** %2, align 8
  %22 = call i32 @dm_bufio_get_client(%struct.dm_buffer* %21)
  %23 = call i32 @dm_bufio_get_block_size(i32 %22)
  %24 = call i32 %15(%struct.TYPE_2__* %18, %struct.dm_block* %20, i32 %23)
  br label %25

25:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(%struct.dm_buffer*) #1

declare dso_local i32 @dm_bufio_get_block_size(i32) #1

declare dso_local i32 @dm_bufio_get_client(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
