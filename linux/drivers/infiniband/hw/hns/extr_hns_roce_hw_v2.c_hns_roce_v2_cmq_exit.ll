; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmq_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_cmq_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64 }
%struct.hns_roce_v2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_v2_cmq_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_cmq_exit(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca %struct.hns_roce_v2_priv*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  %4 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.hns_roce_v2_priv*
  store %struct.hns_roce_v2_priv* %7, %struct.hns_roce_v2_priv** %3, align 8
  %8 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %9 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @hns_roce_free_cmq_desc(%struct.hns_roce_dev* %8, i32* %11)
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %14 = load %struct.hns_roce_v2_priv*, %struct.hns_roce_v2_priv** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_v2_priv, %struct.hns_roce_v2_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @hns_roce_free_cmq_desc(%struct.hns_roce_dev* %13, i32* %16)
  ret void
}

declare dso_local i32 @hns_roce_free_cmq_desc(%struct.hns_roce_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
