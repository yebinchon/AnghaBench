; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_cq = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ROCEE_SCAEP_WR_CQE_CNT = common dso_local global i32 0, align 4
@ROCEE_CAEP_CQE_WCMD_EMPTY = common dso_local global i32 0, align 4
@HNS_ROCE_CQE_WCMD_EMPTY_BIT = common dso_local global i32 0, align 4
@HNS_ROCE_MIN_CQE_CNT = common dso_local global i64 0, align 8
@HNS_ROCE_EACH_FREE_CQ_WAIT_MSECS = common dso_local global i32 0, align 4
@HNS_ROCE_MAX_FREE_CQ_WAIT_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Destroy cq 0x%lx timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_udata*)* @hns_roce_v1_destroy_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cq*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %13 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.hns_roce_dev* @to_hr_dev(i32 %14)
  store %struct.hns_roce_dev* %15, %struct.hns_roce_dev** %5, align 8
  %16 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %17 = call %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq* %16)
  store %struct.hns_roce_cq* %17, %struct.hns_roce_cq** %6, align 8
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %7, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %24 = call i32 @hns_roce_free_cq(%struct.hns_roce_dev* %22, %struct.hns_roce_cq* %23)
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %26 = load i32, i32* @ROCEE_SCAEP_WR_CQE_CNT, align 4
  %27 = call i32 @roce_read(%struct.hns_roce_dev* %25, i32 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %2, %60
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %31 = load i32, i32* @ROCEE_CAEP_CQE_WCMD_EMPTY, align 4
  %32 = call i32 @roce_read(%struct.hns_roce_dev* %30, i32 %31)
  %33 = load i32, i32* @HNS_ROCE_CQE_WCMD_EMPTY_BIT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %63

37:                                               ; preds = %29
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %39 = load i32, i32* @ROCEE_SCAEP_WR_CQE_CNT, align 4
  %40 = call i32 @roce_read(%struct.hns_roce_dev* %38, i32 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %42, %43
  %45 = load i64, i64* @HNS_ROCE_MIN_CQE_CNT, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %63

48:                                               ; preds = %37
  %49 = load i32, i32* @HNS_ROCE_EACH_FREE_CQ_WAIT_MSECS, align 4
  %50 = call i32 @msleep(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @HNS_ROCE_MAX_FREE_CQ_WAIT_CNT, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %57 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_warn(%struct.device* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %29

63:                                               ; preds = %54, %47, %36
  %64 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %65 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %66 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %64, i32* %67)
  %69 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %70 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ib_umem_release(i32 %71)
  %73 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %74 = icmp ne %struct.ib_udata* %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %63
  %76 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %77 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %81 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %79, %83
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %10, align 8
  %86 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %89 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %86, i64 %87, i32* %90)
  br label %92

92:                                               ; preds = %75, %63
  ret void
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_cq* @to_hr_cq(%struct.ib_cq*) #1

declare dso_local i32 @hns_roce_free_cq(%struct.hns_roce_dev*, %struct.hns_roce_cq*) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
