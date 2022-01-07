; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_flash_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_flash_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32 }
%struct.uuid_entry = type { i32, i32, i32, i32, i32 }

@CACHE_SET_STOPPING = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CACHE_SET_RUNNING = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't create volume, no room for UUID\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bch_flash_dev_create(%struct.cache_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uuid_entry*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CACHE_SET_STOPPING, align 4
  %8 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %9 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %8, i32 0, i32 0
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINTR, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load i32, i32* @CACHE_SET_RUNNING, align 4
  %17 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %18 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EPERM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %60

24:                                               ; preds = %15
  %25 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %26 = call %struct.uuid_entry* @uuid_find_empty(%struct.cache_set* %25)
  store %struct.uuid_entry* %26, %struct.uuid_entry** %6, align 8
  %27 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %28 = icmp ne %struct.uuid_entry* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %60

33:                                               ; preds = %24
  %34 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %35 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_random_bytes(i32 %36, i32 16)
  %38 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %39 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memset(i32 %40, i32 0, i32 32)
  %42 = call i64 (...) @ktime_get_real_seconds()
  %43 = trunc i64 %42 to i32
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %46 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %48 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %50 = call i32 @SET_UUID_FLASH_ONLY(%struct.uuid_entry* %49, i32 1)
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 9
  %53 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %54 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %56 = call i32 @bch_uuid_write(%struct.cache_set* %55)
  %57 = load %struct.cache_set*, %struct.cache_set** %4, align 8
  %58 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  %59 = call i32 @flash_dev_run(%struct.cache_set* %57, %struct.uuid_entry* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %33, %29, %21, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.uuid_entry* @uuid_find_empty(%struct.cache_set*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @SET_UUID_FLASH_ONLY(%struct.uuid_entry*, i32) #1

declare dso_local i32 @bch_uuid_write(%struct.cache_set*) #1

declare dso_local i32 @flash_dev_run(%struct.cache_set*, %struct.uuid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
