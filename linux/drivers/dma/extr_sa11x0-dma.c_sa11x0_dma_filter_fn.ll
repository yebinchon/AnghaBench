; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_filter_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sa11x0-dma.c_sa11x0_dma_filter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sa11x0_dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @sa11x0_dma_filter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa11x0_dma_filter_fn(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sa11x0_dma_chan*, align 8
  %6 = alloca i8*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.sa11x0_dma_chan* @to_sa11x0_dma_chan(%struct.dma_chan* %7)
  store %struct.sa11x0_dma_chan* %8, %struct.sa11x0_dma_chan** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load %struct.sa11x0_dma_chan*, %struct.sa11x0_dma_chan** %5, align 8
  %11 = getelementptr inbounds %struct.sa11x0_dma_chan, %struct.sa11x0_dma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strcmp(i32 %12, i8* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.sa11x0_dma_chan* @to_sa11x0_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
