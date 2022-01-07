; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_alloc_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_alloc_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_mailbox = type { i32, i32 }
%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mthca_mailbox*, align 8
  %4 = alloca %struct.mthca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mthca_mailbox*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.mthca_mailbox* @kmalloc(i32 8, i32 %7)
  store %struct.mthca_mailbox* %8, %struct.mthca_mailbox** %6, align 8
  %9 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %10 = icmp ne %struct.mthca_mailbox* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mthca_mailbox* @ERR_PTR(i32 %13)
  store %struct.mthca_mailbox* %14, %struct.mthca_mailbox** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %22 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %21, i32 0, i32 1
  %23 = call i32 @dma_pool_alloc(i32 %19, i32 %20, i32* %22)
  %24 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %25 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %27 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %15
  %31 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  %32 = call i32 @kfree(%struct.mthca_mailbox* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.mthca_mailbox* @ERR_PTR(i32 %34)
  store %struct.mthca_mailbox* %35, %struct.mthca_mailbox** %3, align 8
  br label %38

36:                                               ; preds = %15
  %37 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %6, align 8
  store %struct.mthca_mailbox* %37, %struct.mthca_mailbox** %3, align 8
  br label %38

38:                                               ; preds = %36, %30, %11
  %39 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %3, align 8
  ret %struct.mthca_mailbox* %39
}

declare dso_local %struct.mthca_mailbox* @kmalloc(i32, i32) #1

declare dso_local %struct.mthca_mailbox* @ERR_PTR(i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
