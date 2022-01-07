; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_fill_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_fill_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i32, i64 }
%struct.ep93xx_dma_desc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"M2M: empty descriptor list\0A\00", align 1
@M2M_SAR_BASE0 = common dso_local global i64 0, align 8
@M2M_DAR_BASE0 = common dso_local global i64 0, align 8
@M2M_BCR0 = common dso_local global i64 0, align 8
@M2M_SAR_BASE1 = common dso_local global i64 0, align 8
@M2M_DAR_BASE1 = common dso_local global i64 0, align 8
@M2M_BCR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2m_fill_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2m_fill_desc(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca %struct.ep93xx_dma_desc*, align 8
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %4 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %5 = call %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan* %4)
  store %struct.ep93xx_dma_desc* %5, %struct.ep93xx_dma_desc** %3, align 8
  %6 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %7 = icmp ne %struct.ep93xx_dma_desc* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %10 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %9)
  %11 = call i32 @dev_warn(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %14 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %19 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %22 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @M2M_SAR_BASE0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %28 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @M2M_DAR_BASE0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %37 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %40 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @M2M_BCR0, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %73

45:                                               ; preds = %12
  %46 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %47 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %50 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @M2M_SAR_BASE1, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %56 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %59 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @M2M_DAR_BASE1, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %3, align 8
  %65 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %68 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @M2M_BCR1, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  br label %73

73:                                               ; preds = %45, %17
  %74 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %75 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = xor i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %73, %8
  ret void
}

declare dso_local %struct.ep93xx_dma_desc* @ep93xx_dma_get_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
