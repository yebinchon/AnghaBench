; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_metadata_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-metadata.c_metadata_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_cache_metadata = type { i32, i64, i32, i32, i64, i32, %struct.block_device*, i32, i32 }
%struct.block_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not allocate metadata struct\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@clear_clean_shutdown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_cache_metadata* (%struct.block_device*, i32, i32, i64, i32)* @metadata_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_cache_metadata* @metadata_open(%struct.block_device* %0, i32 %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.dm_cache_metadata*, align 8
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dm_cache_metadata*, align 8
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.dm_cache_metadata* @kzalloc(i32 56, i32 %14)
  store %struct.dm_cache_metadata* %15, %struct.dm_cache_metadata** %13, align 8
  %16 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %17 = icmp ne %struct.dm_cache_metadata* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.dm_cache_metadata* @ERR_PTR(i32 %21)
  store %struct.dm_cache_metadata* %22, %struct.dm_cache_metadata** %6, align 8
  br label %71

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %26 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %28 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %27, i32 0, i32 8
  %29 = call i32 @refcount_set(i32* %28, i32 1)
  %30 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %31 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %30, i32 0, i32 7
  %32 = call i32 @init_rwsem(i32* %31)
  %33 = load %struct.block_device*, %struct.block_device** %7, align 8
  %34 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %35 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %34, i32 0, i32 6
  store %struct.block_device* %33, %struct.block_device** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %38 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %40 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %43 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %45 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %47 = getelementptr inbounds %struct.dm_cache_metadata, %struct.dm_cache_metadata* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @__create_persistent_data_objects(%struct.dm_cache_metadata* %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %23
  %54 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %55 = call i32 @kfree(%struct.dm_cache_metadata* %54)
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.dm_cache_metadata* @ERR_PTR(i32 %56)
  store %struct.dm_cache_metadata* %57, %struct.dm_cache_metadata** %6, align 8
  br label %71

58:                                               ; preds = %23
  %59 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %60 = load i32, i32* @clear_clean_shutdown, align 4
  %61 = call i32 @__begin_transaction_flags(%struct.dm_cache_metadata* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  %66 = call i32 @dm_cache_metadata_close(%struct.dm_cache_metadata* %65)
  %67 = load i32, i32* %12, align 4
  %68 = call %struct.dm_cache_metadata* @ERR_PTR(i32 %67)
  store %struct.dm_cache_metadata* %68, %struct.dm_cache_metadata** %6, align 8
  br label %71

69:                                               ; preds = %58
  %70 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %13, align 8
  store %struct.dm_cache_metadata* %70, %struct.dm_cache_metadata** %6, align 8
  br label %71

71:                                               ; preds = %69, %64, %53, %18
  %72 = load %struct.dm_cache_metadata*, %struct.dm_cache_metadata** %6, align 8
  ret %struct.dm_cache_metadata* %72
}

declare dso_local %struct.dm_cache_metadata* @kzalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local %struct.dm_cache_metadata* @ERR_PTR(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @__create_persistent_data_objects(%struct.dm_cache_metadata*, i32) #1

declare dso_local i32 @kfree(%struct.dm_cache_metadata*) #1

declare dso_local i32 @__begin_transaction_flags(%struct.dm_cache_metadata*, i32) #1

declare dso_local i32 @dm_cache_metadata_close(%struct.dm_cache_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
