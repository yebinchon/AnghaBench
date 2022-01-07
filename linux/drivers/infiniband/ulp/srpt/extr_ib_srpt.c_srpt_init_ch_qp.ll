; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_init_ch_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_init_ch_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_rdma_ch = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Translating pkey %#x failed (%d) - using index 0\0A\00", align 1
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srpt_rdma_ch*, %struct.ib_qp*)* @srpt_init_ch_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_init_ch_qp(%struct.srpt_rdma_ch* %0, %struct.ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.srpt_rdma_ch*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.srpt_rdma_ch* %0, %struct.srpt_rdma_ch** %4, align 8
  store %struct.ib_qp* %1, %struct.ib_qp** %5, align 8
  %8 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %9 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_qp_attr* @kzalloc(i32 16, i32 %12)
  store %struct.ib_qp_attr* %13, %struct.ib_qp_attr** %6, align 8
  %14 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %15 = icmp ne %struct.ib_qp_attr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* @IB_QPS_INIT, align 4
  %21 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %22 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %24 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %27 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %34 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %41 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %46 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %49 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %48, i32 0, i32 0
  %50 = call i32 @ib_find_cached_pkey(i32 %39, i32 %44, i32 %47, i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %19
  %54 = load %struct.srpt_rdma_ch*, %struct.srpt_rdma_ch** %4, align 8
  %55 = getelementptr inbounds %struct.srpt_rdma_ch, %struct.srpt_rdma_ch* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %19
  %60 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %61 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %62 = load i32, i32* @IB_QP_STATE, align 4
  %63 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IB_QP_PORT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @ib_modify_qp(%struct.ib_qp* %60, %struct.ib_qp_attr* %61, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %71 = call i32 @kfree(%struct.ib_qp_attr* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %59, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.ib_qp_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @ib_find_cached_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ib_modify_qp(%struct.ib_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
