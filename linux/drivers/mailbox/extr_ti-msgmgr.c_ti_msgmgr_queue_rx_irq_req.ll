; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_rx_irq_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_ti-msgmgr.c_ti_msgmgr_queue_rx_irq_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_msgmgr_desc = type { i64 }
%struct.ti_queue_inst = type { i32, i32, i32, i32 }
%struct.mbox_chan = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"rx_%03d\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"QID %d PID %d:No IRQ[%s]: %d\0A\00", align 1
@ti_msgmgr_queue_rx_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unable to get IRQ %d on %s(res=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.ti_msgmgr_desc*, %struct.ti_queue_inst*, %struct.mbox_chan*)* @ti_msgmgr_queue_rx_irq_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_msgmgr_queue_rx_irq_req(%struct.device* %0, %struct.ti_msgmgr_desc* %1, %struct.ti_queue_inst* %2, %struct.mbox_chan* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.ti_msgmgr_desc*, align 8
  %8 = alloca %struct.ti_queue_inst*, align 8
  %9 = alloca %struct.mbox_chan*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [7 x i8], align 1
  %12 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.ti_msgmgr_desc* %1, %struct.ti_msgmgr_desc** %7, align 8
  store %struct.ti_queue_inst* %2, %struct.ti_queue_inst** %8, align 8
  store %struct.mbox_chan* %3, %struct.mbox_chan** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %14 = load %struct.ti_msgmgr_desc*, %struct.ti_msgmgr_desc** %7, align 8
  %15 = getelementptr inbounds %struct.ti_msgmgr_desc, %struct.ti_msgmgr_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %20 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %24 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  %28 = call i32 @snprintf(i8* %13, i32 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %30 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.device_node* @of_node_get(i32 %36)
  store %struct.device_node* %37, %struct.device_node** %12, align 8
  %38 = load %struct.device_node*, %struct.device_node** %12, align 8
  %39 = icmp ne %struct.device_node* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENODATA, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %97

43:                                               ; preds = %33
  %44 = load %struct.device_node*, %struct.device_node** %12, align 8
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %46 = call i32 @of_irq_get_byname(%struct.device_node* %44, i8* %45)
  %47 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %48 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.device_node*, %struct.device_node** %12, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  %51 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %52 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %58 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %61 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [7 x i8], [7 x i8]* %11, i64 0, i64 0
  %64 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %65 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62, i8* %63, i32 %66)
  %68 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %69 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  br label %97

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %74 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ti_msgmgr_queue_rx_interrupt, align 4
  %77 = load i32, i32* @IRQF_SHARED, align 4
  %78 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %79 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mbox_chan*, %struct.mbox_chan** %9, align 8
  %82 = call i32 @request_irq(i32 %75, i32 %76, i32 %77, i32 %80, %struct.mbox_chan* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %72
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %88 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ti_queue_inst*, %struct.ti_queue_inst** %8, align 8
  %91 = getelementptr inbounds %struct.ti_queue_inst, %struct.ti_queue_inst* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_err(%struct.device* %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %72
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %55, %40
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.mbox_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
