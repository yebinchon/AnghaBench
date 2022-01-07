; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idma64 = type { i32 }

@CFG = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@BLOCK = common dso_local global i32 0, align 4
@SRC_TRAN = common dso_local global i32 0, align 4
@DST_TRAN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@IDMA64_CFG_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idma64*)* @idma64_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idma64_off(%struct.idma64* %0) #0 {
  %2 = alloca %struct.idma64*, align 8
  %3 = alloca i16, align 2
  store %struct.idma64* %0, %struct.idma64** %2, align 8
  store i16 100, i16* %3, align 2
  %4 = load %struct.idma64*, %struct.idma64** %2, align 8
  %5 = load i32, i32* @CFG, align 4
  %6 = call i32 @dma_writel(%struct.idma64* %4, i32 %5, i32 0)
  %7 = load %struct.idma64*, %struct.idma64** %2, align 8
  %8 = load i32, i32* @XFER, align 4
  %9 = call i32 @MASK(i32 %8)
  %10 = load %struct.idma64*, %struct.idma64** %2, align 8
  %11 = getelementptr inbounds %struct.idma64, %struct.idma64* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @channel_clear_bit(%struct.idma64* %7, i32 %9, i32 %12)
  %14 = load %struct.idma64*, %struct.idma64** %2, align 8
  %15 = load i32, i32* @BLOCK, align 4
  %16 = call i32 @MASK(i32 %15)
  %17 = load %struct.idma64*, %struct.idma64** %2, align 8
  %18 = getelementptr inbounds %struct.idma64, %struct.idma64* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @channel_clear_bit(%struct.idma64* %14, i32 %16, i32 %19)
  %21 = load %struct.idma64*, %struct.idma64** %2, align 8
  %22 = load i32, i32* @SRC_TRAN, align 4
  %23 = call i32 @MASK(i32 %22)
  %24 = load %struct.idma64*, %struct.idma64** %2, align 8
  %25 = getelementptr inbounds %struct.idma64, %struct.idma64* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @channel_clear_bit(%struct.idma64* %21, i32 %23, i32 %26)
  %28 = load %struct.idma64*, %struct.idma64** %2, align 8
  %29 = load i32, i32* @DST_TRAN, align 4
  %30 = call i32 @MASK(i32 %29)
  %31 = load %struct.idma64*, %struct.idma64** %2, align 8
  %32 = getelementptr inbounds %struct.idma64, %struct.idma64* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @channel_clear_bit(%struct.idma64* %28, i32 %30, i32 %33)
  %35 = load %struct.idma64*, %struct.idma64** %2, align 8
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @MASK(i32 %36)
  %38 = load %struct.idma64*, %struct.idma64** %2, align 8
  %39 = getelementptr inbounds %struct.idma64, %struct.idma64* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @channel_clear_bit(%struct.idma64* %35, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %56, %1
  %43 = call i32 (...) @cpu_relax()
  br label %44

44:                                               ; preds = %42
  %45 = load %struct.idma64*, %struct.idma64** %2, align 8
  %46 = load i32, i32* @CFG, align 4
  %47 = call i32 @dma_readl(%struct.idma64* %45, i32 %46)
  %48 = load i32, i32* @IDMA64_CFG_DMA_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i16, i16* %3, align 2
  %53 = add i16 %52, -1
  store i16 %53, i16* %3, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %51, %44
  %57 = phi i1 [ false, %44 ], [ %55, %51 ]
  br i1 %57, label %42, label %58

58:                                               ; preds = %56
  ret void
}

declare dso_local i32 @dma_writel(%struct.idma64*, i32, i32) #1

declare dso_local i32 @channel_clear_bit(%struct.idma64*, i32, i32) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dma_readl(%struct.idma64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
