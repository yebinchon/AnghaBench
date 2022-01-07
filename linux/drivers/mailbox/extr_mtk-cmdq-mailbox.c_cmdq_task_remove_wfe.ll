; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_task_remove_wfe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mtk-cmdq-mailbox.c_cmdq_task_remove_wfe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdq_task = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CMDQ_JUMP_BY_OFFSET = common dso_local global i64 0, align 8
@CMDQ_JUMP_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmdq_task*)* @cmdq_task_remove_wfe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_task_remove_wfe(%struct.cmdq_task* %0) #0 {
  %2 = alloca %struct.cmdq_task*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.cmdq_task* %0, %struct.cmdq_task** %2, align 8
  %6 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %7 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  %12 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %13 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %4, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %19 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %22 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_sync_single_for_cpu(%struct.device* %17, i32 %20, i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %54, %1
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %31 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @CMDQ_NUM_CMD(%struct.TYPE_6__* %32)
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @cmdq_command_is_wfe(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load i64, i64* @CMDQ_JUMP_BY_OFFSET, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 32
  %47 = load i32, i32* @CMDQ_JUMP_PASS, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %43, %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %28

57:                                               ; preds = %28
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %60 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cmdq_task*, %struct.cmdq_task** %2, align 8
  %63 = getelementptr inbounds %struct.cmdq_task, %struct.cmdq_task* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @dma_sync_single_for_device(%struct.device* %58, i32 %61, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @CMDQ_NUM_CMD(%struct.TYPE_6__*) #1

declare dso_local i64 @cmdq_command_is_wfe(i32) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
