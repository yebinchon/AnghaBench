; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_cq = type { i32 (%struct.hns_roce_cq*)*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Completion event for bogus CQ 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cq_completion(%struct.hns_roce_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hns_roce_cq*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 2
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %13, %18
  %20 = call %struct.hns_roce_cq* @xa_load(i32* %12, i32 %19)
  store %struct.hns_roce_cq* %20, %struct.hns_roce_cq** %6, align 8
  %21 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %22 = icmp ne %struct.hns_roce_cq* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_warn(%struct.device* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %29 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %33 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %32, i32 0, i32 0
  %34 = load i32 (%struct.hns_roce_cq*)*, i32 (%struct.hns_roce_cq*)** %33, align 8
  %35 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %6, align 8
  %36 = call i32 %34(%struct.hns_roce_cq* %35)
  br label %37

37:                                               ; preds = %27, %23
  ret void
}

declare dso_local %struct.hns_roce_cq* @xa_load(i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
