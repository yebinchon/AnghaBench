; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_zerolength_write_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_zerolength_write_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.srpt_rdma_ch* }
%struct.srpt_rdma_ch = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_wc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s-%d wc->status %d\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@CH_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s-%d: already disconnected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_wc*)* @srpt_zerolength_write_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_zerolength_write_done(%struct.ib_cq* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.srpt_rdma_ch*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %6 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %7 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %6, i32 0, i32 0
  %8 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %7, align 8
  store %struct.srpt_rdma_ch* %8, %struct.srpt_rdma_ch** %5, align 8
  %9 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %10 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %13 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %18 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i32 %19)
  %21 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IB_WC_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %28 = call i32 @srpt_process_wait_list(%struct.srpt_rdma_ch* %27)
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %31 = load i32, i32* @CH_DISCONNECTED, align 4
  %32 = call i64 @srpt_set_ch_state(%struct.srpt_rdma_ch* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %36 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %35, i32 0, i32 2
  %37 = call i32 @schedule_work(i32* %36)
  br label %48

38:                                               ; preds = %29
  %39 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %40 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %5, align 8
  %43 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48, %26
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @srpt_process_wait_list(%struct.srpt_rdma_ch*) #1

declare dso_local i64 @srpt_set_ch_state(%struct.srpt_rdma_ch*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
