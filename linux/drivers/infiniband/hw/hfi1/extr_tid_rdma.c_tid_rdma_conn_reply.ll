; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_conn_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_conn_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { %struct.hfi1_qp_priv* }
%struct.hfi1_qp_priv = type { i64, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.tid_rdma_params }
%struct.tid_rdma_params = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@TID_RDMA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rcu_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tid_rdma_conn_reply(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_qp_priv*, align 8
  %6 = alloca %struct.tid_rdma_params*, align 8
  %7 = alloca %struct.tid_rdma_params*, align 8
  %8 = alloca i32, align 4
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %10 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %9, i32 0, i32 0
  %11 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %10, align 8
  store %struct.hfi1_qp_priv* %11, %struct.hfi1_qp_priv** %5, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %13 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %17 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.tid_rdma_params* @rcu_dereference_protected(i32 %15, i32 %19)
  store %struct.tid_rdma_params* %20, %struct.tid_rdma_params** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, -16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @TID_RDMA, align 4
  %29 = call i32 @HFI1_CAP_IS_KSET(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %2
  br label %82

32:                                               ; preds = %27
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.tid_rdma_params* @kzalloc(i32 16, i32 %33)
  store %struct.tid_rdma_params* %34, %struct.tid_rdma_params** %6, align 8
  %35 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %36 = icmp ne %struct.tid_rdma_params* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %82

38:                                               ; preds = %32
  %39 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @tid_rdma_opfn_decode(%struct.tid_rdma_params* %39, i32 %40)
  %42 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %43 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = shl i64 1, %44
  %46 = mul i64 4096, %45
  %47 = udiv i64 %46, 1000
  %48 = shl i64 %47, 3
  %49 = mul i64 %48, 7
  %50 = call i32 @usecs_to_jiffies(i64 %49)
  %51 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %52 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %54 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %55 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = call i32 @trace_hfi1_opfn_param(%struct.rvt_qp* %53, i32 0, %struct.tid_rdma_params* %56)
  %58 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %59 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %60 = call i32 @trace_hfi1_opfn_param(%struct.rvt_qp* %58, i32 1, %struct.tid_rdma_params* %59)
  %61 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %62 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %66 = call i32 @rcu_assign_pointer(i32 %64, %struct.tid_rdma_params* %65)
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %68 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %6, align 8
  %69 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @rvt_div_mtu(%struct.rvt_qp* %67, i32 %70)
  %72 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %73 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %75 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %76, 1
  %78 = call i64 @ilog2(i64 %77)
  %79 = add nsw i64 %78, 1
  %80 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %81 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %90

82:                                               ; preds = %37, %31
  %83 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %84 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @RCU_INIT_POINTER(i32 %86, i32* null)
  %88 = load %struct.hfi1_qp_priv*, %struct.hfi1_qp_priv** %5, align 8
  %89 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %82, %38
  %91 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %7, align 8
  %92 = icmp ne %struct.tid_rdma_params* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %7, align 8
  %95 = load i32, i32* @rcu_head, align 4
  %96 = call i32 @kfree_rcu(%struct.tid_rdma_params* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local %struct.tid_rdma_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local %struct.tid_rdma_params* @kzalloc(i32, i32) #1

declare dso_local i32 @tid_rdma_opfn_decode(%struct.tid_rdma_params*, i32) #1

declare dso_local i32 @usecs_to_jiffies(i64) #1

declare dso_local i32 @trace_hfi1_opfn_param(%struct.rvt_qp*, i32, %struct.tid_rdma_params*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tid_rdma_params*) #1

declare dso_local i64 @rvt_div_mtu(%struct.rvt_qp*, i32) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tid_rdma_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
