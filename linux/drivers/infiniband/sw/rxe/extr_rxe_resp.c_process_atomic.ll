; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_process_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_resp.c_process_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.rxe_mem* }
%struct.rxe_mem = type { i64 }
%struct.rxe_pkt_info = type { i64 }

@RXE_MEM_STATE_VALID = common dso_local global i64 0, align 8
@RESPST_ERR_RKEY_VIOLATION = common dso_local global i32 0, align 4
@RESPST_ERR_MISALIGNED_ATOMIC = common dso_local global i32 0, align 4
@atomic_ops_lock = common dso_local global i32 0, align 4
@IB_OPCODE_RC_COMPARE_SWAP = common dso_local global i64 0, align 8
@IB_OPCODE_RD_COMPARE_SWAP = common dso_local global i64 0, align 8
@RESPST_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*, %struct.rxe_pkt_info*)* @process_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_atomic(%struct.rxe_qp* %0, %struct.rxe_pkt_info* %1) #0 {
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_pkt_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rxe_mem*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  store %struct.rxe_pkt_info* %1, %struct.rxe_pkt_info** %4, align 8
  %9 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %10 = call i64 @atmeth_va(%struct.rxe_pkt_info* %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %12 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.rxe_mem*, %struct.rxe_mem** %13, align 8
  store %struct.rxe_mem* %14, %struct.rxe_mem** %8, align 8
  %15 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %16 = getelementptr inbounds %struct.rxe_mem, %struct.rxe_mem* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RXE_MEM_STATE_VALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @RESPST_ERR_RKEY_VIOLATION, align 4
  store i32 %21, i32* %7, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.rxe_mem*, %struct.rxe_mem** %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i64* @iova_to_vaddr(%struct.rxe_mem* %23, i64 %24, i32 8)
  store i64* %25, i64** %6, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i64*, i64** %6, align 8
  %30 = ptrtoint i64* %29 to i64
  %31 = and i64 %30, 7
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %22
  %34 = load i32, i32* @RESPST_ERR_MISALIGNED_ATOMIC, align 4
  store i32 %34, i32* %7, align 4
  br label %73

35:                                               ; preds = %28
  %36 = call i32 @spin_lock_bh(i32* @atomic_ops_lock)
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %40 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %43 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IB_OPCODE_RC_COMPARE_SWAP, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %35
  %48 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %49 = getelementptr inbounds %struct.rxe_pkt_info, %struct.rxe_pkt_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IB_OPCODE_RD_COMPARE_SWAP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47, %35
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %57 = call i64 @atmeth_comp(%struct.rxe_pkt_info* %56)
  %58 = icmp eq i64 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %61 = call i64 @atmeth_swap_add(%struct.rxe_pkt_info* %60)
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  br label %70

64:                                               ; preds = %47
  %65 = load %struct.rxe_pkt_info*, %struct.rxe_pkt_info** %4, align 8
  %66 = call i64 @atmeth_swap_add(%struct.rxe_pkt_info* %65)
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %64, %63
  %71 = call i32 @spin_unlock_bh(i32* @atomic_ops_lock)
  %72 = load i32, i32* @RESPST_NONE, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %70, %33, %20
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i64 @atmeth_va(%struct.rxe_pkt_info*) #1

declare dso_local i64* @iova_to_vaddr(%struct.rxe_mem*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atmeth_comp(%struct.rxe_pkt_info*) #1

declare dso_local i64 @atmeth_swap_add(%struct.rxe_pkt_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
