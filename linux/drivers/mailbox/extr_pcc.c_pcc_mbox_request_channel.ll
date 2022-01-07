; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_pcc_mbox_request_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_pcc.c_pcc_mbox_request_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mbox_chan = type { i64, i32, i32, %struct.mbox_client*, i32*, i64, i64 }
%struct.mbox_client = type { i64 }

@pcc_mbox_ctrl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"Channel not found for idx: %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TXDONE_BY_POLL = common dso_local global i64 0, align 8
@TXDONE_BY_ACK = common dso_local global i64 0, align 8
@pcc_doorbell_irq = common dso_local global i32* null, align 8
@pcc_mbox_irq = common dso_local global i32 0, align 4
@MBOX_IRQ_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to register PCC interrupt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbox_chan* @pcc_mbox_request_channel(%struct.mbox_client* %0, i32 %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mbox_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mbox_client* %0, %struct.mbox_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcc_mbox_ctrl, i32 0, i32 0), align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.mbox_chan* @get_pcc_channel(i32 %11)
  store %struct.mbox_chan* %12, %struct.mbox_chan** %7, align 8
  %13 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %14 = call i64 @IS_ERR(%struct.mbox_chan* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %18 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %17, i32 0, i32 3
  %19 = load %struct.mbox_client*, %struct.mbox_client** %18, align 8
  %20 = icmp ne %struct.mbox_client* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16, %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.mbox_chan* @ERR_PTR(i32 %26)
  store %struct.mbox_chan* %27, %struct.mbox_chan** %3, align 8
  br label %99

28:                                               ; preds = %16
  %29 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %30 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %29, i32 0, i32 1
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %34 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %36 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %38 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %40 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %41 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %40, i32 0, i32 3
  store %struct.mbox_client* %39, %struct.mbox_client** %41, align 8
  %42 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %43 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %42, i32 0, i32 2
  %44 = call i32 @init_completion(i32* %43)
  %45 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %46 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TXDONE_BY_POLL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %28
  %51 = load %struct.mbox_client*, %struct.mbox_client** %4, align 8
  %52 = getelementptr inbounds %struct.mbox_client, %struct.mbox_client* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64, i64* @TXDONE_BY_ACK, align 8
  %57 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %58 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %50, %28
  %60 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %61 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %60, i32 0, i32 1
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32*, i32** @pcc_doorbell_irq, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %59
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load i32*, i32** @pcc_doorbell_irq, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @pcc_mbox_irq, align 4
  %78 = load i32, i32* @MBOX_IRQ_NAME, align 4
  %79 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %80 = call i32 @devm_request_irq(%struct.device* %71, i32 %76, i32 %77, i32 0, i32 %78, %struct.mbox_chan* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %70
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load i32*, i32** @pcc_doorbell_irq, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err(%struct.device* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  %93 = call i32 @pcc_mbox_free_channel(%struct.mbox_chan* %92)
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.mbox_chan* @ERR_PTR(i32 %94)
  store %struct.mbox_chan* %95, %struct.mbox_chan** %7, align 8
  br label %96

96:                                               ; preds = %84, %70
  br label %97

97:                                               ; preds = %96, %59
  %98 = load %struct.mbox_chan*, %struct.mbox_chan** %7, align 8
  store %struct.mbox_chan* %98, %struct.mbox_chan** %3, align 8
  br label %99

99:                                               ; preds = %97, %21
  %100 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %100
}

declare dso_local %struct.mbox_chan* @get_pcc_channel(i32) #1

declare dso_local i64 @IS_ERR(%struct.mbox_chan*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.mbox_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pcc_mbox_free_channel(%struct.mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
