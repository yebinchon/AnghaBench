; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_buffer_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msu_buffer_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msu_buffer = type { i32 }
%struct.module = type { i32 }
%struct.msu_buffer_entry = type { i32, %struct.module*, %struct.msu_buffer* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msu_buffer_mutex = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@msu_buffer_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_th_msu_buffer_register(%struct.msu_buffer* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msu_buffer*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.msu_buffer_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.msu_buffer* %0, %struct.msu_buffer** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.msu_buffer_entry* @kzalloc(i32 24, i32 %8)
  store %struct.msu_buffer_entry* %9, %struct.msu_buffer_entry** %6, align 8
  %10 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %6, align 8
  %11 = icmp ne %struct.msu_buffer_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @msu_buffer_mutex)
  %17 = load %struct.msu_buffer*, %struct.msu_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.msu_buffer, %struct.msu_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__msu_buffer_entry_find(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %6, align 8
  %26 = call i32 @kfree(%struct.msu_buffer_entry* %25)
  br label %37

27:                                               ; preds = %15
  %28 = load %struct.msu_buffer*, %struct.msu_buffer** %4, align 8
  %29 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %6, align 8
  %30 = getelementptr inbounds %struct.msu_buffer_entry, %struct.msu_buffer_entry* %29, i32 0, i32 2
  store %struct.msu_buffer* %28, %struct.msu_buffer** %30, align 8
  %31 = load %struct.module*, %struct.module** %5, align 8
  %32 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %6, align 8
  %33 = getelementptr inbounds %struct.msu_buffer_entry, %struct.msu_buffer_entry* %32, i32 0, i32 1
  store %struct.module* %31, %struct.module** %33, align 8
  %34 = load %struct.msu_buffer_entry*, %struct.msu_buffer_entry** %6, align 8
  %35 = getelementptr inbounds %struct.msu_buffer_entry, %struct.msu_buffer_entry* %34, i32 0, i32 0
  %36 = call i32 @list_add_tail(i32* %35, i32* @msu_buffer_list)
  br label %37

37:                                               ; preds = %27, %22
  %38 = call i32 @mutex_unlock(i32* @msu_buffer_mutex)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.msu_buffer_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__msu_buffer_entry_find(i32) #1

declare dso_local i32 @kfree(%struct.msu_buffer_entry*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
