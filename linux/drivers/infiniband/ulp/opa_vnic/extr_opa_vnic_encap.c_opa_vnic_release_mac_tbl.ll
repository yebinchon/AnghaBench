; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_release_mac_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/opa_vnic/extr_opa_vnic_encap.c_opa_vnic_release_mac_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opa_vnic_adapter = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.hlist_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @opa_vnic_release_mac_tbl(%struct.opa_vnic_adapter* %0) #0 {
  %2 = alloca %struct.opa_vnic_adapter*, align 8
  %3 = alloca %struct.hlist_head*, align 8
  store %struct.opa_vnic_adapter* %0, %struct.opa_vnic_adapter** %2, align 8
  %4 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.hlist_head* @rcu_access_pointer(i32 %9)
  store %struct.hlist_head* %10, %struct.hlist_head** %3, align 8
  %11 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rcu_assign_pointer(i32 %13, i32* null)
  %15 = call i32 (...) @synchronize_rcu()
  %16 = load %struct.hlist_head*, %struct.hlist_head** %3, align 8
  %17 = call i32 @opa_vnic_free_mac_tbl(%struct.hlist_head* %16)
  %18 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.opa_vnic_adapter*, %struct.opa_vnic_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.opa_vnic_adapter, %struct.opa_vnic_adapter* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.hlist_head* @rcu_access_pointer(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @opa_vnic_free_mac_tbl(%struct.hlist_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
