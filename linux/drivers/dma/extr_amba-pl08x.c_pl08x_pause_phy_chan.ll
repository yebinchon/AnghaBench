; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_pause_phy_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_pause_phy_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i32, i32, i32, i64 }

@FTDMAC020_CH_CSR_EN = common dso_local global i32 0, align 4
@PL080_CONFIG_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pl08x: channel%u timeout waiting for pause\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl08x_phy_chan*)* @pl08x_pause_phy_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl08x_pause_phy_chan(%struct.pl08x_phy_chan* %0) #0 {
  %2 = alloca %struct.pl08x_phy_chan*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %2, align 8
  %5 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %6 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %11 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @readl(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @FTDMAC020_CH_CSR_EN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %20 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @writel(i32 %18, i32 %21)
  br label %58

23:                                               ; preds = %1
  %24 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %25 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @readl(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @PL080_CONFIG_HALT, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %33 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel(i32 %31, i32 %34)
  store i32 1000, i32* %4, align 4
  br label %36

36:                                               ; preds = %46, %23
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %41 = call i64 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %49

44:                                               ; preds = %39
  %45 = call i32 @udelay(i32 1)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %4, align 4
  br label %36

49:                                               ; preds = %43, %36
  %50 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %51 = call i64 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %2, align 8
  %55 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %9, %53, %49
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i64 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
