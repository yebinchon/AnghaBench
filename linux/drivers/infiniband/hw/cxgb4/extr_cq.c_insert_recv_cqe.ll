; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_insert_recv_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cq.c_insert_recv_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_wq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.t4_cq = type { i64, %struct.t4_cqe*, i64, i32 }
%struct.t4_cqe = type { %struct.TYPE_6__, i32, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [35 x i8] c"wq %p cq %p sw_cidx %u sw_pidx %u\0A\00", align 1
@T4_ERR_SWFLUSH = common dso_local global i32 0, align 4
@FW_RI_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.t4_wq*, %struct.t4_cq*, i32)* @insert_recv_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_recv_cqe(%struct.t4_wq* %0, %struct.t4_cq* %1, i32 %2) #0 {
  %4 = alloca %struct.t4_wq*, align 8
  %5 = alloca %struct.t4_cq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.t4_cqe, align 8
  store %struct.t4_wq* %0, %struct.t4_wq** %4, align 8
  store %struct.t4_cq* %1, %struct.t4_cq** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %9 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %10 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %11 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %14 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.t4_wq* %8, %struct.t4_cq* %9, i32 %12, i64 %15)
  %17 = call i32 @memset(%struct.t4_cqe* %7, i32 0, i32 24)
  %18 = load i32, i32* @T4_ERR_SWFLUSH, align 4
  %19 = call i32 @CQE_STATUS_V(i32 %18)
  %20 = load i32, i32* @FW_RI_SEND, align 4
  %21 = call i32 @CQE_OPCODE_V(i32 %20)
  %22 = or i32 %19, %21
  %23 = call i32 @CQE_TYPE_V(i32 0)
  %24 = or i32 %22, %23
  %25 = call i32 @CQE_SWCQE_V(i32 1)
  %26 = or i32 %24, %25
  %27 = load %struct.t4_wq*, %struct.t4_wq** %4, align 8
  %28 = getelementptr inbounds %struct.t4_wq, %struct.t4_wq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CQE_QPID_V(i32 %30)
  %32 = or i32 %26, %31
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %7, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %36 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @CQE_GENBIT_V(i32 %38)
  %40 = call i32 @cpu_to_be64(i32 %39)
  %41 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %7, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %3
  %51 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %52 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %51, i32 0, i32 1
  %53 = load %struct.t4_cqe*, %struct.t4_cqe** %52, align 8
  %54 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %55 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.t4_cqe, %struct.t4_cqe* %53, i64 %56
  %58 = bitcast %struct.t4_cqe* %57 to i8*
  %59 = bitcast %struct.t4_cqe* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  %60 = load %struct.t4_cq*, %struct.t4_cq** %5, align 8
  %61 = call i32 @t4_swcq_produce(%struct.t4_cq* %60)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.t4_wq*, %struct.t4_cq*, i32, i64) #1

declare dso_local i32 @memset(%struct.t4_cqe*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @CQE_STATUS_V(i32) #1

declare dso_local i32 @CQE_OPCODE_V(i32) #1

declare dso_local i32 @CQE_TYPE_V(i32) #1

declare dso_local i32 @CQE_SWCQE_V(i32) #1

declare dso_local i32 @CQE_QPID_V(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @CQE_GENBIT_V(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @t4_swcq_produce(%struct.t4_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
