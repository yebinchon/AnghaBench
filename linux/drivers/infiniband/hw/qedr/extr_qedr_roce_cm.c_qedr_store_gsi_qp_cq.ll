; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_store_gsi_qp_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_store_gsi_qp_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.qedr_qp*, i8*, i8* }
%struct.qedr_qp = type { i32 }
%struct.ib_qp_init_attr = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedr_store_gsi_qp_cq(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.qedr_qp*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %5, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %6, align 8
  %7 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %8 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %10 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @get_qedr_cq(i32 %11)
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %14 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %16 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @get_qedr_cq(i32 %17)
  %19 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %20 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.qedr_qp*, %struct.qedr_qp** %5, align 8
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %23 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %22, i32 0, i32 1
  store %struct.qedr_qp* %21, %struct.qedr_qp** %23, align 8
  ret void
}

declare dso_local i8* @get_qedr_cq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
