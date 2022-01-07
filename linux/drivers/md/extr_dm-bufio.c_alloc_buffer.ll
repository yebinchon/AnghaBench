; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_buffer* (%struct.dm_bufio_client*, i32)* @alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_buffer* @alloc_buffer(%struct.dm_bufio_client* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %8 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.dm_buffer* @kmem_cache_alloc(i32 %9, i32 %10)
  store %struct.dm_buffer* %11, %struct.dm_buffer** %6, align 8
  %12 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %13 = icmp ne %struct.dm_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.dm_buffer* null, %struct.dm_buffer** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %17 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %17, i32 0, i32 3
  store %struct.dm_bufio_client* %16, %struct.dm_bufio_client** %18, align 8
  %19 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %21, i32 0, i32 2
  %23 = call i32 @alloc_buffer_data(%struct.dm_bufio_client* %19, i32 %20, i32* %22)
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %15
  %31 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %32 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  %35 = call i32 @kmem_cache_free(i32 %33, %struct.dm_buffer* %34)
  store %struct.dm_buffer* null, %struct.dm_buffer** %3, align 8
  br label %38

36:                                               ; preds = %15
  %37 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  store %struct.dm_buffer* %37, %struct.dm_buffer** %3, align 8
  br label %38

38:                                               ; preds = %36, %30, %14
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  ret %struct.dm_buffer* %39
}

declare dso_local %struct.dm_buffer* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @alloc_buffer_data(%struct.dm_bufio_client*, i32, i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
