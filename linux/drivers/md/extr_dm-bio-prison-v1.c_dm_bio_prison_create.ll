; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_bio_prison_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_bio_prison_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIN_CELLS = common dso_local global i32 0, align 4
@_cell_cache = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_bio_prison* @dm_bio_prison_create() #0 {
  %1 = alloca %struct.dm_bio_prison*, align 8
  %2 = alloca %struct.dm_bio_prison*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.dm_bio_prison* @kzalloc(i32 12, i32 %4)
  store %struct.dm_bio_prison* %5, %struct.dm_bio_prison** %2, align 8
  %6 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  %7 = icmp ne %struct.dm_bio_prison* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.dm_bio_prison* null, %struct.dm_bio_prison** %1, align 8
  br label %28

9:                                                ; preds = %0
  %10 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  %11 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %10, i32 0, i32 2
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  %14 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %13, i32 0, i32 1
  %15 = load i32, i32* @MIN_CELLS, align 4
  %16 = load i32, i32* @_cell_cache, align 4
  %17 = call i32 @mempool_init_slab_pool(i32* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  %22 = call i32 @kfree(%struct.dm_bio_prison* %21)
  store %struct.dm_bio_prison* null, %struct.dm_bio_prison** %1, align 8
  br label %28

23:                                               ; preds = %9
  %24 = load i32, i32* @RB_ROOT, align 4
  %25 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  %26 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %2, align 8
  store %struct.dm_bio_prison* %27, %struct.dm_bio_prison** %1, align 8
  br label %28

28:                                               ; preds = %23, %20, %8
  %29 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %1, align 8
  ret %struct.dm_bio_prison* %29
}

declare dso_local %struct.dm_bio_prison* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dm_bio_prison*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
