; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_get_qp_res_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_get_qp_res_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_vnic_res_chunk = type { i32 }
%struct.usnic_ib_qp_grp = type { i32 }

@USNIC_VNIC_RES_TYPE_RQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usnic_vnic_res_chunk* (%struct.usnic_ib_qp_grp*)* @get_qp_res_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usnic_vnic_res_chunk* @get_qp_res_chunk(%struct.usnic_ib_qp_grp* %0) #0 {
  %2 = alloca %struct.usnic_ib_qp_grp*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %2, align 8
  %3 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %4 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %3, i32 0, i32 0
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %7 = load i32, i32* @USNIC_VNIC_RES_TYPE_RQ, align 4
  %8 = call %struct.usnic_vnic_res_chunk* @usnic_ib_qp_grp_get_chunk(%struct.usnic_ib_qp_grp* %6, i32 %7)
  ret %struct.usnic_vnic_res_chunk* %8
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.usnic_vnic_res_chunk* @usnic_ib_qp_grp_get_chunk(%struct.usnic_ib_qp_grp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
