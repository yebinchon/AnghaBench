; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-region-hash.c___rh_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_region = type { i64, i32, i32, i32, i32, %struct.dm_region_hash* }
%struct.dm_region_hash = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.TYPE_4__*, i32, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@DM_RH_CLEAN = common dso_local global i64 0, align 8
@DM_RH_NOSYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_region* (%struct.dm_region_hash*, i32)* @__rh_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_region* @__rh_alloc(%struct.dm_region_hash* %0, i32 %1) #0 {
  %3 = alloca %struct.dm_region_hash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_region*, align 8
  %6 = alloca %struct.dm_region*, align 8
  store %struct.dm_region_hash* %0, %struct.dm_region_hash** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %8 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %7, i32 0, i32 3
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.dm_region* @mempool_alloc(i32* %8, i32 %9)
  store %struct.dm_region* %10, %struct.dm_region** %6, align 8
  %11 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %12 = icmp ne %struct.dm_region* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_NOIO, align 4
  %19 = load i32, i32* @__GFP_NOFAIL, align 4
  %20 = or i32 %18, %19
  %21 = call %struct.dm_region* @kmalloc(i32 32, i32 %20)
  store %struct.dm_region* %21, %struct.dm_region** %6, align 8
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %24 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_4__*, i32, i32)*, i64 (%struct.TYPE_4__*, i32, i32)** %28, align 8
  %30 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %31 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i64 %29(%struct.TYPE_4__* %32, i32 %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i64, i64* @DM_RH_CLEAN, align 8
  br label %40

38:                                               ; preds = %22
  %39 = load i64, i64* @DM_RH_NOSYNC, align 8
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i64 [ %37, %36 ], [ %39, %38 ]
  %42 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %43 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %45 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %46 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %45, i32 0, i32 5
  store %struct.dm_region_hash* %44, %struct.dm_region_hash** %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %49 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %51 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %50, i32 0, i32 1
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %54 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %53, i32 0, i32 3
  %55 = call i32 @atomic_set(i32* %54, i32 0)
  %56 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %57 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %56, i32 0, i32 2
  %58 = call i32 @bio_list_init(i32* %57)
  %59 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %60 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %59, i32 0, i32 0
  %61 = call i32 @write_lock_irq(i32* %60)
  %62 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call %struct.dm_region* @__rh_lookup(%struct.dm_region_hash* %62, i32 %63)
  store %struct.dm_region* %64, %struct.dm_region** %5, align 8
  %65 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  %66 = icmp ne %struct.dm_region* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %40
  %68 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %69 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %70 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %69, i32 0, i32 3
  %71 = call i32 @mempool_free(%struct.dm_region* %68, i32* %70)
  br label %95

72:                                               ; preds = %40
  %73 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %74 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %75 = call i32 @__rh_insert(%struct.dm_region_hash* %73, %struct.dm_region* %74)
  %76 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %77 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DM_RH_CLEAN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %72
  %82 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %83 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %82, i32 0, i32 1
  %84 = call i32 @spin_lock(i32* %83)
  %85 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  %86 = getelementptr inbounds %struct.dm_region, %struct.dm_region* %85, i32 0, i32 1
  %87 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %88 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %87, i32 0, i32 2
  %89 = call i32 @list_add(i32* %86, i32* %88)
  %90 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %91 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %90, i32 0, i32 1
  %92 = call i32 @spin_unlock(i32* %91)
  br label %93

93:                                               ; preds = %81, %72
  %94 = load %struct.dm_region*, %struct.dm_region** %6, align 8
  store %struct.dm_region* %94, %struct.dm_region** %5, align 8
  br label %95

95:                                               ; preds = %93, %67
  %96 = load %struct.dm_region_hash*, %struct.dm_region_hash** %3, align 8
  %97 = getelementptr inbounds %struct.dm_region_hash, %struct.dm_region_hash* %96, i32 0, i32 0
  %98 = call i32 @write_unlock_irq(i32* %97)
  %99 = load %struct.dm_region*, %struct.dm_region** %5, align 8
  ret %struct.dm_region* %99
}

declare dso_local %struct.dm_region* @mempool_alloc(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dm_region* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local %struct.dm_region* @__rh_lookup(%struct.dm_region_hash*, i32) #1

declare dso_local i32 @mempool_free(%struct.dm_region*, i32*) #1

declare dso_local i32 @__rh_insert(%struct.dm_region_hash*, %struct.dm_region*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
