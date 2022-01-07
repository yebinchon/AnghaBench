; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_qp = type { i32, i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ocrdma_modify_qp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_MODIFY_QP = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_QP_PARAMS_STATE_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_PARA_QPS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mbx_modify_qp(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1, %struct.ib_qp_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocrdma_modify_qp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %6, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @OCRDMA_CMD_MODIFY_QP, align 4
  %15 = call %struct.ocrdma_modify_qp* @ocrdma_init_emb_mqe(i32 %14, i32 12)
  store %struct.ocrdma_modify_qp* %15, %struct.ocrdma_modify_qp** %11, align 8
  %16 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %17 = icmp ne %struct.ocrdma_modify_qp* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %87

20:                                               ; preds = %4
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %22 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %25 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %28 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @IB_QP_STATE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %20
  %34 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_ocrdma_qp_state(i32 %36)
  %38 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %43 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @OCRDMA_QP_PARA_QPS_VALID, align 4
  %48 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %49 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %65

52:                                               ; preds = %20
  %53 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %54 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* @OCRDMA_QP_PARAMS_STATE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %61 = getelementptr inbounds %struct.ocrdma_modify_qp, %struct.ocrdma_modify_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %52, %33
  %66 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %67 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %68 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ocrdma_set_qp_params(%struct.ocrdma_qp* %66, %struct.ocrdma_modify_qp* %67, %struct.ib_qp_attr* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %83

74:                                               ; preds = %65
  %75 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %76 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %77 = bitcast %struct.ocrdma_modify_qp* %76 to %struct.ocrdma_mqe*
  %78 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %75, %struct.ocrdma_mqe* %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %81, %73
  %84 = load %struct.ocrdma_modify_qp*, %struct.ocrdma_modify_qp** %11, align 8
  %85 = call i32 @kfree(%struct.ocrdma_modify_qp* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.ocrdma_modify_qp* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @get_ocrdma_qp_state(i32) #1

declare dso_local i32 @ocrdma_set_qp_params(%struct.ocrdma_qp*, %struct.ocrdma_modify_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_modify_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
