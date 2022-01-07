; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_disconnect_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_disconnect_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CH_DISCONNECTING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*)* @srpt_disconnect_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_disconnect_ch(%struct.srpt_rdma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %3, align 8
  %5 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %6 = load i32, i32* @CH_DISCONNECTING, align 4
  %7 = call i32 @srpt_set_ch_state(%struct.srpt_rdma_ch* %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOTCONN, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %14 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %19 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rdma_disconnect(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %38

23:                                               ; preds = %12
  %24 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %25 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ib_send_cm_dreq(i32 %27, i32* null, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %33 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ib_send_cm_drep(i32 %35, i32* null, i32 0)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %23
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %43 = call i64 @srpt_close_ch(%struct.srpt_rdma_ch* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @srpt_set_ch_state(%struct.srpt_rdma_ch*, i32) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @ib_send_cm_dreq(i32, i32*, i32) #1

declare dso_local i32 @ib_send_cm_drep(i32, i32*, i32) #1

declare dso_local i64 @srpt_close_ch(%struct.srpt_rdma_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
