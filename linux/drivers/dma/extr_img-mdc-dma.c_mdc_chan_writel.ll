; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_chan_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_chan_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc_chan = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdc_chan*, i64, i64)* @mdc_chan_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc_chan_writel(%struct.mdc_chan* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mdc_chan*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mdc_chan* %0, %struct.mdc_chan** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.mdc_chan*, %struct.mdc_chan** %4, align 8
  %8 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.mdc_chan*, %struct.mdc_chan** %4, align 8
  %12 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 64
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mdc_writel(i32 %9, i64 %10, i64 %17)
  ret void
}

declare dso_local i32 @mdc_writel(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
