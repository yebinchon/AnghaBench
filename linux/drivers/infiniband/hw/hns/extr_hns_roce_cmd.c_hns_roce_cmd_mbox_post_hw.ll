; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_mbox_post_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cmd.c_hns_roce_cmd_mbox_post_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__*, %struct.hns_roce_cmdq }
%struct.TYPE_2__ = type { {}* }
%struct.hns_roce_cmdq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32)* @hns_roce_cmd_mbox_post_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_cmd_mbox_post_hw(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hns_roce_cmdq*, align 8
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 1
  store %struct.hns_roce_cmdq* %20, %struct.hns_roce_cmdq** %17, align 8
  %21 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %17, align 8
  %22 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32)**
  %29 = load i32 (%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.hns_roce_dev*, i32, i32, i32, i32, i32, i32, i32)** %28, align 8
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 %29(%struct.hns_roce_dev* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %18, align 4
  %39 = load %struct.hns_roce_cmdq*, %struct.hns_roce_cmdq** %17, align 8
  %40 = getelementptr inbounds %struct.hns_roce_cmdq, %struct.hns_roce_cmdq* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %18, align 4
  ret i32 %42
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
