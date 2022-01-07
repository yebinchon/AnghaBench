; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_add_qpn_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_add_qpn_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.ocrdma_qp** }
%struct.ocrdma_qp = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@OCRDMA_MAX_QP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_qp*)* @ocrdma_add_qpn_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_add_qpn_map(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OCRDMA_MAX_QP, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 0
  %16 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %15, align 8
  %17 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.ocrdma_qp*, %struct.ocrdma_qp** %16, i64 %19
  %21 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %20, align 8
  %22 = icmp eq %struct.ocrdma_qp* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %13
  %24 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %25 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %26 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %25, i32 0, i32 0
  %27 = load %struct.ocrdma_qp**, %struct.ocrdma_qp*** %26, align 8
  %28 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %29 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ocrdma_qp*, %struct.ocrdma_qp** %27, i64 %30
  store %struct.ocrdma_qp* %24, %struct.ocrdma_qp** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %23, %13, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
