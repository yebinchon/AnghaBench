; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_prefetch_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_prefetch_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prefetch_set = type { i64*, i32 }
%struct.dm_block_manager = type { i32 }

@PREFETCH_SIZE = common dso_local global i32 0, align 4
@PREFETCH_SENTINEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prefetch_set*, %struct.dm_block_manager*)* @prefetch_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_issue(%struct.prefetch_set* %0, %struct.dm_block_manager* %1) #0 {
  %3 = alloca %struct.prefetch_set*, align 8
  %4 = alloca %struct.dm_block_manager*, align 8
  %5 = alloca i32, align 4
  store %struct.prefetch_set* %0, %struct.prefetch_set** %3, align 8
  store %struct.dm_block_manager* %1, %struct.dm_block_manager** %4, align 8
  %6 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %7 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %41, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PREFETCH_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %9
  %14 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %15 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PREFETCH_SENTINEL, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %13
  %24 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  %25 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %26 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dm_bm_prefetch(%struct.dm_block_manager* %24, i64 %31)
  %33 = load i64, i64* @PREFETCH_SENTINEL, align 8
  %34 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %35 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %23, %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %9

44:                                               ; preds = %9
  %45 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %46 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dm_bm_prefetch(%struct.dm_block_manager*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
