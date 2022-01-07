; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_next_ceqe_sw_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_next_ceqe_sw_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_ceqe = type { i32 }
%struct.hns_roce_eq = type { i32, i32, i32 }

@HNS_ROCE_V2_CEQ_CEQE_OWNER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_ceqe* (%struct.hns_roce_eq*)* @next_ceqe_sw_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_ceqe* @next_ceqe_sw_v2(%struct.hns_roce_eq* %0) #0 {
  %2 = alloca %struct.hns_roce_eq*, align 8
  %3 = alloca %struct.hns_roce_ceqe*, align 8
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
  %13 = call %struct.hns_roce_ceqe* @get_ceqe_v2(%struct.hns_roce_eq* %9, i32 %12)
  store %struct.hns_roce_ceqe* %13, %struct.hns_roce_ceqe** %3, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %16 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %17 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hns_roce_ceqe* @mhop_get_ceqe(%struct.hns_roce_eq* %15, i32 %18)
  store %struct.hns_roce_ceqe* %19, %struct.hns_roce_ceqe** %3, align 8
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %3, align 8
  %22 = getelementptr inbounds %struct.hns_roce_ceqe, %struct.hns_roce_ceqe* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HNS_ROCE_V2_CEQ_CEQE_OWNER_S, align 4
  %25 = call i32 @roce_get_bit(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %31 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %34 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = xor i32 %29, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %3, align 8
  br label %46

45:                                               ; preds = %20
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi %struct.hns_roce_ceqe* [ %44, %43 ], [ null, %45 ]
  ret %struct.hns_roce_ceqe* %47
}

declare dso_local %struct.hns_roce_ceqe* @get_ceqe_v2(%struct.hns_roce_eq*, i32) #1

declare dso_local %struct.hns_roce_ceqe* @mhop_get_ceqe(%struct.hns_roce_eq*, i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
