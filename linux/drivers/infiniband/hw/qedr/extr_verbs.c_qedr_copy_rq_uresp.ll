; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_rq_uresp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_copy_rq_uresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.qedr_create_qp_uresp = type { i32, i8*, i8* }
%struct.qedr_qp = type { i32 }

@DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD = common dso_local global i32 0, align 4
@DQ_PWM_OFFSET_TCM_FLAGS = common dso_local global i32 0, align 4
@DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_dev*, %struct.qedr_create_qp_uresp*, %struct.qedr_qp*)* @qedr_copy_rq_uresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_copy_rq_uresp(%struct.qedr_dev* %0, %struct.qedr_create_qp_uresp* %1, %struct.qedr_qp* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_create_qp_uresp*, align 8
  %6 = alloca %struct.qedr_qp*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_create_qp_uresp* %1, %struct.qedr_create_qp_uresp** %5, align 8
  store %struct.qedr_qp* %2, %struct.qedr_qp** %6, align 8
  %7 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %8 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %7, i32 0, i32 0
  %9 = call i64 @rdma_protocol_iwarp(i32* %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load i32, i32* @DQ_PWM_OFFSET_TCM_IWARP_RQ_PROD, align 4
  %13 = call i8* @DB_ADDR_SHIFT(i32 %12)
  %14 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %15 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @DQ_PWM_OFFSET_TCM_FLAGS, align 4
  %17 = call i8* @DB_ADDR_SHIFT(i32 %16)
  %18 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %19 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @DQ_PWM_OFFSET_TCM_ROCE_RQ_PROD, align 4
  %22 = call i8* @DB_ADDR_SHIFT(i32 %21)
  %23 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %24 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %20, %11
  %26 = load %struct.qedr_qp*, %struct.qedr_qp** %6, align 8
  %27 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qedr_create_qp_uresp*, %struct.qedr_create_qp_uresp** %5, align 8
  %30 = getelementptr inbounds %struct.qedr_create_qp_uresp, %struct.qedr_create_qp_uresp* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

declare dso_local i8* @DB_ADDR_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
