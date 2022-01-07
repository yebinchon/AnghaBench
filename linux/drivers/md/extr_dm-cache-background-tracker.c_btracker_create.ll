; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_btracker_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-background-tracker.c_btracker_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.background_tracker = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"couldn't create background_tracker\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@bt_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"couldn't create mempool for background work items\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.background_tracker* @btracker_create(i32 %0) #0 {
  %2 = alloca %struct.background_tracker*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.background_tracker*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.background_tracker* @kmalloc(i32 32, i32 %5)
  store %struct.background_tracker* %6, %struct.background_tracker** %4, align 8
  %7 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %8 = icmp ne %struct.background_tracker* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.background_tracker* null, %struct.background_tracker** %2, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %14 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %16 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %15, i32 0, i32 7
  %17 = call i32 @atomic_set(i32* %16, i32 0)
  %18 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %19 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %18, i32 0, i32 6
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %22 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %21, i32 0, i32 5
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %25 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %28 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* @RB_ROOT, align 4
  %31 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %32 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @bt_work, align 4
  %34 = call i32 @KMEM_CACHE(i32 %33, i32 0)
  %35 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %36 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %38 = getelementptr inbounds %struct.background_tracker, %struct.background_tracker* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %11
  %42 = call i32 @DMERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  %44 = call i32 @kfree(%struct.background_tracker* %43)
  store %struct.background_tracker* null, %struct.background_tracker** %4, align 8
  br label %45

45:                                               ; preds = %41, %11
  %46 = load %struct.background_tracker*, %struct.background_tracker** %4, align 8
  store %struct.background_tracker* %46, %struct.background_tracker** %2, align 8
  br label %47

47:                                               ; preds = %45, %9
  %48 = load %struct.background_tracker*, %struct.background_tracker** %2, align 8
  ret %struct.background_tracker* %48
}

declare dso_local %struct.background_tracker* @kmalloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @KMEM_CACHE(i32, i32) #1

declare dso_local i32 @kfree(%struct.background_tracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
