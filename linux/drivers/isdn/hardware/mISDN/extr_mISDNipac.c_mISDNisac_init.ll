; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNisac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNisac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MAX_DFRAME_LEN_L1 = common dso_local global i32 0, align 4
@isac_ph_state_bh = common dso_local global i32 0, align 4
@isac_l1hw = common dso_local global i32 0, align 4
@isac_init = common dso_local global i32 0, align 4
@isac_release = common dso_local global i32 0, align 4
@isac_ctrl = common dso_local global i32 0, align 4
@open_dchannel = common dso_local global i32 0, align 4
@ISDN_P_TE_S0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDNisac_init(%struct.isac_hw* %0, i8* %1) #0 {
  %3 = alloca %struct.isac_hw*, align 8
  %4 = alloca i8*, align 8
  store %struct.isac_hw* %0, %struct.isac_hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %6 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %5, i32 0, i32 0
  %7 = load i32, i32* @MAX_DFRAME_LEN_L1, align 4
  %8 = load i32, i32* @isac_ph_state_bh, align 4
  %9 = call i32 @mISDN_initdchannel(%struct.TYPE_6__* %6, i32 %7, i32 %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %12 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i8* %10, i8** %13, align 8
  %14 = load i32, i32* @isac_l1hw, align 4
  %15 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %16 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 8
  %20 = load i32, i32* @isac_init, align 4
  %21 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %22 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @isac_release, align 4
  %24 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %25 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @isac_ctrl, align 4
  %27 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %28 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @open_dchannel, align 4
  %30 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %31 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @ISDN_P_TE_S0, align 4
  %33 = shl i32 1, %32
  %34 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %35 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %39 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 2, i32* %41, align 4
  ret i32 0
}

declare dso_local i32 @mISDN_initdchannel(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
