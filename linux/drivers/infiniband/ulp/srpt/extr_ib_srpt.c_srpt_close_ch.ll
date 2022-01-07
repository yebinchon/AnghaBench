; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_close_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_close_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CH_DRAINING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: already closed\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"%s-%d: changing queue pair into error state failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s-%d: queuing zero-length write failed: %d\0A\00", align 1
@CH_DISCONNECTED = common dso_local global i32 0, align 4
@srpt_free_ch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*)* @srpt_close_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_close_ch(%struct.srpt_rdma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srpt_rdma_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %3, align 8
  %5 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %6 = load i32, i32* @CH_DRAINING, align 4
  %7 = call i64 @srpt_set_ch_state(%struct.srpt_rdma_ch* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %11 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 0, i32* %2, align 4
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %16 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %15, i32 0, i32 0
  %17 = call i32 @kref_get(i32* %16)
  %18 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %19 = call i32 @srpt_ch_qp_err(%struct.srpt_rdma_ch* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %24 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %27 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %14
  %34 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %35 = call i32 @srpt_zerolength_write(%struct.srpt_rdma_ch* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %40 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %43 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %46, i32 %47)
  %49 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %50 = load i32, i32* @CH_DISCONNECTED, align 4
  %51 = call i64 @srpt_set_ch_state(%struct.srpt_rdma_ch* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %38
  %54 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %55 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %54, i32 0, i32 1
  %56 = call i32 @schedule_work(i32* %55)
  br label %59

57:                                               ; preds = %38
  %58 = call i32 @WARN_ON_ONCE(i32 1)
  br label %59

59:                                               ; preds = %57, %53
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %3, align 8
  %62 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %61, i32 0, i32 0
  %63 = load i32, i32* @srpt_free_ch, align 4
  %64 = call i32 @kref_put(i32* %62, i32 %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @srpt_set_ch_state(%struct.srpt_rdma_ch*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @srpt_ch_qp_err(%struct.srpt_rdma_ch*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @srpt_zerolength_write(%struct.srpt_rdma_ch*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
