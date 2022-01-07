; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_cm_id = type { i64 }
%struct.qedr_iw_ep = type { i32*, i32, %struct.qedr_dev* }
%struct.qedr_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_iwarp_reject_in*)* }
%struct.qed_iwarp_reject_in = type { i32, i8*, %struct.qedr_iw_ep*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_iw_reject(%struct.iw_cm_id* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_iw_ep*, align 8
  %8 = alloca %struct.qedr_dev*, align 8
  %9 = alloca %struct.qed_iwarp_reject_in, align 8
  store %struct.iw_cm_id* %0, %struct.iw_cm_id** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %11 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %13, %struct.qedr_iw_ep** %7, align 8
  %14 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %15 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %14, i32 0, i32 2
  %16 = load %struct.qedr_dev*, %struct.qedr_dev** %15, align 8
  store %struct.qedr_dev* %16, %struct.qedr_dev** %8, align 8
  %17 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %18 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %9, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %22 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %9, i32 0, i32 2
  store %struct.qedr_iw_ep* %21, %struct.qedr_iw_ep** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %28 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %30 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.qed_iwarp_reject_in*)*, i32 (i32, %struct.qed_iwarp_reject_in*)** %32, align 8
  %34 = load %struct.qedr_dev*, %struct.qedr_dev** %8, align 8
  %35 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36, %struct.qed_iwarp_reject_in* %9)
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
