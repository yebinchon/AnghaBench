; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_resume_phy_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_resume_phy_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i32, i32, i64 }

@FTDMAC020_CH_CSR_EN = common dso_local global i32 0, align 4
@PL080_CONFIG_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_phy_chan*)* @pl08x_resume_phy_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_resume_phy_chan(%struct.pl08x_phy_chan* %0) #0 {
  %2 = alloca %struct.pl08x_phy_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %2, align 8
  %4 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %5 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %10 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @FTDMAC020_CH_CSR_EN, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %18 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @writel(i32 %16, i32 %19)
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %23 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @PL080_CONFIG_HALT, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %32 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @writel(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %21, %8
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
