; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-dsp.c_imx_dsp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/imx/extr_imx-dsp.c_imx_dsp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.imx_dsp_chan = type { i32 }
%struct.imx_dsp_ipc = type { %struct.imx_dsp_chan* }

@DSP_MU_CHAN_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_dsp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_dsp_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imx_dsp_chan*, align 8
  %4 = alloca %struct.imx_dsp_ipc*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.imx_dsp_ipc* @dev_get_drvdata(i32* %7)
  store %struct.imx_dsp_ipc* %8, %struct.imx_dsp_ipc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DSP_MU_CHAN_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.imx_dsp_ipc*, %struct.imx_dsp_ipc** %4, align 8
  %15 = getelementptr inbounds %struct.imx_dsp_ipc, %struct.imx_dsp_ipc* %14, i32 0, i32 0
  %16 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %16, i64 %18
  store %struct.imx_dsp_chan* %19, %struct.imx_dsp_chan** %3, align 8
  %20 = load %struct.imx_dsp_chan*, %struct.imx_dsp_chan** %3, align 8
  %21 = getelementptr inbounds %struct.imx_dsp_chan, %struct.imx_dsp_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mbox_free_channel(i32 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %9

27:                                               ; preds = %9
  ret i32 0
}

declare dso_local %struct.imx_dsp_ipc* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mbox_free_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
