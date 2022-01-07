; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_pdma_phy = type { i32, i64 }

@DDADR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_pdma_phy*, i32)* @set_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_desc(%struct.mmp_pdma_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_pdma_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mmp_pdma_phy* %0, %struct.mmp_pdma_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %7 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = shl i32 %8, 4
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @DDADR, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %3, align 8
  %15 = getelementptr inbounds %struct.mmp_pdma_phy, %struct.mmp_pdma_phy* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
