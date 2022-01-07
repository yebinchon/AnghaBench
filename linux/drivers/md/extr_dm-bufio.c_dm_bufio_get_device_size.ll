; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_get_device_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_get_device_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bufio_get_device_size(%struct.dm_bufio_client* %0) #0 {
  %2 = alloca %struct.dm_bufio_client*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %2, align 8
  %4 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %5 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @i_size_read(i32 %8)
  %10 = load i32, i32* @SECTOR_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %13 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %21 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = ashr i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %2, align 8
  %28 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SECTOR_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = call i32 @sector_div(i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %25, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
