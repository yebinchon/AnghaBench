; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_flash_dev_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_flash_dev_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.uuid_entry = type { i32 }
%struct.bcache_device = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flash_dev_flush = common dso_local global i32 0, align 4
@system_wq = common dso_local global i32 0, align 4
@bch_flash_dev_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bcache\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*, %struct.uuid_entry*)* @flash_dev_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_dev_run(%struct.cache_set* %0, %struct.uuid_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca %struct.uuid_entry*, align 8
  %6 = alloca %struct.bcache_device*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store %struct.uuid_entry* %1, %struct.uuid_entry** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bcache_device* @kzalloc(i32 12, i32 %7)
  store %struct.bcache_device* %8, %struct.bcache_device** %6, align 8
  %9 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %10 = icmp ne %struct.bcache_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %74

14:                                               ; preds = %2
  %15 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %16 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %15, i32 0, i32 2
  %17 = call i32 @closure_init(i32* %16, i32* null)
  %18 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %19 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %18, i32 0, i32 2
  %20 = load i32, i32* @flash_dev_flush, align 4
  %21 = load i32, i32* @system_wq, align 4
  %22 = call i32 @set_closure_fn(i32* %19, i32 %20, i32 %21)
  %23 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %24 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %23, i32 0, i32 0
  %25 = call i32 @kobject_init(i32* %24, i32* @bch_flash_dev_ktype)
  %26 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %27 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %28 = call i32 @block_bytes(%struct.cache_set* %27)
  %29 = load %struct.uuid_entry*, %struct.uuid_entry** %5, align 8
  %30 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @bcache_device_init(%struct.bcache_device* %26, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %68

35:                                               ; preds = %14
  %36 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %37 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %38 = load %struct.uuid_entry*, %struct.uuid_entry** %5, align 8
  %39 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %40 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %38, i64 %43
  %45 = call i32 @bcache_device_attach(%struct.bcache_device* %36, %struct.cache_set* %37, %struct.uuid_entry* %44)
  %46 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %47 = call i32 @bch_sectors_dirty_init(%struct.bcache_device* %46)
  %48 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %49 = call i32 @bch_flash_dev_request_init(%struct.bcache_device* %48)
  %50 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %51 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @add_disk(i32 %52)
  %54 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %55 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %54, i32 0, i32 0
  %56 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %57 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_2__* @disk_to_dev(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i64 @kobject_add(i32* %55, i32* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %35
  br label %68

64:                                               ; preds = %35
  %65 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %66 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %67 = call i32 @bcache_device_link(%struct.bcache_device* %65, %struct.cache_set* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %74

68:                                               ; preds = %63, %34
  %69 = load %struct.bcache_device*, %struct.bcache_device** %6, align 8
  %70 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %69, i32 0, i32 0
  %71 = call i32 @kobject_put(i32* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %64, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.bcache_device* @kzalloc(i32, i32) #1

declare dso_local i32 @closure_init(i32*, i32*) #1

declare dso_local i32 @set_closure_fn(i32*, i32, i32) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i64 @bcache_device_init(%struct.bcache_device*, i32, i32) #1

declare dso_local i32 @block_bytes(%struct.cache_set*) #1

declare dso_local i32 @bcache_device_attach(%struct.bcache_device*, %struct.cache_set*, %struct.uuid_entry*) #1

declare dso_local i32 @bch_sectors_dirty_init(%struct.bcache_device*) #1

declare dso_local i32 @bch_flash_dev_request_init(%struct.bcache_device*) #1

declare dso_local i32 @add_disk(i32) #1

declare dso_local i64 @kobject_add(i32*, i32*, i8*) #1

declare dso_local %struct.TYPE_2__* @disk_to_dev(i32) #1

declare dso_local i32 @bcache_device_link(%struct.bcache_device*, %struct.cache_set*, i8*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
