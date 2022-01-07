; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_next_aeqe_sw_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_next_aeqe_sw_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_aeqe = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i32 }

@HNS_ROCE_V2_AEQ_AEQE_OWNER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_aeqe* (%struct.hns_roce_eq*)* @next_aeqe_sw_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_aeqe* @next_aeqe_sw_v2(%struct.hns_roce_eq* %0) #0 {
  %2 = alloca %struct.hns_roce_eq*, align 8
  %3 = alloca %struct.hns_roce_aeqe*, align 8
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %2, align 8
  %4 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %5 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %10 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %11 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hns_roce_aeqe* @get_aeqe_v2(%struct.hns_roce_eq* %9, i32 %12)
  store %struct.hns_roce_aeqe* %13, %struct.hns_roce_aeqe** %3, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %16 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %17 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hns_roce_aeqe* @mhop_get_aeqe(%struct.hns_roce_eq* %15, i32 %18)
  store %struct.hns_roce_aeqe* %19, %struct.hns_roce_aeqe** %3, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %3, align 8
  %22 = getelementptr inbounds %struct.hns_roce_aeqe, %struct.hns_roce_aeqe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HNS_ROCE_V2_AEQ_AEQE_OWNER_S, align 4
  %25 = call i32 @roce_get_bit(i32 %23, i32 %24)
  %26 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %27 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %30 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = xor i32 %25, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load %struct.hns_roce_aeqe*, %struct.hns_roce_aeqe** %3, align 8
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi %struct.hns_roce_aeqe* [ %40, %39 ], [ null, %41 ]
  ret %struct.hns_roce_aeqe* %43
}

declare dso_local %struct.hns_roce_aeqe* @get_aeqe_v2(%struct.hns_roce_eq*, i32) #1

declare dso_local %struct.hns_roce_aeqe* @mhop_get_aeqe(%struct.hns_roce_eq*, i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
