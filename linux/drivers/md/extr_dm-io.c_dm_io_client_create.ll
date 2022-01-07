; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dm_io_client_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dm_io_client_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_client = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_dm_io_cache = common dso_local global i32 0, align 4
@BIOSET_NEED_BVECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_io_client* @dm_io_client_create() #0 {
  %1 = alloca %struct.dm_io_client*, align 8
  %2 = alloca %struct.dm_io_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @dm_get_reserved_bio_based_ios()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dm_io_client* @kzalloc(i32 8, i32 %6)
  store %struct.dm_io_client* %7, %struct.dm_io_client** %2, align 8
  %8 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %9 = icmp ne %struct.dm_io_client* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dm_io_client* @ERR_PTR(i32 %12)
  store %struct.dm_io_client* %13, %struct.dm_io_client** %1, align 8
  br label %42

14:                                               ; preds = %0
  %15 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %16 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @_dm_io_cache, align 4
  %19 = call i32 @mempool_init_slab_pool(i32* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %25 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %24, i32 0, i32 1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BIOSET_NEED_BVECS, align 4
  %28 = call i32 @bioset_init(i32* %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %34

32:                                               ; preds = %23
  %33 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  store %struct.dm_io_client* %33, %struct.dm_io_client** %1, align 8
  br label %42

34:                                               ; preds = %31, %22
  %35 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %36 = getelementptr inbounds %struct.dm_io_client, %struct.dm_io_client* %35, i32 0, i32 0
  %37 = call i32 @mempool_exit(i32* %36)
  %38 = load %struct.dm_io_client*, %struct.dm_io_client** %2, align 8
  %39 = call i32 @kfree(%struct.dm_io_client* %38)
  %40 = load i32, i32* %4, align 4
  %41 = call %struct.dm_io_client* @ERR_PTR(i32 %40)
  store %struct.dm_io_client* %41, %struct.dm_io_client** %1, align 8
  br label %42

42:                                               ; preds = %34, %32, %10
  %43 = load %struct.dm_io_client*, %struct.dm_io_client** %1, align 8
  ret %struct.dm_io_client* %43
}

declare dso_local i32 @dm_get_reserved_bio_based_ios(...) #1

declare dso_local %struct.dm_io_client* @kzalloc(i32, i32) #1

declare dso_local %struct.dm_io_client* @ERR_PTR(i32) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.dm_io_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
