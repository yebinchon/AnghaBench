; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_qp_grp.c_usnic_ib_qp_grp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_qp_grp = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IB_QPS_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usnic_ib_qp_grp_destroy(%struct.usnic_ib_qp_grp* %0) #0 {
  %2 = alloca %struct.usnic_ib_qp_grp*, align 8
  store %struct.usnic_ib_qp_grp* %0, %struct.usnic_ib_qp_grp** %2, align 8
  %3 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %4 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IB_QPS_RESET, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %11 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %16 = call i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp* %15)
  %17 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %18 = call i32 @usnic_ib_sysfs_qpn_remove(%struct.usnic_ib_qp_grp* %17)
  %19 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %20 = call i32 @qp_grp_and_vf_unbind(%struct.usnic_ib_qp_grp* %19)
  %21 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %22 = getelementptr inbounds %struct.usnic_ib_qp_grp, %struct.usnic_ib_qp_grp* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @free_qp_grp_res(i32 %23)
  %25 = load %struct.usnic_ib_qp_grp*, %struct.usnic_ib_qp_grp** %2, align 8
  %26 = call i32 @kfree(%struct.usnic_ib_qp_grp* %25)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @release_and_remove_all_flows(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @usnic_ib_sysfs_qpn_remove(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @qp_grp_and_vf_unbind(%struct.usnic_ib_qp_grp*) #1

declare dso_local i32 @free_qp_grp_res(i32) #1

declare dso_local i32 @kfree(%struct.usnic_ib_qp_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
