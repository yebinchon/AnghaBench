; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_gsi_qp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_gsi_qp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_2__, %struct.xarray }
%struct.TYPE_2__ = type { i32 }
%struct.xarray = type { i32 }
%struct.hns_roce_qp = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"QPC xa_store failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i64, %struct.hns_roce_qp*)* @hns_roce_gsi_qp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_gsi_qp_alloc(%struct.hns_roce_dev* %0, i64 %1, %struct.hns_roce_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hns_roce_qp*, align 8
  %8 = alloca %struct.xarray*, align 8
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hns_roce_qp* %2, %struct.hns_roce_qp** %7, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 2
  store %struct.xarray* %11, %struct.xarray** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %20 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %22 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %21, i32 0, i32 2
  %23 = call i32 @atomic_set(i32* %22, i32 1)
  %24 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %25 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %24, i32 0, i32 1
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.xarray*, %struct.xarray** %8, align 8
  %28 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %30, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @xa_store_irq(%struct.xarray* %27, i32 %38, %struct.hns_roce_qp* %39, i32 %40)
  %42 = call i32 @xa_err(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %17
  %46 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %17
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @xa_err(i32) #1

declare dso_local i32 @xa_store_irq(%struct.xarray*, i32, %struct.hns_roce_qp*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
