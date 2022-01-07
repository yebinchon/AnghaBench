; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_device = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32**, %struct.uuid_entry*, i32 }
%struct.uuid_entry = type { i32, i32 }

@bch_register_lock = common dso_local global i32 0, align 4
@BCACHE_DEV_DETACHING = common dso_local global i32 0, align 4
@invalid_uuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcache_device*)* @bcache_device_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcache_device_detach(%struct.bcache_device* %0) #0 {
  %2 = alloca %struct.bcache_device*, align 8
  %3 = alloca %struct.uuid_entry*, align 8
  store %struct.bcache_device* %0, %struct.bcache_device** %2, align 8
  %4 = call i32 @lockdep_assert_held(i32* @bch_register_lock)
  %5 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %6 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = call i32 @atomic_dec(i32* %8)
  %10 = load i32, i32* @BCACHE_DEV_DETACHING, align 4
  %11 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %12 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %17 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.uuid_entry*, %struct.uuid_entry** %19, align 8
  %21 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %22 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %20, i64 %24
  store %struct.uuid_entry* %25, %struct.uuid_entry** %3, align 8
  %26 = load %struct.uuid_entry*, %struct.uuid_entry** %3, align 8
  %27 = call i32 @SET_UUID_FLASH_ONLY(%struct.uuid_entry* %26, i32 0)
  %28 = load %struct.uuid_entry*, %struct.uuid_entry** %3, align 8
  %29 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @invalid_uuid, align 4
  %32 = call i32 @memcpy(i32 %30, i32 %31, i32 16)
  %33 = call i64 (...) @ktime_get_real_seconds()
  %34 = trunc i64 %33 to i32
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.uuid_entry*, %struct.uuid_entry** %3, align 8
  %37 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %39 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @bch_uuid_write(%struct.TYPE_2__* %40)
  br label %42

42:                                               ; preds = %15, %1
  %43 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %44 = call i32 @bcache_device_unlink(%struct.bcache_device* %43)
  %45 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %46 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %51 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %49, i64 %53
  store i32* null, i32** %54, align 8
  %55 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %56 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @closure_put(i32* %58)
  %60 = load %struct.bcache_device*, %struct.bcache_device** %2, align 8
  %61 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %60, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %61, align 8
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SET_UUID_FLASH_ONLY(%struct.uuid_entry*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @bch_uuid_write(%struct.TYPE_2__*) #1

declare dso_local i32 @bcache_device_unlink(%struct.bcache_device*) #1

declare dso_local i32 @closure_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
