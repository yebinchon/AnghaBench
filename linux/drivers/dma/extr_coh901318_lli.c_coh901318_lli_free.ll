; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318_lli.c_coh901318_lli_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_pool = type { i32, i32 }
%struct.coh901318_lli = type { i32, %struct.coh901318_lli*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coh901318_lli_free(%struct.coh901318_pool* %0, %struct.coh901318_lli** %1) #0 {
  %3 = alloca %struct.coh901318_pool*, align 8
  %4 = alloca %struct.coh901318_lli**, align 8
  %5 = alloca %struct.coh901318_lli*, align 8
  %6 = alloca %struct.coh901318_lli*, align 8
  store %struct.coh901318_pool* %0, %struct.coh901318_pool** %3, align 8
  store %struct.coh901318_lli** %1, %struct.coh901318_lli*** %4, align 8
  %7 = load %struct.coh901318_lli**, %struct.coh901318_lli*** %4, align 8
  %8 = icmp eq %struct.coh901318_lli** %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %55

10:                                               ; preds = %2
  %11 = load %struct.coh901318_lli**, %struct.coh901318_lli*** %4, align 8
  %12 = load %struct.coh901318_lli*, %struct.coh901318_lli** %11, align 8
  store %struct.coh901318_lli* %12, %struct.coh901318_lli** %5, align 8
  %13 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %14 = icmp eq %struct.coh901318_lli* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %55

16:                                               ; preds = %10
  %17 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %18 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  br label %20

20:                                               ; preds = %25, %16
  %21 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %22 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %27 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %26, i32 0, i32 1
  %28 = load %struct.coh901318_lli*, %struct.coh901318_lli** %27, align 8
  store %struct.coh901318_lli* %28, %struct.coh901318_lli** %6, align 8
  %29 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %30 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %33 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %34 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_pool_free(i32 %31, %struct.coh901318_lli* %32, i32 %35)
  %37 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %38 = call i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool* %37, i32 -1)
  %39 = load %struct.coh901318_lli*, %struct.coh901318_lli** %6, align 8
  store %struct.coh901318_lli* %39, %struct.coh901318_lli** %5, align 8
  br label %20

40:                                               ; preds = %20
  %41 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %42 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %45 = load %struct.coh901318_lli*, %struct.coh901318_lli** %5, align 8
  %46 = getelementptr inbounds %struct.coh901318_lli, %struct.coh901318_lli* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dma_pool_free(i32 %43, %struct.coh901318_lli* %44, i32 %47)
  %49 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %50 = call i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool* %49, i32 -1)
  %51 = load %struct.coh901318_pool*, %struct.coh901318_pool** %3, align 8
  %52 = getelementptr inbounds %struct.coh901318_pool, %struct.coh901318_pool* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.coh901318_lli**, %struct.coh901318_lli*** %4, align 8
  store %struct.coh901318_lli* null, %struct.coh901318_lli** %54, align 8
  br label %55

55:                                               ; preds = %40, %15, %9
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.coh901318_lli*, i32) #1

declare dso_local i32 @DEBUGFS_POOL_COUNTER_ADD(%struct.coh901318_pool*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
