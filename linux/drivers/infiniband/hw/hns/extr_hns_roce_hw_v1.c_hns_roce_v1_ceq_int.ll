; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_ceq_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_ceq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hns_roce_eq = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hns_roce_ceqe = type { i32 }

@HNS_ROCE_CEQE_CEQE_COMP_CQN_M = common dso_local global i32 0, align 4
@HNS_ROCE_CEQE_CEQE_COMP_CQN_S = common dso_local global i32 0, align 4
@EQ_DEPTH_COEFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cons_index overflow, set back to 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_v1_ceq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_ceq_int(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca %struct.hns_roce_ceqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %48, %2
  %9 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %10 = call %struct.hns_roce_ceqe* @next_ceqe_sw_v1(%struct.hns_roce_eq* %9)
  store %struct.hns_roce_ceqe* %10, %struct.hns_roce_ceqe** %5, align 8
  %11 = icmp ne %struct.hns_roce_ceqe* %10, null
  br i1 %11, label %12, label %49

12:                                               ; preds = %8
  %13 = call i32 (...) @dma_rmb()
  %14 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %5, align 8
  %15 = getelementptr inbounds %struct.hns_roce_ceqe, %struct.hns_roce_ceqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HNS_ROCE_CEQE_CEQE_COMP_CQN_M, align 4
  %18 = load i32, i32* @HNS_ROCE_CEQE_CEQE_COMP_CQN_S, align 4
  %19 = call i32 @roce_get_field(i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @hns_roce_cq_completion(%struct.hns_roce_dev* %20, i32 %21)
  %23 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  store i32 1, i32* %6, align 4
  %27 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %28 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EQ_DEPTH_COEFF, align 4
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %30, %34
  %36 = sub nsw i32 %35, 1
  %37 = icmp sgt i32 %29, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %12
  %39 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %40 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %47 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %38, %12
  br label %8

49:                                               ; preds = %8
  %50 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %51 = call i32 @set_eq_cons_index_v1(%struct.hns_roce_eq* %50, i32 0)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local %struct.hns_roce_ceqe* @next_ceqe_sw_v1(%struct.hns_roce_eq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @hns_roce_cq_completion(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @set_eq_cons_index_v1(%struct.hns_roce_eq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
