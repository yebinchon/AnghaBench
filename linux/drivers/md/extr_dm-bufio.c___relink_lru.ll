; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___relink_lru.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___relink_lru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i64, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32*, i32* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32)* @__relink_lru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__relink_lru(%struct.dm_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %6, i32 0, i32 4
  %8 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  store %struct.dm_bufio_client* %8, %struct.dm_bufio_client** %5, align 8
  %9 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %12 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %24 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %33 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %45 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %44, i32 0, i32 3
  %46 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %5, align 8
  %47 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @list_move(i32* %45, i32* %51)
  %53 = load i32, i32* @jiffies, align 4
  %54 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %55 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
