; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dm_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dm_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_request = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dm_io_region = type { i64 }
%struct.dpages = type { i32 }

@SECTOR_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_io(%struct.dm_io_request* %0, i32 %1, %struct.dm_io_region* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_io_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_io_region*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpages, align 4
  store %struct.dm_io_request* %0, %struct.dm_io_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %13 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %14 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SECTOR_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = call i32 @dp_init(%struct.dm_io_request* %12, %struct.dpages* %11, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %25 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %31 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %35 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %36 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %39 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = call i32 @sync_io(i32 %32, i32 %33, %struct.dm_io_region* %34, i32 %37, i32 %40, %struct.dpages* %11, i64* %41)
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %23
  %44 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %45 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %49 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %50 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %53 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %56 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dm_io_request*, %struct.dm_io_request** %6, align 8
  %60 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @async_io(i32 %46, i32 %47, %struct.dm_io_region* %48, i32 %51, i32 %54, %struct.dpages* %11, i32 %58, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %43, %29, %21
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @dp_init(%struct.dm_io_request*, %struct.dpages*, i64) #1

declare dso_local i32 @sync_io(i32, i32, %struct.dm_io_region*, i32, i32, %struct.dpages*, i64*) #1

declare dso_local i32 @async_io(i32, i32, %struct.dm_io_region*, i32, i32, %struct.dpages*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
