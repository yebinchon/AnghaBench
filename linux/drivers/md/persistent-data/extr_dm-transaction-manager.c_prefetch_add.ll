; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_prefetch_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c_prefetch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prefetch_set = type { i64*, i32 }

@PREFETCH_SENTINEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prefetch_set*, i64)* @prefetch_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_add(%struct.prefetch_set* %0, i64 %1) #0 {
  %3 = alloca %struct.prefetch_set*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.prefetch_set* %0, %struct.prefetch_set** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @prefetch_hash(i64 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %9 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %12 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PREFETCH_SENTINEL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %23 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %21, i64* %27, align 8
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.prefetch_set*, %struct.prefetch_set** %3, align 8
  %30 = getelementptr inbounds %struct.prefetch_set, %struct.prefetch_set* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @prefetch_hash(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
