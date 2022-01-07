; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_async_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_async_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_client = type { i32 }
%struct.dm_io_region = type { i32 }
%struct.dpages = type { i32, i32 }
%struct.io = type { i32, i32, i8*, i32 (i32, i8*)*, %struct.dm_io_client*, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_io_client*, i32, %struct.dm_io_region*, i32, i32, %struct.dpages*, i32 (i32, i8*)*, i8*)* @async_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_io(%struct.dm_io_client* %0, i32 %1, %struct.dm_io_region* %2, i32 %3, i32 %4, %struct.dpages* %5, i32 (i32, i8*)* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_io_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_io_region*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dpages*, align 8
  %16 = alloca i32 (i32, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.io*, align 8
  store %struct.dm_io_client* %0, %struct.dm_io_client** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.dm_io_region* %2, %struct.dm_io_region** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.dpages* %5, %struct.dpages** %15, align 8
  store i32 (i32, i8*)* %6, i32 (i32, i8*)** %16, align 8
  store i8* %7, i8** %17, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %8
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @op_is_write(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = call i32 @WARN_ON(i32 1)
  %27 = load i32 (i32, i8*)*, i32 (i32, i8*)** %16, align 8
  %28 = load i8*, i8** %17, align 8
  %29 = call i32 %27(i32 1, i8* %28)
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %68

32:                                               ; preds = %21, %8
  %33 = load %struct.dm_io_client*, %struct.dm_io_client** %10, align 8
  %34 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_NOIO, align 4
  %36 = call %struct.io* @mempool_alloc(i32* %34, i32 %35)
  store %struct.io* %36, %struct.io** %18, align 8
  %37 = load %struct.io*, %struct.io** %18, align 8
  %38 = getelementptr inbounds %struct.io, %struct.io* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.io*, %struct.io** %18, align 8
  %40 = getelementptr inbounds %struct.io, %struct.io* %39, i32 0, i32 5
  %41 = call i32 @atomic_set(i32* %40, i32 1)
  %42 = load %struct.dm_io_client*, %struct.dm_io_client** %10, align 8
  %43 = load %struct.io*, %struct.io** %18, align 8
  %44 = getelementptr inbounds %struct.io, %struct.io* %43, i32 0, i32 4
  store %struct.dm_io_client* %42, %struct.dm_io_client** %44, align 8
  %45 = load i32 (i32, i8*)*, i32 (i32, i8*)** %16, align 8
  %46 = load %struct.io*, %struct.io** %18, align 8
  %47 = getelementptr inbounds %struct.io, %struct.io* %46, i32 0, i32 3
  store i32 (i32, i8*)* %45, i32 (i32, i8*)** %47, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = load %struct.io*, %struct.io** %18, align 8
  %50 = getelementptr inbounds %struct.io, %struct.io* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.dpages*, %struct.dpages** %15, align 8
  %52 = getelementptr inbounds %struct.dpages, %struct.dpages* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.io*, %struct.io** %18, align 8
  %55 = getelementptr inbounds %struct.io, %struct.io* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dpages*, %struct.dpages** %15, align 8
  %57 = getelementptr inbounds %struct.dpages, %struct.dpages* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.io*, %struct.io** %18, align 8
  %60 = getelementptr inbounds %struct.io, %struct.io* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.dm_io_region*, %struct.dm_io_region** %12, align 8
  %65 = load %struct.dpages*, %struct.dpages** %15, align 8
  %66 = load %struct.io*, %struct.io** %18, align 8
  %67 = call i32 @dispatch_io(i32 %61, i32 %62, i32 %63, %struct.dm_io_region* %64, %struct.dpages* %65, %struct.io* %66, i32 0)
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %32, %25
  %69 = load i32, i32* %9, align 4
  ret i32 %69
}

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.io* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dispatch_io(i32, i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
