; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_ipac_chip_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_ipac_chip_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.inf_hw.0*, i32, i32)* }
%struct.inf_hw.0 = type opaque

@IPAC_POTA2 = common dso_local global i32 0, align 4
@IPAC_CONF = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inf_hw*)* @ipac_chip_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipac_chip_reset(%struct.inf_hw* %0) #0 {
  %2 = alloca %struct.inf_hw*, align 8
  store %struct.inf_hw* %0, %struct.inf_hw** %2, align 8
  %3 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %4 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %5, align 8
  %7 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %8 = bitcast %struct.inf_hw* %7 to %struct.inf_hw.0*
  %9 = load i32, i32* @IPAC_POTA2, align 4
  %10 = call i32 %6(%struct.inf_hw.0* %8, i32 %9, i32 32)
  %11 = call i32 @mdelay(i32 5)
  %12 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %13 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %14, align 8
  %16 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %17 = bitcast %struct.inf_hw* %16 to %struct.inf_hw.0*
  %18 = load i32, i32* @IPAC_POTA2, align 4
  %19 = call i32 %15(%struct.inf_hw.0* %17, i32 %18, i32 0)
  %20 = call i32 @mdelay(i32 5)
  %21 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %22 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %23, align 8
  %25 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %26 = bitcast %struct.inf_hw* %25 to %struct.inf_hw.0*
  %27 = load i32, i32* @IPAC_CONF, align 4
  %28 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %29 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %24(%struct.inf_hw.0* %26, i32 %27, i32 %31)
  %33 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %34 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32 (%struct.inf_hw.0*, i32, i32)*, i32 (%struct.inf_hw.0*, i32, i32)** %35, align 8
  %37 = load %struct.inf_hw*, %struct.inf_hw** %2, align 8
  %38 = bitcast %struct.inf_hw* %37 to %struct.inf_hw.0*
  %39 = load i32, i32* @IPAC_MASK, align 4
  %40 = call i32 %36(%struct.inf_hw.0* %38, i32 %39, i32 192)
  ret void
}

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
