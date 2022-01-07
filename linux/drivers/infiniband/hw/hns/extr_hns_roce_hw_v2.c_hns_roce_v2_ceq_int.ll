; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_ceq_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_ceq_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_eq = type { i32, i32 }
%struct.hns_roce_ceqe = type { i32 }

@HNS_ROCE_V2_CEQE_COMP_CQN_M = common dso_local global i32 0, align 4
@HNS_ROCE_V2_CEQE_COMP_CQN_S = common dso_local global i32 0, align 4
@EQ_DEPTH_COEFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cons_index overflow, set back to 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_eq*)* @hns_roce_v2_ceq_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_ceq_int(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hns_roce_ceqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %4, align 8
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %13 = call %struct.hns_roce_ceqe* @next_ceqe_sw_v2(%struct.hns_roce_eq* %12)
  store %struct.hns_roce_ceqe* %13, %struct.hns_roce_ceqe** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %47, %2
  %15 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %6, align 8
  %16 = icmp ne %struct.hns_roce_ceqe* %15, null
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = call i32 (...) @dma_rmb()
  %19 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %6, align 8
  %20 = getelementptr inbounds %struct.hns_roce_ceqe, %struct.hns_roce_ceqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HNS_ROCE_V2_CEQE_COMP_CQN_M, align 4
  %23 = load i32, i32* @HNS_ROCE_V2_CEQE_COMP_CQN_S, align 4
  %24 = call i32 @roce_get_field(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @hns_roce_cq_completion(%struct.hns_roce_dev* %25, i32 %26)
  %28 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %29 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  store i32 1, i32* %7, align 4
  %32 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %33 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EQ_DEPTH_COEFF, align 4
  %36 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sub nsw i32 %39, 1
  %41 = icmp sgt i32 %34, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %17
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_warn(%struct.device* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %46 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %17
  %48 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %49 = call %struct.hns_roce_ceqe* @next_ceqe_sw_v2(%struct.hns_roce_eq* %48)
  store %struct.hns_roce_ceqe* %49, %struct.hns_roce_ceqe** %6, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %4, align 8
  %52 = call i32 @set_eq_cons_index_v2(%struct.hns_roce_eq* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.hns_roce_ceqe* @next_ceqe_sw_v2(%struct.hns_roce_eq*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @roce_get_field(i32, i32, i32) #1

declare dso_local i32 @hns_roce_cq_completion(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @set_eq_cons_index_v2(%struct.hns_roce_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
