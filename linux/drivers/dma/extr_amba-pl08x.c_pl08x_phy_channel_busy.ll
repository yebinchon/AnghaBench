; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_channel_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_amba-pl08x.c_pl08x_phy_channel_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl08x_phy_chan = type { i64, i32, i64 }

@PL080_CONFIG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl08x_phy_chan*)* @pl08x_phy_channel_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl08x_phy_channel_busy(%struct.pl08x_phy_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl08x_phy_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.pl08x_phy_chan* %0, %struct.pl08x_phy_chan** %3, align 8
  %5 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %6 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %11 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %16 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %14, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.pl08x_phy_chan*, %struct.pl08x_phy_chan** %3, align 8
  %26 = getelementptr inbounds %struct.pl08x_phy_chan, %struct.pl08x_phy_chan* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PL080_CONFIG_ACTIVE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
