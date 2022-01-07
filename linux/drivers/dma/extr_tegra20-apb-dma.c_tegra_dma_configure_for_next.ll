; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_configure_for_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_configure_for_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.tegra_dma_sg_req = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@TEGRA_APBDMA_CHAN_STATUS = common dso_local global i32 0, align 4
@TEGRA_APBDMA_STATUS_ISE_EOC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"Skipping new configuration as interrupt is pending\0A\00", align 1
@TEGRA_APBDMA_CHAN_APBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_WCOUNT = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_CSR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CSR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*, %struct.tegra_dma_sg_req*)* @tegra_dma_configure_for_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_configure_for_next(%struct.tegra_dma_channel* %0, %struct.tegra_dma_sg_req* %1) #0 {
  %3 = alloca %struct.tegra_dma_channel*, align 8
  %4 = alloca %struct.tegra_dma_sg_req*, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %3, align 8
  store %struct.tegra_dma_sg_req* %1, %struct.tegra_dma_sg_req** %4, align 8
  %6 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %7 = call i32 @tegra_dma_pause(%struct.tegra_dma_channel* %6, i32 0)
  %8 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %9 = load i32, i32* @TEGRA_APBDMA_CHAN_STATUS, align 4
  %10 = call i64 @tdc_read(%struct.tegra_dma_channel* %8, i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @TEGRA_APBDMA_STATUS_ISE_EOC, align 8
  %13 = and i64 %11, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %17 = call i32 @tdc2dev(%struct.tegra_dma_channel* %16)
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %20 = call i32 @tegra_dma_resume(%struct.tegra_dma_channel* %19)
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %23 = load i32, i32* @TEGRA_APBDMA_CHAN_APBPTR, align 4
  %24 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @tdc_write(%struct.tegra_dma_channel* %22, i32 %23, i32 %27)
  %29 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %30 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBPTR, align 4
  %31 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @tdc_write(%struct.tegra_dma_channel* %29, i32 %30, i32 %34)
  %36 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %21
  %45 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %46 = load i32, i32* @TEGRA_APBDMA_CHAN_WCOUNT, align 4
  %47 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @tdc_write(%struct.tegra_dma_channel* %45, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %44, %21
  %53 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %54 = load i32, i32* @TEGRA_APBDMA_CHAN_CSR, align 4
  %55 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TEGRA_APBDMA_CSR_ENB, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @tdc_write(%struct.tegra_dma_channel* %53, i32 %54, i32 %60)
  %62 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %63 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %67 = call i32 @tegra_dma_resume(%struct.tegra_dma_channel* %66)
  br label %68

68:                                               ; preds = %52, %15
  ret void
}

declare dso_local i32 @tegra_dma_pause(%struct.tegra_dma_channel*, i32) #1

declare dso_local i64 @tdc_read(%struct.tegra_dma_channel*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_dma_channel*) #1

declare dso_local i32 @tegra_dma_resume(%struct.tegra_dma_channel*) #1

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
