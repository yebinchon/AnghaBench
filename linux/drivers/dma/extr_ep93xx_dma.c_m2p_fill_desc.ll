; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2p_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32, i64, i32 }
%struct.ep93xx_dma_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"M2P: empty descriptor list\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@M2P_MAXCNT0 = common dso_local global i64 0, align 8
@M2P_BASE0 = common dso_local global i64 0, align 8
@M2P_MAXCNT1 = common dso_local global i64 0, align 8
@M2P_BASE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2p_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2p_fill_desc(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca %struct.ep93xx_dma_desc*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %5 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %6 = call %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan* %5)
  store %struct.ep93xx_dma_desc* %6, %struct.ep93xx_dma_desc** %3, align 8
  %7 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %8 = icmp ne %struct.ep93xx_dma_desc* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %11 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %10)
  %12 = call i32 @dev_warn(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %71

13:                                               ; preds = %1
  %14 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %14, i32 0, i32 2
  %16 = call i64 @ep93xx_dma_chan_direction(i32* %15)
  %17 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %21 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %25 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %27
  %33 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %34 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %37 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @M2P_MAXCNT0, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @M2P_BASE0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  br label %66

49:                                               ; preds = %27
  %50 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %51 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %54 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @M2P_MAXCNT1, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %61 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @M2P_BASE1, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  br label %66

66:                                               ; preds = %49, %32
  %67 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %68 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %66, %9
  ret void
}

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @ep93xx_dma_chan_direction(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
