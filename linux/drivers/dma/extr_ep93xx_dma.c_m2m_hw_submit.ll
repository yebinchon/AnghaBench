; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_m2m_hw_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep93xx_dma_chan = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ep93xx_dma_data* }
%struct.ep93xx_dma_data = type { i32 }

@M2M_CONTROL = common dso_local global i64 0, align 8
@M2M_CONTROL_PW_MASK = common dso_local global i32 0, align 4
@M2M_CONTROL_DONEINT = common dso_local global i32 0, align 4
@M2M_CONTROL_NFBINT = common dso_local global i32 0, align 4
@M2M_CONTROL_ENABLE = common dso_local global i32 0, align 4
@M2M_CONTROL_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ep93xx_dma_chan*)* @m2m_hw_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m2m_hw_submit(%struct.ep93xx_dma_chan* %0) #0 {
  %2 = alloca %struct.ep93xx_dma_chan*, align 8
  %3 = alloca %struct.ep93xx_dma_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ep93xx_dma_chan* %0, %struct.ep93xx_dma_chan** %2, align 8
  %5 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %6 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %7, align 8
  store %struct.ep93xx_dma_data* %8, %struct.ep93xx_dma_data** %3, align 8
  %9 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @M2M_CONTROL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @M2M_CONTROL_PW_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %20 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %25 = call i32 @m2m_fill_desc(%struct.ep93xx_dma_chan* %24)
  %26 = load i32, i32* @M2M_CONTROL_DONEINT, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %30 = call i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %34 = call i32 @m2m_fill_desc(%struct.ep93xx_dma_chan* %33)
  %35 = load i32, i32* @M2M_CONTROL_NFBINT, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %1
  %39 = load i32, i32* @M2M_CONTROL_ENABLE, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @M2M_CONTROL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %3, align 8
  %50 = icmp ne %struct.ep93xx_dma_data* %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @M2M_CONTROL_START, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %2, align 8
  %57 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @M2M_CONTROL, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writel(i32 %55, i64 %60)
  br label %62

62:                                               ; preds = %51, %38
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @m2m_fill_desc(%struct.ep93xx_dma_chan*) #1

declare dso_local i64 @ep93xx_dma_advance_active(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
