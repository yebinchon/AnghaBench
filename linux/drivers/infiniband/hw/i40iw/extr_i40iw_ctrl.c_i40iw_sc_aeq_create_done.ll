; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_create_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_aeq_create_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_aeq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }

@I40IW_CQP_OP_CREATE_AEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_sc_aeq*)* @i40iw_sc_aeq_create_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_sc_aeq_create_done(%struct.i40iw_sc_aeq* %0) #0 {
  %2 = alloca %struct.i40iw_sc_aeq*, align 8
  %3 = alloca %struct.i40iw_sc_cqp*, align 8
  store %struct.i40iw_sc_aeq* %0, %struct.i40iw_sc_aeq** %2, align 8
  %4 = load %struct.i40iw_sc_aeq*, %struct.i40iw_sc_aeq** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_sc_aeq, %struct.i40iw_sc_aeq* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %7, align 8
  store %struct.i40iw_sc_cqp* %8, %struct.i40iw_sc_cqp** %3, align 8
  %9 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %3, align 8
  %10 = load i32, i32* @I40IW_CQP_OP_CREATE_AEQ, align 4
  %11 = call i32 @i40iw_sc_poll_for_cqp_op_done(%struct.i40iw_sc_cqp* %9, i32 %10, i32* null)
  ret i32 %11
}

declare dso_local i32 @i40iw_sc_poll_for_cqp_op_done(%struct.i40iw_sc_cqp*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
