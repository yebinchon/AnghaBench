; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_deferred_set_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_deferred_set_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_deferred_set = type { %struct.TYPE_2__*, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.dm_deferred_set* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DEFERRED_SET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_deferred_set* @dm_deferred_set_create() #0 {
  %1 = alloca %struct.dm_deferred_set*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_deferred_set*, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.dm_deferred_set* @kmalloc(i32 32, i32 %4)
  store %struct.dm_deferred_set* %5, %struct.dm_deferred_set** %3, align 8
  %6 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %7 = icmp ne %struct.dm_deferred_set* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.dm_deferred_set* null, %struct.dm_deferred_set** %1, align 8
  br label %50

9:                                                ; preds = %0
  %10 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %11 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %10, i32 0, i32 3
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %14 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %16 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %45, %9
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @DEFERRED_SET_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %23 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %24 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store %struct.dm_deferred_set* %22, %struct.dm_deferred_set** %29, align 8
  %30 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %31 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  %38 = getelementptr inbounds %struct.dm_deferred_set, %struct.dm_deferred_set* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %17

48:                                               ; preds = %17
  %49 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %3, align 8
  store %struct.dm_deferred_set* %49, %struct.dm_deferred_set** %1, align 8
  br label %50

50:                                               ; preds = %48, %8
  %51 = load %struct.dm_deferred_set*, %struct.dm_deferred_set** %1, align 8
  ret %struct.dm_deferred_set* %51
}

declare dso_local %struct.dm_deferred_set* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
