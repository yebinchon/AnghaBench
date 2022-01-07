; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_cdma_hw.c_cdma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_cdma_hw.c_cdma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64 }
%struct.host1x_channel = type { i32 }

@HOST1X_CHANNEL_DMACTRL_DMASTOP = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMACTRL = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMASTART = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMAPUT = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMAEND = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMACTRL_DMAGETRST = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMACTRL_DMAINITGET = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMAEND_HI = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMAPUT_HI = common dso_local global i32 0, align 4
@HOST1X_CHANNEL_DMASTART_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_cdma*)* @cdma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdma_start(%struct.host1x_cdma* %0) #0 {
  %2 = alloca %struct.host1x_cdma*, align 8
  %3 = alloca %struct.host1x_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %2, align 8
  %6 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %7 = call %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma* %6)
  store %struct.host1x_channel* %7, %struct.host1x_channel** %3, align 8
  %8 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %63

13:                                               ; preds = %1
  %14 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %15 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %19 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %21 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %25 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4
  store i64 %28, i64* %5, align 8
  %29 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %30 = load i32, i32* @HOST1X_CHANNEL_DMACTRL_DMASTOP, align 4
  %31 = load i32, i32* @HOST1X_CHANNEL_DMACTRL, align 4
  %32 = call i32 @host1x_ch_writel(%struct.host1x_channel* %29, i32 %30, i32 %31)
  %33 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @lower_32_bits(i64 %34)
  %36 = load i32, i32* @HOST1X_CHANNEL_DMASTART, align 4
  %37 = call i32 @host1x_ch_writel(%struct.host1x_channel* %33, i32 %35, i32 %36)
  %38 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %39 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %40 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HOST1X_CHANNEL_DMAPUT, align 4
  %44 = call i32 @host1x_ch_writel(%struct.host1x_channel* %38, i32 %42, i32 %43)
  %45 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @lower_32_bits(i64 %46)
  %48 = load i32, i32* @HOST1X_CHANNEL_DMAEND, align 4
  %49 = call i32 @host1x_ch_writel(%struct.host1x_channel* %45, i32 %47, i32 %48)
  %50 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %51 = load i32, i32* @HOST1X_CHANNEL_DMACTRL_DMASTOP, align 4
  %52 = load i32, i32* @HOST1X_CHANNEL_DMACTRL_DMAGETRST, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @HOST1X_CHANNEL_DMACTRL_DMAINITGET, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @HOST1X_CHANNEL_DMACTRL, align 4
  %57 = call i32 @host1x_ch_writel(%struct.host1x_channel* %50, i32 %55, i32 %56)
  %58 = load %struct.host1x_channel*, %struct.host1x_channel** %3, align 8
  %59 = load i32, i32* @HOST1X_CHANNEL_DMACTRL, align 4
  %60 = call i32 @host1x_ch_writel(%struct.host1x_channel* %58, i32 0, i32 %59)
  %61 = load %struct.host1x_cdma*, %struct.host1x_cdma** %2, align 8
  %62 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.host1x_channel* @cdma_to_channel(%struct.host1x_cdma*) #1

declare dso_local i32 @host1x_ch_writel(%struct.host1x_channel*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
