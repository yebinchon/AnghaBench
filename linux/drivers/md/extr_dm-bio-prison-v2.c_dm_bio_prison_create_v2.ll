; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_bio_prison_create_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c_dm_bio_prison_create_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32, i32, i32, %struct.workqueue_struct* }
%struct.workqueue_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIN_CELLS = common dso_local global i32 0, align 4
@_cell_cache = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_bio_prison_v2* @dm_bio_prison_create_v2(%struct.workqueue_struct* %0) #0 {
  %2 = alloca %struct.dm_bio_prison_v2*, align 8
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca %struct.dm_bio_prison_v2*, align 8
  %5 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dm_bio_prison_v2* @kzalloc(i32 24, i32 %6)
  store %struct.dm_bio_prison_v2* %7, %struct.dm_bio_prison_v2** %4, align 8
  %8 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %9 = icmp ne %struct.dm_bio_prison_v2* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.dm_bio_prison_v2* null, %struct.dm_bio_prison_v2** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %13 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %14 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %13, i32 0, i32 3
  store %struct.workqueue_struct* %12, %struct.workqueue_struct** %14, align 8
  %15 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %16 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %19 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %18, i32 0, i32 1
  %20 = load i32, i32* @MIN_CELLS, align 4
  %21 = load i32, i32* @_cell_cache, align 4
  %22 = call i32 @mempool_init_slab_pool(i32* %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %11
  %26 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %27 = call i32 @kfree(%struct.dm_bio_prison_v2* %26)
  store %struct.dm_bio_prison_v2* null, %struct.dm_bio_prison_v2** %2, align 8
  br label %33

28:                                               ; preds = %11
  %29 = load i32, i32* @RB_ROOT, align 4
  %30 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  %31 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %4, align 8
  store %struct.dm_bio_prison_v2* %32, %struct.dm_bio_prison_v2** %2, align 8
  br label %33

33:                                               ; preds = %28, %25, %10
  %34 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %2, align 8
  ret %struct.dm_bio_prison_v2* %34
}

declare dso_local %struct.dm_bio_prison_v2* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mempool_init_slab_pool(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dm_bio_prison_v2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
