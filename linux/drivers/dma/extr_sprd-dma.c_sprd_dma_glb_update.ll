; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_glb_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_glb_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_dma_dev*, i32, i32, i32)* @sprd_dma_glb_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_dma_glb_update(%struct.sprd_dma_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sprd_dma_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sprd_dma_dev* %0, %struct.sprd_dma_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %5, align 8
  %25 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @writel(i32 %23, i32 %28)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
