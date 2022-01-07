; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_set_multichannel_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_set_multichannel_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32 }

@OHCI1394_IRMultiChanMaskHiClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoClear = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskHiSet = common dso_local global i32 0, align 4
@OHCI1394_IRMultiChanMaskLoSet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_ohci*, i32)* @set_multichannel_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multichannel_mask(%struct.fw_ohci* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 32
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %11 = load i32, i32* @OHCI1394_IRMultiChanMaskHiClear, align 4
  %12 = load i32, i32* %5, align 4
  %13 = xor i32 %12, -1
  %14 = call i32 @reg_write(%struct.fw_ohci* %10, i32 %11, i32 %13)
  %15 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %16 = load i32, i32* @OHCI1394_IRMultiChanMaskLoClear, align 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = call i32 @reg_write(%struct.fw_ohci* %15, i32 %16, i32 %18)
  %20 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %21 = load i32, i32* @OHCI1394_IRMultiChanMaskHiSet, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @reg_write(%struct.fw_ohci* %20, i32 %21, i32 %22)
  %24 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %25 = load i32, i32* @OHCI1394_IRMultiChanMaskLoSet, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @reg_write(%struct.fw_ohci* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %30 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
