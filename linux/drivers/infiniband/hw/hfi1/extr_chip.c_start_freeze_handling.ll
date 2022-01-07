; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_start_freeze_handling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_start_freeze_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.send_context* }
%struct.send_context = type { i32 }

@FREEZE_SELF = common dso_local global i32 0, align 4
@CCE_CTRL = common dso_local global i32 0, align 4
@CCE_CTRL_SPC_FREEZE_SMASK = common dso_local global i32 0, align 4
@HFI1_FROZEN = common dso_local global i32 0, align 4
@FREEZE_LINK_DOWN = common dso_local global i32 0, align 4
@SCF_FROZEN = common dso_local global i32 0, align 4
@SCF_HALTED = common dso_local global i32 0, align 4
@SCF_LINK_DOWN = common dso_local global i32 0, align 4
@SCF_ENABLED = common dso_local global i32 0, align 4
@_HFI1_EVENT_FROZEN_BIT = common dso_local global i32 0, align 4
@FREEZE_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Aborted freeze recovery. Please REBOOT system\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_freeze_handling(%struct.hfi1_pportdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca %struct.send_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %10 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %9, i32 0, i32 2
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  store %struct.hfi1_devdata* %11, %struct.hfi1_devdata** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @FREEZE_SELF, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %18 = load i32, i32* @CCE_CTRL, align 4
  %19 = load i32, i32* @CCE_CTRL_SPC_FREEZE_SMASK, align 4
  %20 = call i32 @write_csr(%struct.hfi1_devdata* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @HFI1_FROZEN, align 4
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %24 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FREEZE_LINK_DOWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @sdma_freeze_notify(%struct.hfi1_devdata* %27, i32 %34)
  %36 = load i32, i32* @SCF_FROZEN, align 4
  %37 = load i32, i32* @SCF_HALTED, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @FREEZE_LINK_DOWN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %21
  %44 = load i32, i32* @SCF_LINK_DOWN, align 4
  br label %46

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  %48 = or i32 %38, %47
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %78, %46
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %52 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.send_context*, %struct.send_context** %62, align 8
  store %struct.send_context* %63, %struct.send_context** %6, align 8
  %64 = load %struct.send_context*, %struct.send_context** %6, align 8
  %65 = icmp ne %struct.send_context* %64, null
  br i1 %65, label %66, label %77

66:                                               ; preds = %55
  %67 = load %struct.send_context*, %struct.send_context** %6, align 8
  %68 = getelementptr inbounds %struct.send_context, %struct.send_context* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SCF_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.send_context*, %struct.send_context** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @sc_stop(%struct.send_context* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %66, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %49

81:                                               ; preds = %49
  %82 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %83 = load i32, i32* @_HFI1_EVENT_FROZEN_BIT, align 4
  %84 = call i32 @hfi1_set_uevent_bits(%struct.hfi1_pportdata* %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @FREEZE_ABORT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %91 = call i32 @dd_dev_err(%struct.hfi1_devdata* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %99

92:                                               ; preds = %81
  %93 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %94 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %3, align 8
  %97 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %96, i32 0, i32 0
  %98 = call i32 @queue_work(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %92, %89
  ret void
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @sdma_freeze_notify(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @sc_stop(%struct.send_context*, i32) #1

declare dso_local i32 @hfi1_set_uevent_bits(%struct.hfi1_pportdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
