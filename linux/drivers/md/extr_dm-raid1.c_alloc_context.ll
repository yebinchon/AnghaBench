; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_alloc_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, i32, i32, i32, %struct.dm_target*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.dm_target = type { i8*, i32, i32 }
%struct.dm_dirty_log = type { i32 }

@mirror = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate mirror context\00", align 1
@DEFAULT_MIRROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Error creating dm_io client\00", align 1
@dispatch_bios = common dso_local global i32 0, align 4
@wakeup_mirrord = common dso_local global i32 0, align 4
@wakeup_all_recovery_waiters = common dso_local global i32 0, align 4
@MAX_RECOVERY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Error creating dirty region hash\00", align 1
@ms = common dso_local global %struct.mirror_set* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mirror_set* (i32, i32, %struct.dm_target*, %struct.dm_dirty_log*)* @alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mirror_set* @alloc_context(i32 %0, i32 %1, %struct.dm_target* %2, %struct.dm_dirty_log* %3) #0 {
  %5 = alloca %struct.mirror_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_target*, align 8
  %9 = alloca %struct.dm_dirty_log*, align 8
  %10 = alloca %struct.mirror_set*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.dm_target* %2, %struct.dm_target** %8, align 8
  store %struct.dm_dirty_log* %3, %struct.dm_dirty_log** %9, align 8
  %11 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %12 = ptrtoint %struct.mirror_set* %11 to i32
  %13 = load i32, i32* @mirror, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @struct_size(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mirror_set* @kzalloc(i32 %15, i32 %16)
  store %struct.mirror_set* %17, %struct.mirror_set** %10, align 8
  %18 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %19 = icmp ne %struct.mirror_set* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  store %struct.mirror_set* null, %struct.mirror_set** %5, align 8
  br label %113

23:                                               ; preds = %4
  %24 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %25 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %24, i32 0, i32 14
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %28 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %27, i32 0, i32 13
  %29 = call i32 @bio_list_init(i32* %28)
  %30 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %31 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %30, i32 0, i32 12
  %32 = call i32 @bio_list_init(i32* %31)
  %33 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %34 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %33, i32 0, i32 11
  %35 = call i32 @bio_list_init(i32* %34)
  %36 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %37 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %36, i32 0, i32 10
  %38 = call i32 @bio_list_init(i32* %37)
  %39 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %40 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %41 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %40, i32 0, i32 4
  store %struct.dm_target* %39, %struct.dm_target** %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %44 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %46 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dm_sector_div_up(i32 %47, i32 %48)
  %50 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %51 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %53 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %52, i32 0, i32 9
  store i64 0, i64* %53, align 8
  %54 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %55 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %54, i32 0, i32 8
  store i64 0, i64* %55, align 8
  %56 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %57 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %59 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %58, i32 0, i32 6
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %62 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %61, i32 0, i32 5
  %63 = load i32, i32* @DEFAULT_MIRROR, align 4
  %64 = call i32 @atomic_set(i32* %62, i32 %63)
  %65 = call i32 (...) @dm_io_client_create()
  %66 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %67 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %69 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %23
  %74 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %75 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %74, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %75, align 8
  %76 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %77 = call i32 @kfree(%struct.mirror_set* %76)
  store %struct.mirror_set* null, %struct.mirror_set** %5, align 8
  br label %113

78:                                               ; preds = %23
  %79 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %80 = load i32, i32* @dispatch_bios, align 4
  %81 = load i32, i32* @wakeup_mirrord, align 4
  %82 = load i32, i32* @wakeup_all_recovery_waiters, align 4
  %83 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %84 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %83, i32 0, i32 4
  %85 = load %struct.dm_target*, %struct.dm_target** %84, align 8
  %86 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MAX_RECOVERY, align 4
  %89 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %92 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dm_region_hash_create(%struct.mirror_set* %79, i32 %80, i32 %81, i32 %82, i32 %87, i32 %88, %struct.dm_dirty_log* %89, i32 %90, i32 %93)
  %95 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %96 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %98 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @IS_ERR(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %78
  %103 = load %struct.dm_target*, %struct.dm_target** %8, align 8
  %104 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %104, align 8
  %105 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %106 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dm_io_client_destroy(i32 %107)
  %109 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  %110 = call i32 @kfree(%struct.mirror_set* %109)
  store %struct.mirror_set* null, %struct.mirror_set** %5, align 8
  br label %113

111:                                              ; preds = %78
  %112 = load %struct.mirror_set*, %struct.mirror_set** %10, align 8
  store %struct.mirror_set* %112, %struct.mirror_set** %5, align 8
  br label %113

113:                                              ; preds = %111, %102, %73, %20
  %114 = load %struct.mirror_set*, %struct.mirror_set** %5, align 8
  ret %struct.mirror_set* %114
}

declare dso_local %struct.mirror_set* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @dm_sector_div_up(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.mirror_set*) #1

declare dso_local i32 @dm_region_hash_create(%struct.mirror_set*, i32, i32, i32, i32, i32, %struct.dm_dirty_log*, i32, i32) #1

declare dso_local i32 @dm_io_client_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
