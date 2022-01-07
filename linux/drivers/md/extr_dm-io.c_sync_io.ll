; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_sync_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_sync_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_client = type { i32 }
%struct.dm_io_region = type { i32 }
%struct.dpages = type { i32, i32 }
%struct.io = type { i32, i32, %struct.sync_io*, i32, %struct.dm_io_client*, i32, i64 }
%struct.sync_io = type { i64, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@sync_io_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_io_client*, i32, %struct.dm_io_region*, i32, i32, %struct.dpages*, i64*)* @sync_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_io(%struct.dm_io_client* %0, i32 %1, %struct.dm_io_region* %2, i32 %3, i32 %4, %struct.dpages* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_io_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_io_region*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dpages*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.io*, align 8
  %17 = alloca %struct.sync_io, align 8
  store %struct.dm_io_client* %0, %struct.dm_io_client** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.dpages* %5, %struct.dpages** %14, align 8
  store i64* %6, i64** %15, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %7
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @op_is_write(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 @WARN_ON(i32 1)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %83

28:                                               ; preds = %20, %7
  %29 = getelementptr inbounds %struct.sync_io, %struct.sync_io* %17, i32 0, i32 1
  %30 = call i32 @init_completion(i32* %29)
  %31 = load %struct.dm_io_client*, %struct.dm_io_client** %9, align 8
  %32 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_NOIO, align 4
  %34 = call %struct.io* @mempool_alloc(i32* %32, i32 %33)
  store %struct.io* %34, %struct.io** %16, align 8
  %35 = load %struct.io*, %struct.io** %16, align 8
  %36 = getelementptr inbounds %struct.io, %struct.io* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.io*, %struct.io** %16, align 8
  %38 = getelementptr inbounds %struct.io, %struct.io* %37, i32 0, i32 5
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.dm_io_client*, %struct.dm_io_client** %9, align 8
  %41 = load %struct.io*, %struct.io** %16, align 8
  %42 = getelementptr inbounds %struct.io, %struct.io* %41, i32 0, i32 4
  store %struct.dm_io_client* %40, %struct.dm_io_client** %42, align 8
  %43 = load i32, i32* @sync_io_complete, align 4
  %44 = load %struct.io*, %struct.io** %16, align 8
  %45 = getelementptr inbounds %struct.io, %struct.io* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.io*, %struct.io** %16, align 8
  %47 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 2
  store %struct.sync_io* %17, %struct.sync_io** %47, align 8
  %48 = load %struct.dpages*, %struct.dpages** %14, align 8
  %49 = getelementptr inbounds %struct.dpages, %struct.dpages* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.io*, %struct.io** %16, align 8
  %52 = getelementptr inbounds %struct.io, %struct.io* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.dpages*, %struct.dpages** %14, align 8
  %54 = getelementptr inbounds %struct.dpages, %struct.dpages* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.io*, %struct.io** %16, align 8
  %57 = getelementptr inbounds %struct.io, %struct.io* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.dm_io_region*, %struct.dm_io_region** %11, align 8
  %62 = load %struct.dpages*, %struct.dpages** %14, align 8
  %63 = load %struct.io*, %struct.io** %16, align 8
  %64 = call i32 @dispatch_io(i32 %58, i32 %59, i32 %60, %struct.dm_io_region* %61, %struct.dpages* %62, %struct.io* %63, i32 1)
  %65 = getelementptr inbounds %struct.sync_io, %struct.sync_io* %17, i32 0, i32 1
  %66 = call i32 @wait_for_completion_io(i32* %65)
  %67 = load i64*, i64** %15, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %28
  %70 = getelementptr inbounds %struct.sync_io, %struct.sync_io* %17, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %15, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %28
  %74 = getelementptr inbounds %struct.sync_io, %struct.sync_io* %17, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %24
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.io* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dispatch_io(i32, i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*, i32) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
