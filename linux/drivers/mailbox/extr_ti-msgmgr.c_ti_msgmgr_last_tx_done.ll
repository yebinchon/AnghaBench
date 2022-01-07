; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_last_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_last_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.TYPE_2__*, %struct.ti_queue_inst* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ti_queue_inst = type { i32, i32 }
%struct.ti_msgmgr_inst = type { %struct.ti_msgmgr_desc* }
%struct.ti_msgmgr_desc = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"Error on channel %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @ti_msgmgr_last_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_msgmgr_last_tx_done(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.ti_queue_inst*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ti_msgmgr_inst*, align 8
  %7 = alloca %struct.ti_msgmgr_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %9 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %10 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %9, i32 0, i32 1
  %11 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %10, align 8
  store %struct.ti_queue_inst* %11, %struct.ti_queue_inst** %4, align 8
  %12 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %13 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.ti_msgmgr_inst* @dev_get_drvdata(%struct.device* %17)
  store %struct.ti_msgmgr_inst* %18, %struct.ti_msgmgr_inst** %6, align 8
  %19 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %6, align 8
  %20 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %19, i32 0, i32 0
  %21 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %20, align 8
  store %struct.ti_msgmgr_desc* %21, %struct.ti_msgmgr_desc** %7, align 8
  %22 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %4, align 8
  %23 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

27:                                               ; preds = %1
  %28 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %29 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %4, align 8
  %30 = call i64 @ti_msgmgr_queue_is_error(%struct.ti_msgmgr_desc* %28, %struct.ti_queue_inst* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %4, align 8
  %35 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %56

38:                                               ; preds = %27
  %39 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %40 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %4, align 8
  %41 = call i32 @ti_msgmgr_queue_get_num_messages(%struct.ti_msgmgr_desc* %39, %struct.ti_queue_inst* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %43 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %2, align 4
  br label %56

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 0, i32 1
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %51, %46, %32, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ti_msgmgr_inst* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @ti_msgmgr_queue_is_error(%struct.ti_msgmgr_desc*, %struct.ti_queue_inst*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @ti_msgmgr_queue_get_num_messages(%struct.ti_msgmgr_desc*, %struct.ti_queue_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
