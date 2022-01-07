; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_handle_error_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_handle_error_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_err_cqe = type { i32, i32 }
%struct.ib_wc = type { i32, i32 }

@IB_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IB_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IB_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IB_WC_LOC_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IB_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_err_cqe*, %struct.ib_wc*)* @mlx5_handle_error_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_handle_error_cqe(%struct.mlx5_ib_dev* %0, %struct.mlx5_err_cqe* %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_err_cqe*, align 8
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_err_cqe* %1, %struct.mlx5_err_cqe** %5, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %63 [
    i32 138, label %11
    i32 136, label %15
    i32 137, label %19
    i32 128, label %23
    i32 135, label %27
    i32 140, label %31
    i32 139, label %35
    i32 132, label %39
    i32 133, label %43
    i32 131, label %47
    i32 129, label %51
    i32 130, label %55
    i32 134, label %59
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @IB_WC_LOC_LEN_ERR, align 4
  %13 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %14 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %17 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %18 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %67

19:                                               ; preds = %3
  %20 = load i32, i32* @IB_WC_LOC_PROT_ERR, align 4
  %21 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %67

23:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %25 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %67

27:                                               ; preds = %3
  %28 = load i32, i32* @IB_WC_MW_BIND_ERR, align 4
  %29 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %30 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %67

31:                                               ; preds = %3
  %32 = load i32, i32* @IB_WC_BAD_RESP_ERR, align 4
  %33 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %67

35:                                               ; preds = %3
  %36 = load i32, i32* @IB_WC_LOC_ACCESS_ERR, align 4
  %37 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %38 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %67

39:                                               ; preds = %3
  %40 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  %41 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %42 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %67

43:                                               ; preds = %3
  %44 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  %45 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %46 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %67

47:                                               ; preds = %3
  %48 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  %49 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %50 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %67

51:                                               ; preds = %3
  %52 = load i32, i32* @IB_WC_RETRY_EXC_ERR, align 4
  %53 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %54 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %7, align 4
  br label %67

55:                                               ; preds = %3
  %56 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  %57 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %58 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %7, align 4
  br label %67

59:                                               ; preds = %3
  %60 = load i32, i32* @IB_WC_REM_ABORT_ERR, align 4
  %61 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %62 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %3
  %64 = load i32, i32* @IB_WC_GENERAL_ERR, align 4
  %65 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %66 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11
  %68 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %5, align 8
  %69 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %72 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %77 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %5, align 8
  %78 = call i32 @dump_cqe(%struct.mlx5_ib_dev* %76, %struct.mlx5_err_cqe* %77)
  br label %79

79:                                               ; preds = %75, %67
  ret void
}

declare dso_local i32 @dump_cqe(%struct.mlx5_ib_dev*, %struct.mlx5_err_cqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
