; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_sq_uresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_sq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_create_qp_uresp = type { i64, i32 }
%struct.qedr_qp = type { i64 }

@DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_create_qp_uresp*, %struct.qedr_qp*)* @qedr_copy_sq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_copy_sq_uresp(%struct.qedr_dev* %0, %struct.qedr_create_qp_uresp* %1, %struct.qedr_qp* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_create_qp_uresp*, align 8
  %6 = alloca %struct.qedr_qp*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_create_qp_uresp* %1, %struct.qedr_create_qp_uresp** %5, align 8
  store %struct.qedr_qp* %2, %struct.qedr_qp** %6, align 8
  %7 = load i32, i32* @DQ_PWM_OFFSET_XCM_RDMA_SQ_PROD, align 4
  %8 = call i32 @DB_ADDR_SHIFT(i32 %7)
  %9 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %10 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %12 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %11, i32 0, i32 0
  %13 = call i64 @rdma_protocol_iwarp(i32* %12, i32 1)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %17 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %20 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %23 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %27 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @DB_ADDR_SHIFT(i32) #1

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
