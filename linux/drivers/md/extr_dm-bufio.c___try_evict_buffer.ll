; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___try_evict_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___try_evict_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i64, i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@B_READING = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_buffer*, i32)* @__try_evict_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__try_evict_buffer(%struct.dm_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_buffer* %0, %struct.dm_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @__GFP_FS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @B_READING, align 4
  %12 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @B_WRITING, align 4
  %18 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %18, i32 0, i32 1
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @B_DIRTY, align 4
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %24, i32 0, i32 1
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %10
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %38 = call i32 @__make_buffer_clean(%struct.dm_buffer* %37)
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %40 = call i32 @__unlink_buffer(%struct.dm_buffer* %39)
  %41 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %42 = call i32 @__free_buffer_wake(%struct.dm_buffer* %41)
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %35, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__make_buffer_clean(%struct.dm_buffer*) #1

declare dso_local i32 @__unlink_buffer(%struct.dm_buffer*) #1

declare dso_local i32 @__free_buffer_wake(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
