; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_record_opt_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_record_opt_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i64, i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.hns_roce_qp = type { i64, i32, i32, i32 }

@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*, %struct.ib_qp_attr*, i32)* @hns_roce_v2_record_opt_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_record_opt_fields(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_qp_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_dev*, align 8
  %8 = alloca %struct.hns_roce_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hns_roce_dev* @to_hr_dev(i32 %11)
  store %struct.hns_roce_dev* %12, %struct.hns_roce_dev** %7, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %14 = call %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp* %13)
  store %struct.hns_roce_qp* %14, %struct.hns_roce_qp** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %24 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %35 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @IB_QP_PORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %44, 1
  %46 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %47 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %7, align 8
  %49 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %53 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %8, align 8
  %58 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %41, %36
  ret void
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_qp* @to_hr_qp(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
