; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_get_new_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_get_new_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc_chan = type { i32 }

@MDC_CMDS_PROCESSED = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_DONE_MASK = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_INT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdc_chan*)* @mdc_get_new_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_get_new_events(%struct.mdc_chan* %0) #0 {
  %2 = alloca %struct.mdc_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mdc_chan* %0, %struct.mdc_chan** %2, align 8
  %8 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %9 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %10 = call i32 @mdc_chan_readl(%struct.mdc_chan* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT, align 4
  %13 = ashr i32 %11, %12
  %14 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %18 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %19 = call i32 @mdc_chan_readl(%struct.mdc_chan* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK, align 4
  %26 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* @MDC_CMDS_PROCESSED_INT_ACTIVE, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %41 = call i32 @mdc_chan_writel(%struct.mdc_chan* %38, i32 %39, i32 %40)
  %42 = load %struct.mdc_chan*, %struct.mdc_chan** %2, align 8
  %43 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %44 = call i32 @mdc_chan_readl(%struct.mdc_chan* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %16
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %16, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %7, align 4
  br label %69

62:                                               ; preds = %54
  %63 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @mdc_chan_readl(%struct.mdc_chan*, i32) #1

declare dso_local i32 @mdc_chan_writel(%struct.mdc_chan*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
