; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_sges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_sq_sges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.rdma_sq_sge = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_qp*, i32*, %struct.ib_send_wr*)* @qedr_prepare_sq_sges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_prepare_sq_sges(%struct.qedr_qp* %0, i32* %1, %struct.ib_send_wr* %2) #0 {
  %4 = alloca %struct.qedr_qp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ib_send_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rdma_sq_sge*, align 8
  store %struct.qedr_qp* %0, %struct.qedr_qp** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %13 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %18 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call %struct.rdma_sq_sge* @qed_chain_produce(i32* %19)
  store %struct.rdma_sq_sge* %20, %struct.rdma_sq_sge** %9, align 8
  %21 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %9, align 8
  %22 = getelementptr inbounds %struct.rdma_sq_sge, %struct.rdma_sq_sge* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @DMA_REGPAIR_LE(i32 %23, i32 %31)
  %33 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %9, align 8
  %43 = getelementptr inbounds %struct.rdma_sq_sge, %struct.rdma_sq_sge* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.rdma_sq_sge*, %struct.rdma_sq_sge** %9, align 8
  %54 = getelementptr inbounds %struct.rdma_sq_sge, %struct.rdma_sq_sge* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %56 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %16
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.ib_send_wr*, %struct.ib_send_wr** %6, align 8
  %75 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local %struct.rdma_sq_sge* @qed_chain_produce(i32*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
