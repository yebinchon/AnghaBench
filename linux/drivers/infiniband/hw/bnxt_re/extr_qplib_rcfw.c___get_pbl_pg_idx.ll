; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c___get_pbl_pg_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c___get_pbl_pg_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_pbl = type { i64 }

@ROCE_PG_SIZE_4K = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K = common dso_local global i32 0, align 4
@ROCE_PG_SIZE_8K = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8K = common dso_local global i32 0, align 4
@ROCE_PG_SIZE_64K = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_64K = common dso_local global i32 0, align 4
@ROCE_PG_SIZE_2M = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_2M = common dso_local global i32 0, align 4
@ROCE_PG_SIZE_8M = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8M = common dso_local global i32 0, align 4
@ROCE_PG_SIZE_1G = common dso_local global i64 0, align 8
@CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_1G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_pbl*)* @__get_pbl_pg_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_pbl_pg_idx(%struct.bnxt_qplib_pbl* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_pbl*, align 8
  store %struct.bnxt_qplib_pbl* %0, %struct.bnxt_qplib_pbl** %2, align 8
  %3 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %4 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ROCE_PG_SIZE_4K, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K, align 4
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ROCE_PG_SIZE_8K, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8K, align 4
  br label %60

18:                                               ; preds = %10
  %19 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %20 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ROCE_PG_SIZE_64K, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_64K, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ROCE_PG_SIZE_2M, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_2M, align 4
  br label %56

34:                                               ; preds = %26
  %35 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %36 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ROCE_PG_SIZE_8M, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8M, align 4
  br label %54

42:                                               ; preds = %34
  %43 = load %struct.bnxt_qplib_pbl*, %struct.bnxt_qplib_pbl** %2, align 8
  %44 = getelementptr inbounds %struct.bnxt_qplib_pbl, %struct.bnxt_qplib_pbl* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ROCE_PG_SIZE_1G, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_1G, align 4
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %40
  %55 = phi i32 [ %41, %40 ], [ %53, %52 ]
  br label %56

56:                                               ; preds = %54, %32
  %57 = phi i32 [ %33, %32 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %24
  %59 = phi i32 [ %25, %24 ], [ %57, %56 ]
  br label %60

60:                                               ; preds = %58, %16
  %61 = phi i32 [ %17, %16 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %8
  %63 = phi i32 [ %9, %8 ], [ %61, %60 ]
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
