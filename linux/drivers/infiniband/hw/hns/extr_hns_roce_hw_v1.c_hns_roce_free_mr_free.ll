; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_free_mr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_free_mr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_free_mr = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_free_mr }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_free_mr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_free_mr_free(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_free_mr*, align 8
  %4 = alloca %struct.hns_roce_v1_priv*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %5 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %8, %struct.hns_roce_v1_priv** %4, align 8
  %9 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %9, i32 0, i32 0
  store %struct.hns_roce_free_mr* %10, %struct.hns_roce_free_mr** %3, align 8
  %11 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %3, align 8
  %12 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @flush_workqueue(i32 %13)
  %15 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @destroy_workqueue(i32 %17)
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %20 = call i32 @hns_roce_v1_release_lp_qp(%struct.hns_roce_dev* %19)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hns_roce_v1_release_lp_qp(%struct.hns_roce_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
