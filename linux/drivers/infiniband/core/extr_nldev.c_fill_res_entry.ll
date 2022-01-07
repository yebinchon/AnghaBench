; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_res_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_nldev.c_fill_res_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)* }
%struct.sk_buff = type { i32 }
%struct.rdma_restrack_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.sk_buff*, %struct.rdma_restrack_entry*)* @fill_res_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_res_entry(%struct.ib_device* %0, %struct.sk_buff* %1, %struct.rdma_restrack_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rdma_restrack_entry*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.rdma_restrack_entry* %2, %struct.rdma_restrack_entry** %7, align 8
  %8 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %9 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)*, i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)** %10, align 8
  %12 = icmp ne i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

14:                                               ; preds = %3
  %15 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %16 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)*, i32 (%struct.sk_buff*, %struct.rdma_restrack_entry*)** %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = load %struct.rdma_restrack_entry*, %struct.rdma_restrack_entry** %7, align 8
  %21 = call i32 %18(%struct.sk_buff* %19, %struct.rdma_restrack_entry* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
