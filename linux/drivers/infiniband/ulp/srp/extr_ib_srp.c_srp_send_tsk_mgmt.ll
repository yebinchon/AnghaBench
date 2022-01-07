; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_tsk_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_send_tsk_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32, i32, i32, i32, i32, %struct.srp_target_port* }
%struct.srp_target_port = type { i64, %struct.TYPE_4__*, %struct.srp_rport* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.srp_rport = type { i32 }
%struct.srp_iu = type { i32, i32, %struct.srp_tsk_mgmt* }
%struct.srp_tsk_mgmt = type { i32, i32, i32, i32, i32 }

@SRP_IU_TSK_MGMT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SRP_TSK_MGMT = common dso_local global i32 0, align 4
@SRP_TAG_TSK_MGMT = common dso_local global i32 0, align 4
@SRP_ABORT_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*, i32, i32, i32, i32*)* @srp_send_tsk_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_send_tsk_mgmt(%struct.srp_rdma_ch* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.srp_rdma_ch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.srp_target_port*, align 8
  %13 = alloca %struct.srp_rport*, align 8
  %14 = alloca %struct.ib_device*, align 8
  %15 = alloca %struct.srp_iu*, align 8
  %16 = alloca %struct.srp_tsk_mgmt*, align 8
  %17 = alloca i32, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %19 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %18, i32 0, i32 5
  %20 = load %struct.srp_target_port*, %struct.srp_target_port** %19, align 8
  store %struct.srp_target_port* %20, %struct.srp_target_port** %12, align 8
  %21 = load %struct.srp_target_port*, %struct.srp_target_port** %12, align 8
  %22 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %21, i32 0, i32 2
  %23 = load %struct.srp_rport*, %struct.srp_rport** %22, align 8
  store %struct.srp_rport* %23, %struct.srp_rport** %13, align 8
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %12, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.ib_device*, %struct.ib_device** %29, align 8
  store %struct.ib_device* %30, %struct.ib_device** %14, align 8
  %31 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %32 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.srp_target_port*, %struct.srp_target_port** %12, align 8
  %37 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %5
  store i32 -1, i32* %6, align 4
  br label %155

41:                                               ; preds = %35
  %42 = load %struct.srp_rport*, %struct.srp_rport** %13, align 8
  %43 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %46 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %49 = load i32, i32* @SRP_IU_TSK_MGMT, align 4
  %50 = call %struct.srp_iu* @__srp_get_tx_iu(%struct.srp_rdma_ch* %48, i32 %49)
  store %struct.srp_iu* %50, %struct.srp_iu** %15, align 8
  %51 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %52 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %51, i32 0, i32 3
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %55 = icmp ne %struct.srp_iu* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %41
  %57 = load %struct.srp_rport*, %struct.srp_rport** %13, align 8
  %58 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  store i32 -1, i32* %6, align 4
  br label %155

60:                                               ; preds = %41
  %61 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %62 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %64 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %65 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DMA_TO_DEVICE, align 4
  %68 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %63, i32 %66, i32 20, i32 %67)
  %69 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %70 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %69, i32 0, i32 2
  %71 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %70, align 8
  store %struct.srp_tsk_mgmt* %71, %struct.srp_tsk_mgmt** %16, align 8
  %72 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %73 = call i32 @memset(%struct.srp_tsk_mgmt* %72, i32 0, i32 20)
  %74 = load i32, i32* @SRP_TSK_MGMT, align 4
  %75 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %76 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %79 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %78, i32 0, i32 3
  %80 = call i32 @int_to_scsilun(i32 %77, i32* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %83 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %86 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %88 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %87, i32 0, i32 3
  %89 = call i32 @spin_lock_irq(i32* %88)
  %90 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %91 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* @SRP_TAG_TSK_MGMT, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %97 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %99 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %16, align 8
  %102 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %104 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %103, i32 0, i32 3
  %105 = call i32 @spin_unlock_irq(i32* %104)
  %106 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %107 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %106, i32 0, i32 2
  %108 = call i32 @init_completion(i32* %107)
  %109 = load %struct.ib_device*, %struct.ib_device** %14, align 8
  %110 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %111 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @DMA_TO_DEVICE, align 4
  %114 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %109, i32 %112, i32 20, i32 %113)
  %115 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %116 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %117 = call i64 @srp_post_send(%struct.srp_rdma_ch* %115, %struct.srp_iu* %116, i32 20)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %60
  %120 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %121 = load %struct.srp_iu*, %struct.srp_iu** %15, align 8
  %122 = load i32, i32* @SRP_IU_TSK_MGMT, align 4
  %123 = call i32 @srp_put_tx_iu(%struct.srp_rdma_ch* %120, %struct.srp_iu* %121, i32 %122)
  %124 = load %struct.srp_rport*, %struct.srp_rport** %13, align 8
  %125 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  store i32 -1, i32* %6, align 4
  br label %155

127:                                              ; preds = %60
  %128 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %129 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %128, i32 0, i32 2
  %130 = load i32, i32* @SRP_ABORT_TIMEOUT_MS, align 4
  %131 = call i32 @msecs_to_jiffies(i32 %130)
  %132 = call i32 @wait_for_completion_timeout(i32* %129, i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i32*, i32** %11, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %140 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %11, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %138, %135, %127
  %144 = load %struct.srp_rport*, %struct.srp_rport** %13, align 8
  %145 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %144, i32 0, i32 0
  %146 = call i32 @mutex_unlock(i32* %145)
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @WARN_ON_ONCE(i32 %149)
  %151 = load i32, i32* %17, align 4
  %152 = icmp sgt i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 0, i32 -1
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %143, %119, %56, %40
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.srp_iu* @__srp_get_tx_iu(%struct.srp_rdma_ch*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.srp_tsk_mgmt*, i32, i32) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i64 @srp_post_send(%struct.srp_rdma_ch*, %struct.srp_iu*, i32) #1

declare dso_local i32 @srp_put_tx_iu(%struct.srp_rdma_ch*, %struct.srp_iu*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
