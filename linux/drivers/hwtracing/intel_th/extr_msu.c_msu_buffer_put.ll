; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msu_buffer_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_msu_buffer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msu_buffer = type { i32 }
%struct.msu_buffer_entry = type { i32 }

@msu_buffer_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msu_buffer*)* @msu_buffer_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msu_buffer_put(%struct.msu_buffer* %0) #0 {
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
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %3, align 8
  %13 = getelementptr inbounds %struct.msu_buffer_entry, %struct.msu_buffer_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @module_put(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = call i32 @mutex_unlock(i32* @msu_buffer_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.msu_buffer_entry* @__msu_buffer_entry_find(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
