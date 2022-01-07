; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.ti_queue_inst*, %struct.TYPE_2__* }
%struct.ti_queue_inst = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.ti_msgmgr_inst = type { %struct.ti_msgmgr_desc* }
%struct.ti_msgmgr_desc = type { i32, i64 }

@SPROXY_THREAD_CTRL_DIR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: Cannot transmit with 0 credits!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbox_chan*)* @ti_msgmgr_queue_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_msgmgr_queue_startup(%struct.mbox_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_msgmgr_inst*, align 8
  %6 = alloca %struct.ti_queue_inst*, align 8
  %7 = alloca %struct.ti_msgmgr_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mbox_chan* %0, %struct.mbox_chan** %3, align 8
  %10 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %11 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.ti_msgmgr_inst* @dev_get_drvdata(%struct.device* %15)
  store %struct.ti_msgmgr_inst* %16, %struct.ti_msgmgr_inst** %5, align 8
  %17 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %18 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %17, i32 0, i32 0
  %19 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %18, align 8
  store %struct.ti_queue_inst* %19, %struct.ti_queue_inst** %6, align 8
  %20 = load %struct.ti_msgmgr_inst*, %struct.ti_msgmgr_inst** %5, align 8
  %21 = getelementptr inbounds %struct.ti_msgmgr_inst, %struct.ti_msgmgr_inst* %20, i32 0, i32 0
  %22 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %21, align 8
  store %struct.ti_msgmgr_desc* %22, %struct.ti_msgmgr_desc** %7, align 8
  %23 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %24 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %1
  %28 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %29 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @readl(i32 %30)
  %32 = load i32, i32* @SPROXY_THREAD_CTRL_DIR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  %37 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %38 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %40 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %41 = call i32 @ti_msgmgr_queue_get_num_messages(%struct.ti_msgmgr_desc* %39, %struct.ti_queue_inst* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %27
  %45 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %46 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %52 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %94

57:                                               ; preds = %44, %27
  br label %58

58:                                               ; preds = %57, %1
  %59 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %60 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %58
  %64 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %65 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @kzalloc(i32 %66, i32 %67)
  %69 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %70 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %72 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %94

78:                                               ; preds = %63
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %81 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %82 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  %83 = call i32 @ti_msgmgr_queue_rx_irq_req(%struct.device* %79, %struct.ti_msgmgr_desc* %80, %struct.ti_queue_inst* %81, %struct.mbox_chan* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %6, align 8
  %88 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @kfree(i32 %89)
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %58
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %86, %75, %49
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.ti_msgmgr_inst* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @ti_msgmgr_queue_get_num_messages(%struct.ti_msgmgr_desc*, %struct.ti_queue_inst*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @ti_msgmgr_queue_rx_irq_req(%struct.device*, %struct.ti_msgmgr_desc*, %struct.ti_queue_inst*, %struct.mbox_chan*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
