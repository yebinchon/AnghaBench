; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i64, i32 }
%struct.ib_udata = type { i32 }
%struct.qed_rdma_destroy_srq_in_params = type { i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)* }
%struct.qedr_srq = type { i32 }

@QEDR_MSG_SRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"destroy srq: destroyed srq with srq_id=0x%0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedr_destroy_srq(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.qed_rdma_destroy_srq_in_params, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %8 = bitcast %struct.qed_rdma_destroy_srq_in_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %10 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.qedr_dev* @get_qedr_dev(i32 %11)
  store %struct.qedr_dev* %12, %struct.qedr_dev** %6, align 8
  %13 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %14 = call %struct.qedr_srq* @get_qedr_srq(%struct.ib_srq* %13)
  store %struct.qedr_srq* %14, %struct.qedr_srq** %7, align 8
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %15, i32 0, i32 2
  %17 = load %struct.qedr_srq*, %struct.qedr_srq** %7, align 8
  %18 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xa_erase_irq(i32* %16, i32 %19)
  %21 = load %struct.qedr_srq*, %struct.qedr_srq** %7, align 8
  %22 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.qed_rdma_destroy_srq_in_params, %struct.qed_rdma_destroy_srq_in_params* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %26 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)*, i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)** %28, align 8
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %31 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32, %struct.qed_rdma_destroy_srq_in_params* %5)
  %34 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %35 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.qedr_srq*, %struct.qedr_srq** %7, align 8
  %40 = call i32 @qedr_free_srq_user_params(%struct.qedr_srq* %39)
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.qedr_srq*, %struct.qedr_srq** %7, align 8
  %43 = call i32 @qedr_free_srq_kernel_params(%struct.qedr_srq* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %46 = load i32, i32* @QEDR_MSG_SRQ, align 4
  %47 = load %struct.qedr_srq*, %struct.qedr_srq** %7, align 8
  %48 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DP_DEBUG(%struct.qedr_dev* %45, i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %49)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #2

declare dso_local %struct.qedr_srq* @get_qedr_srq(%struct.ib_srq*) #2

declare dso_local i32 @xa_erase_irq(i32*, i32) #2

declare dso_local i32 @qedr_free_srq_user_params(%struct.qedr_srq*) #2

declare dso_local i32 @qedr_free_srq_kernel_params(%struct.qedr_srq*) #2

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
