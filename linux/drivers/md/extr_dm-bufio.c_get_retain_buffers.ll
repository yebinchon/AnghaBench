; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_get_retain_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_get_retain_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i64, i64 }

@dm_bufio_retain_bytes = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dm_bufio_client*)* @get_retain_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_retain_buffers(%struct.dm_bufio_client* %0) #0 {
  %2 = alloca %struct.dm_bufio_client*, align 8
  %3 = alloca i64, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %2, align 8
  %4 = load i32, i32* @dm_bufio_retain_bytes, align 4
  %5 = call i64 @READ_ONCE(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %7 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp uge i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %15 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SECTOR_SHIFT, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %3, align 8
  %20 = lshr i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %27

21:                                               ; preds = %1
  %22 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %23 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %3, align 8
  %26 = udiv i64 %25, %24
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %21, %13
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
