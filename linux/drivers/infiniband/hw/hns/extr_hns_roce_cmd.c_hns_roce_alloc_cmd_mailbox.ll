; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_alloc_cmd_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_alloc_cmd_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_cmd_mailbox = type { i32, i32 }
%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hns_roce_cmd_mailbox* @hns_roce_alloc_cmd_mailbox(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hns_roce_cmd_mailbox* @kmalloc(i32 8, i32 %5)
  store %struct.hns_roce_cmd_mailbox* %6, %struct.hns_roce_cmd_mailbox** %4, align 8
  %7 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %8 = icmp ne %struct.hns_roce_cmd_mailbox* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.hns_roce_cmd_mailbox* @ERR_PTR(i32 %11)
  store %struct.hns_roce_cmd_mailbox* %12, %struct.hns_roce_cmd_mailbox** %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %20 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %19, i32 0, i32 1
  %21 = call i32 @dma_pool_alloc(i32 %17, i32 %18, i32* %20)
  %22 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %25 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %13
  %29 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  %30 = call i32 @kfree(%struct.hns_roce_cmd_mailbox* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.hns_roce_cmd_mailbox* @ERR_PTR(i32 %32)
  store %struct.hns_roce_cmd_mailbox* %33, %struct.hns_roce_cmd_mailbox** %2, align 8
  br label %36

34:                                               ; preds = %13
  %35 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %4, align 8
  store %struct.hns_roce_cmd_mailbox* %35, %struct.hns_roce_cmd_mailbox** %2, align 8
  br label %36

36:                                               ; preds = %34, %28, %9
  %37 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %2, align 8
  ret %struct.hns_roce_cmd_mailbox* %37
}

declare dso_local %struct.hns_roce_cmd_mailbox* @kmalloc(i32, i32) #1

declare dso_local %struct.hns_roce_cmd_mailbox* @ERR_PTR(i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.hns_roce_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
