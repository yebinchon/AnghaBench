; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init_irq_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init_irq_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_eq = type { i32, i32 }
%struct.hns_roce_work = type { i32, i32, i32, i8*, i8*, %struct.hns_roce_dev* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@hns_roce_irq_work_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_eq*, i8*, i8*)* @hns_roce_v2_init_irq_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_init_irq_work(%struct.hns_roce_dev* %0, %struct.hns_roce_eq* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_eq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hns_roce_work*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_eq* %1, %struct.hns_roce_eq** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.hns_roce_work* @kzalloc(i32 40, i32 %10)
  store %struct.hns_roce_work* %11, %struct.hns_roce_work** %9, align 8
  %12 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %13 = icmp ne %struct.hns_roce_work* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %45

15:                                               ; preds = %4
  %16 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %17 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %16, i32 0, i32 0
  %18 = load i32, i32* @hns_roce_irq_work_handle, align 4
  %19 = call i32 @INIT_WORK(i32* %17, i32 %18)
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %21 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %22 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %21, i32 0, i32 5
  store %struct.hns_roce_dev* %20, %struct.hns_roce_dev** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %25 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %28 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %33 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %35 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %38 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hns_roce_work*, %struct.hns_roce_work** %9, align 8
  %43 = getelementptr inbounds %struct.hns_roce_work, %struct.hns_roce_work* %42, i32 0, i32 0
  %44 = call i32 @queue_work(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.hns_roce_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
