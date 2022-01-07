; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_persistent_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_exception_store = type { i32, i32 }
%struct.pstore = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NUM_SNAPSHOT_HDR_CHUNKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_exception_store*, i32*, i32*, i32*)* @persistent_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @persistent_usage(%struct.dm_exception_store* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dm_exception_store*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pstore*, align 8
  store %struct.dm_exception_store* %0, %struct.dm_exception_store** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %11 = call %struct.pstore* @get_info(%struct.dm_exception_store* %10)
  store %struct.pstore* %11, %struct.pstore** %9, align 8
  %12 = load %struct.pstore*, %struct.pstore** %9, align 8
  %13 = getelementptr inbounds %struct.pstore, %struct.pstore* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %16 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %21 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_2__* @dm_snap_cow(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_dev_size(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.pstore*, %struct.pstore** %9, align 8
  %29 = getelementptr inbounds %struct.pstore, %struct.pstore* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @NUM_SNAPSHOT_HDR_CHUNKS, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.dm_exception_store*, %struct.dm_exception_store** %5, align 8
  %35 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  ret void
}

declare dso_local %struct.pstore* @get_info(%struct.dm_exception_store*) #1

declare dso_local i32 @get_dev_size(i32) #1

declare dso_local %struct.TYPE_2__* @dm_snap_cow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
