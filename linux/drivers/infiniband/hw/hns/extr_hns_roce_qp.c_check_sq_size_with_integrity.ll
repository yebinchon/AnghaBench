; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_check_sq_size_with_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_check_sq_size_with_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.ib_qp_cap = type { i64 }
%struct.hns_roce_ib_create_qp = type { i32, i64 }

@HNS_ROCE_IB_MIN_SQ_STRIDE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"check SQ size error!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"SQ sge error! max_send_sge=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.ib_qp_cap*, %struct.hns_roce_ib_create_qp*)* @check_sq_size_with_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sq_size_with_integrity(%struct.hns_roce_dev* %0, %struct.ib_qp_cap* %1, %struct.hns_roce_ib_create_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.ib_qp_cap*, align 8
  %7 = alloca %struct.hns_roce_ib_create_qp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %6, align 8
  store %struct.hns_roce_ib_create_qp* %2, %struct.hns_roce_ib_create_qp** %7, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @roundup_pow_of_two(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @ilog2(i64 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.hns_roce_ib_create_qp*, %struct.hns_roce_ib_create_qp** %7, align 8
  %18 = getelementptr inbounds %struct.hns_roce_ib_create_qp, %struct.hns_roce_ib_create_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %3
  %28 = load %struct.hns_roce_ib_create_qp*, %struct.hns_roce_ib_create_qp** %7, align 8
  %29 = getelementptr inbounds %struct.hns_roce_ib_create_qp, %struct.hns_roce_ib_create_qp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.hns_roce_ib_create_qp*, %struct.hns_roce_ib_create_qp** %7, align 8
  %35 = getelementptr inbounds %struct.hns_roce_ib_create_qp, %struct.hns_roce_ib_create_qp* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HNS_ROCE_IB_MIN_SQ_STRIDE, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33, %27, %3
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @ibdev_err(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %33
  %46 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %47 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %50 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %48, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %56 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %55, i32 0, i32 0
  %57 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %6, align 8
  %58 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32*, i8*, ...) @ibdev_err(i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %54, %39
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i64 @ilog2(i64) #1

declare dso_local i32 @ibdev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
