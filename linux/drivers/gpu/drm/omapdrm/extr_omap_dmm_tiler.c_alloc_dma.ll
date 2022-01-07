; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmm_txn = type { i64, i8*, %struct.refill_engine* }
%struct.refill_engine = type { i8* }

@REFILL_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dmm_txn*, i64, i64*)* @alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_dma(%struct.dmm_txn* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.dmm_txn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.refill_engine*, align 8
  store %struct.dmm_txn* %0, %struct.dmm_txn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %10 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %9, i32 0, i32 2
  %11 = load %struct.refill_engine*, %struct.refill_engine** %10, align 8
  store %struct.refill_engine* %11, %struct.refill_engine** %8, align 8
  %12 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %13 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @round_up(i64 %14, i32 16)
  %16 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %17 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %19 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = call i64 @round_up(i64 %21, i32 16)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %25 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %27 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %30 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %35 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %40 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 %38
  store i8* %42, i8** %40, align 8
  %43 = load %struct.dmm_txn*, %struct.dmm_txn** %4, align 8
  %44 = getelementptr inbounds %struct.dmm_txn, %struct.dmm_txn* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.refill_engine*, %struct.refill_engine** %8, align 8
  %47 = getelementptr inbounds %struct.refill_engine, %struct.refill_engine* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i32, i32* @REFILL_BUFFER_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp sgt i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load i8*, i8** %7, align 8
  ret i8* %57
}

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
