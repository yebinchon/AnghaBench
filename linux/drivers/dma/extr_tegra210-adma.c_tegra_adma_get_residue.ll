; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_get_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_get_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_adma_chan = type { i32, i32, %struct.tegra_adma_desc* }
%struct.tegra_adma_desc = type { i32, i32, i32 }

@ADMA_CH_XFER_STATUS_COUNT_MASK = common dso_local global i32 0, align 4
@ADMA_CH_XFER_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_adma_chan*)* @tegra_adma_get_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_get_residue(%struct.tegra_adma_chan* %0) #0 {
  %2 = alloca %struct.tegra_adma_chan*, align 8
  %3 = alloca %struct.tegra_adma_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_adma_chan* %0, %struct.tegra_adma_chan** %2, align 8
  %7 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %7, i32 0, i32 2
  %9 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %8, align 8
  store %struct.tegra_adma_desc* %9, %struct.tegra_adma_desc** %3, align 8
  %10 = load i32, i32* @ADMA_CH_XFER_STATUS_COUNT_MASK, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %13 = load i32, i32* @ADMA_CH_XFER_STATUS, align 4
  %14 = call i32 @tdma_ch_read(%struct.tegra_adma_chan* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %22, %25
  %27 = add i32 %21, %26
  %28 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %42

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %35 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub i32 %33, %36
  %38 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %39 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %32, %20
  %43 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = urem i32 %45, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %2, align 8
  %52 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.tegra_adma_desc*, %struct.tegra_adma_desc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_adma_desc, %struct.tegra_adma_desc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul i32 %56, %59
  %61 = sub i32 %55, %60
  ret i32 %61
}

declare dso_local i32 @tdma_ch_read(%struct.tegra_adma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
