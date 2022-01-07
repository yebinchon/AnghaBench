; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_next_ceqe_sw_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_next_ceqe_sw_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_ceqe = type { i32 }
%struct.hns_roce_eq = type { i32, i32 }

@HNS_ROCE_CEQE_CEQE_COMP_OWNER_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_ceqe* (%struct.hns_roce_eq*)* @next_ceqe_sw_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_ceqe* @next_ceqe_sw_v1(%struct.hns_roce_eq* %0) #0 {
  %2 = alloca %struct.hns_roce_eq*, align 8
  %3 = alloca %struct.hns_roce_ceqe*, align 8
  store %struct.hns_roce_eq* %0, %struct.hns_roce_eq** %2, align 8
  %4 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %5 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hns_roce_ceqe* @get_ceqe_v1(%struct.hns_roce_eq* %4, i32 %7)
  store %struct.hns_roce_ceqe* %8, %struct.hns_roce_ceqe** %3, align 8
  %9 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_ceqe, %struct.hns_roce_ceqe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HNS_ROCE_CEQE_CEQE_COMP_OWNER_S, align 4
  %13 = call i32 @roce_get_bit(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %19 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %2, align 8
  %22 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = xor i32 %17, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load %struct.hns_roce_ceqe*, %struct.hns_roce_ceqe** %3, align 8
  br label %34

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi %struct.hns_roce_ceqe* [ %32, %31 ], [ null, %33 ]
  ret %struct.hns_roce_ceqe* %35
}

declare dso_local %struct.hns_roce_ceqe* @get_ceqe_v1(%struct.hns_roce_eq*, i32) #1

declare dso_local i32 @roce_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
