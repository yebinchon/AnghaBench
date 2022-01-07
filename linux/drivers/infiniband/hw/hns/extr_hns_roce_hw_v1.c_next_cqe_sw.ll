; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_next_cqe_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_next_cqe_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cqe = type { i32 }
%struct.hns_roce_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_roce_cqe* (%struct.hns_roce_cq*)* @next_cqe_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_roce_cqe* @next_cqe_sw(%struct.hns_roce_cq* %0) #0 {
  %2 = alloca %struct.hns_roce_cq*, align 8
  store %struct.hns_roce_cq* %0, %struct.hns_roce_cq** %2, align 8
  %3 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %2, align 8
  %4 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %2, align 8
  %5 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.hns_roce_cqe* @get_sw_cqe(%struct.hns_roce_cq* %3, i32 %6)
  ret %struct.hns_roce_cqe* %7
}

declare dso_local %struct.hns_roce_cqe* @get_sw_cqe(%struct.hns_roce_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
