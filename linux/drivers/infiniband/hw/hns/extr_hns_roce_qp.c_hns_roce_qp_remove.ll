; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.xarray }
%struct.TYPE_2__ = type { i32 }
%struct.xarray = type { i32 }
%struct.hns_roce_qp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_qp_remove(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.xarray*, align 8
  %6 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %4, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 1
  store %struct.xarray* %8, %struct.xarray** %5, align 8
  %9 = load %struct.xarray*, %struct.xarray** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @xa_lock_irqsave(%struct.xarray* %9, i64 %10)
  %12 = load %struct.xarray*, %struct.xarray** %5, align 8
  %13 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %15, %20
  %22 = call i32 @__xa_erase(%struct.xarray* %12, i32 %21)
  %23 = load %struct.xarray*, %struct.xarray** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @xa_unlock_irqrestore(%struct.xarray* %23, i64 %24)
  ret void
}

declare dso_local i32 @xa_lock_irqsave(%struct.xarray*, i64) #1

declare dso_local i32 @__xa_erase(%struct.xarray*, i32) #1

declare dso_local i32 @xa_unlock_irqrestore(%struct.xarray*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
