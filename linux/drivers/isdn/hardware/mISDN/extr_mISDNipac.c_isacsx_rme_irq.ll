; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isacsx_rme_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isacsx_rme_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ISACX_RSTAD = common dso_local global i32 0, align 4
@ISACX_RSTAD_VFR = common dso_local global i32 0, align 4
@ISACX_RSTAD_RDO = common dso_local global i32 0, align 4
@ISACX_RSTAD_CRC = common dso_local global i32 0, align 4
@ISACX_RSTAD_RAB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s: RSTAD %#x, dropped\0A\00", align 1
@ISACX_CMDRD = common dso_local global i32 0, align 4
@ISACX_CMDRD_RMC = common dso_local global i32 0, align 4
@ISACX_RBCLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: dchannel received %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isac_hw*)* @isacsx_rme_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isacsx_rme_irq(%struct.isac_hw* %0) #0 {
  %2 = alloca %struct.isac_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %2, align 8
  %5 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %6 = load i32, i32* @ISACX_RSTAD, align 4
  %7 = call i32 @ReadISAC(%struct.isac_hw* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ISACX_RSTAD_VFR, align 4
  %10 = load i32, i32* @ISACX_RSTAD_RDO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @ISACX_RSTAD_CRC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @ISACX_RSTAD_RAB, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %8, %15
  %17 = load i32, i32* @ISACX_RSTAD_VFR, align 4
  %18 = load i32, i32* @ISACX_RSTAD_CRC, align 4
  %19 = or i32 %17, %18
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %23 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %28 = load i32, i32* @ISACX_CMDRD, align 4
  %29 = load i32, i32* @ISACX_CMDRD_RMC, align 4
  %30 = call i32 @WriteISAC(%struct.isac_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %32 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %34)
  %36 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %37 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  br label %83

39:                                               ; preds = %1
  %40 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %41 = load i32, i32* @ISACX_RBCLD, align 4
  %42 = call i32 @ReadISAC(%struct.isac_hw* %40, i32 %41)
  %43 = and i32 %42, 31
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 32, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @isac_empty_fifo(%struct.isac_hw* %48, i32 %49)
  %51 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %52 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = icmp ne %struct.TYPE_4__* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %47
  %57 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %58 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %62 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @skb_trim(%struct.TYPE_4__* %60, i32 %67)
  %69 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %70 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %73 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %77)
  %79 = load %struct.isac_hw*, %struct.isac_hw** %2, align 8
  %80 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %79, i32 0, i32 0
  %81 = call i32 @recv_Dchannel(%struct.TYPE_5__* %80)
  br label %82

82:                                               ; preds = %56, %47
  br label %83

83:                                               ; preds = %82, %21
  ret void
}

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac_hw*, i32) #1

declare dso_local i32 @skb_trim(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @recv_Dchannel(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
