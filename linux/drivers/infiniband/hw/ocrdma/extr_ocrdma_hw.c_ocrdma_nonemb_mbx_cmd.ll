; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_nonemb_mbx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_nonemb_mbx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_mqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocrdma_mbx_rsp = type { i32, i32 }

@OCRDMA_MQE_HDR_EMB_MASK = common dso_local global i32 0, align 4
@OCRDMA_MQE_HDR_EMB_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"opcode=0x%x, subsystem=0x%x\0A\00", align 1
@OCRDMA_MBX_RSP_OPCODE_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_OPCODE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_SUBSYS_MASK = common dso_local global i32 0, align 4
@OCRDMA_MBX_RSP_SUBSYS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_mqe*, i8*)* @ocrdma_nonemb_mbx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_nonemb_mbx_cmd(%struct.ocrdma_dev* %0, %struct.ocrdma_mqe* %1, i8* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_mqe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_mbx_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_mqe* %1, %struct.ocrdma_mqe** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ocrdma_mbx_rsp*
  store %struct.ocrdma_mbx_rsp* %10, %struct.ocrdma_mbx_rsp** %8, align 8
  %11 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %12 = getelementptr inbounds %struct.ocrdma_mqe, %struct.ocrdma_mqe* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @OCRDMA_MQE_HDR_EMB_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @OCRDMA_MQE_HDR_EMB_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = call i32 (...) @BUG()
  br label %22

22:                                               ; preds = %20, %3
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %24 = load %struct.ocrdma_mqe*, %struct.ocrdma_mqe** %5, align 8
  %25 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %23, %struct.ocrdma_mqe* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.ocrdma_mbx_rsp*, %struct.ocrdma_mbx_rsp** %8, align 8
  %30 = getelementptr inbounds %struct.ocrdma_mbx_rsp, %struct.ocrdma_mbx_rsp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCRDMA_MBX_RSP_STATUS_MASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.ocrdma_mbx_rsp*, %struct.ocrdma_mbx_rsp** %8, align 8
  %37 = getelementptr inbounds %struct.ocrdma_mbx_rsp, %struct.ocrdma_mbx_rsp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ocrdma_get_mbx_errno(i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.ocrdma_mbx_rsp*, %struct.ocrdma_mbx_rsp** %8, align 8
  %46 = getelementptr inbounds %struct.ocrdma_mbx_rsp, %struct.ocrdma_mbx_rsp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @OCRDMA_MBX_RSP_OPCODE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @OCRDMA_MBX_RSP_OPCODE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load %struct.ocrdma_mbx_rsp*, %struct.ocrdma_mbx_rsp** %8, align 8
  %53 = getelementptr inbounds %struct.ocrdma_mbx_rsp, %struct.ocrdma_mbx_rsp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OCRDMA_MBX_RSP_SUBSYS_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @OCRDMA_MBX_RSP_SUBSYS_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %58)
  br label %60

60:                                               ; preds = %44, %41
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @ocrdma_get_mbx_errno(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
