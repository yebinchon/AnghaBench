; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_buffer_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_buffer_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msu_buffer = type { i32 }
%struct.msu_buffer_entry = type { i32 }

@msu_buffer_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_th_msu_buffer_unregister(%struct.msu_buffer* %0) #0 {
  %2 = alloca %struct.msu_buffer*, align 8
  %3 = alloca %struct.msu_buffer_entry*, align 8
  store %struct.msu_buffer* %0, %struct.msu_buffer** %2, align 8
  %4 = call i32 @mutex_lock(i32* @msu_buffer_mutex)
  %5 = load %struct.msu_buffer*, %struct.msu_buffer** %2, align 8
  %6 = getelementptr inbounds %struct.msu_buffer, %struct.msu_buffer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.msu_buffer_entry* @__msu_buffer_entry_find(i32 %7)
  store %struct.msu_buffer_entry* %8, %struct.msu_buffer_entry** %3, align 8
  %9 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %3, align 8
  %10 = icmp ne %struct.msu_buffer_entry* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %3, align 8
  %13 = getelementptr inbounds %struct.msu_buffer_entry, %struct.msu_buffer_entry* %12, i32 0, i32 0
  %14 = call i32 @list_del(i32* %13)
  %15 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %3, align 8
  %16 = call i32 @kfree(%struct.msu_buffer_entry* %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = call i32 @mutex_unlock(i32* @msu_buffer_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.msu_buffer_entry* @__msu_buffer_entry_find(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.msu_buffer_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
