; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_cqe_status_flushed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_cqe_status_flushed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i64 }
%struct.ocrdma_cqe = type { i8* }

@OCRDMA_CQE_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@OCRDMA_CQE_STATUS_SHIFT = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_GSI = common dso_local global i64 0, align 8
@OCRDMA_CQE_UD_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_STATUS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_cqe*)* @ocrdma_set_cqe_status_flushed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_cqe_status_flushed(%struct.ocrdma_qp* %0, %struct.ocrdma_cqe* %1) #0 {
  %3 = alloca %struct.ocrdma_qp*, align 8
  %4 = alloca %struct.ocrdma_cqe*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %3, align 8
  store %struct.ocrdma_cqe* %1, %struct.ocrdma_cqe** %4, align 8
  %5 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %6 = call i64 @is_cqe_for_sq(%struct.ocrdma_cqe* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %10 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @le32_to_cpu(i8* %11)
  %13 = load i32, i32* @OCRDMA_CQE_STATUS_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %20 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @le32_to_cpu(i8* %21)
  %23 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  %24 = load i32, i32* @OCRDMA_CQE_STATUS_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %29 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  br label %87

30:                                               ; preds = %2
  %31 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %32 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IB_QPT_UD, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %3, align 8
  %38 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IB_QPT_GSI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %36, %30
  %43 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %44 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @le32_to_cpu(i8* %45)
  %47 = load i32, i32* @OCRDMA_CQE_UD_STATUS_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %52 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %54 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @le32_to_cpu(i8* %55)
  %57 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  %58 = load i32, i32* @OCRDMA_CQE_UD_STATUS_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %56, %59
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %63 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %86

64:                                               ; preds = %36
  %65 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %66 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @le32_to_cpu(i8* %67)
  %69 = load i32, i32* @OCRDMA_CQE_STATUS_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %74 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %76 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @le32_to_cpu(i8* %77)
  %79 = load i32, i32* @OCRDMA_CQE_WR_FLUSH_ERR, align 4
  %80 = load i32, i32* @OCRDMA_CQE_STATUS_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %4, align 8
  %85 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %64, %42
  br label %87

87:                                               ; preds = %86, %8
  ret void
}

declare dso_local i64 @is_cqe_for_sq(%struct.ocrdma_cqe*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
