; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_free_cmd_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_free_cmd_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_free_cmd_mailbox(%struct.hns_roce_dev* %0, %struct.hns_roce_cmd_mailbox* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_cmd_mailbox* %1, %struct.hns_roce_cmd_mailbox** %4, align 8
  %5 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %6 = icmp ne %struct.hns_roce_cmd_mailbox* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %22

8:                                                ; preds = %2
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dma_pool_free(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %21 = call i32 @kfree(%struct.hns_roce_cmd_mailbox* %20)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
