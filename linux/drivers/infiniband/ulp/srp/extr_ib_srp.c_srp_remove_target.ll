; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_remove_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_remove_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i64, i32, i32, %struct.TYPE_2__*, i32, %struct.srp_rdma_ch*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.srp_rdma_ch = type { i32 }

@SRP_TARGET_REMOVED = common dso_local global i64 0, align 8
@KOBJ_NS_TYPE_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_target_port*)* @srp_remove_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_remove_target(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  %3 = alloca %struct.srp_rdma_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  %5 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %6 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SRP_TARGET_REMOVED, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %13 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @srp_del_scsi_host_attr(i32 %14)
  %16 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %17 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @srp_rport_get(i32 %18)
  %20 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %21 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @srp_remove_host(i32 %22)
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scsi_remove_host(i32 %26)
  %28 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %29 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @srp_stop_rport_timers(i32 %30)
  %32 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %33 = call i32 @srp_disconnect_target(%struct.srp_target_port* %32)
  %34 = load i32, i32* @KOBJ_NS_TYPE_NET, align 4
  %35 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %36 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kobj_ns_drop(i32 %34, i32 %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %55, %1
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %42 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %47 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %46, i32 0, i32 5
  %48 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %48, i64 %50
  store %struct.srp_rdma_ch* %51, %struct.srp_rdma_ch** %3, align 8
  %52 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %53 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %54 = call i32 @srp_free_ch_ib(%struct.srp_target_port* %52, %struct.srp_rdma_ch* %53)
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %60 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %59, i32 0, i32 7
  %61 = call i32 @cancel_work_sync(i32* %60)
  %62 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %63 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @srp_rport_put(i32 %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %82, %58
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %69 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %74 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %73, i32 0, i32 5
  %75 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %75, i64 %77
  store %struct.srp_rdma_ch* %78, %struct.srp_rdma_ch** %3, align 8
  %79 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %80 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %81 = call i32 @srp_free_req_data(%struct.srp_target_port* %79, %struct.srp_rdma_ch* %80)
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %66

85:                                               ; preds = %66
  %86 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %87 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %86, i32 0, i32 5
  %88 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %87, align 8
  %89 = call i32 @kfree(%struct.srp_rdma_ch* %88)
  %90 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %91 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %90, i32 0, i32 5
  store %struct.srp_rdma_ch* null, %struct.srp_rdma_ch** %91, align 8
  %92 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %93 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %98 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %97, i32 0, i32 4
  %99 = call i32 @list_del(i32* %98)
  %100 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %101 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %100, i32 0, i32 3
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @spin_unlock(i32* %103)
  %105 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %106 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @scsi_host_put(i32 %107)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @srp_del_scsi_host_attr(i32) #1

declare dso_local i32 @srp_rport_get(i32) #1

declare dso_local i32 @srp_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @srp_stop_rport_timers(i32) #1

declare dso_local i32 @srp_disconnect_target(%struct.srp_target_port*) #1

declare dso_local i32 @kobj_ns_drop(i32, i32) #1

declare dso_local i32 @srp_free_ch_ib(%struct.srp_target_port*, %struct.srp_rdma_ch*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @srp_rport_put(i32) #1

declare dso_local i32 @srp_free_req_data(%struct.srp_target_port*, %struct.srp_rdma_ch*) #1

declare dso_local i32 @kfree(%struct.srp_rdma_ch*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
