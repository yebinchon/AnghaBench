; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device*, %struct.hns_roce_cq_table }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_cq_table = type { i32 }
%struct.hns_roce_cq = type { i32, i32, i32 (%struct.hns_roce_cq*, i32)* }

@.str = private unnamed_addr constant [31 x i8] c"Async event for bogus CQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_cq_event(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_cq_table*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hns_roce_cq*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %11 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %10, i32 0, i32 2
  store %struct.hns_roce_cq_table* %11, %struct.hns_roce_cq_table** %7, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %12, i32 0, i32 1
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.hns_roce_cq_table*, %struct.hns_roce_cq_table** %7, align 8
  %16 = getelementptr inbounds %struct.hns_roce_cq_table, %struct.hns_roce_cq_table* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %17, %22
  %24 = call %struct.hns_roce_cq* @xa_load(i32* %16, i32 %23)
  store %struct.hns_roce_cq* %24, %struct.hns_roce_cq** %9, align 8
  %25 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %26 = icmp ne %struct.hns_roce_cq* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %29 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %28, i32 0, i32 1
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %33 = icmp ne %struct.hns_roce_cq* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %53

38:                                               ; preds = %31
  %39 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %40 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %39, i32 0, i32 2
  %41 = load i32 (%struct.hns_roce_cq*, i32)*, i32 (%struct.hns_roce_cq*, i32)** %40, align 8
  %42 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %41(%struct.hns_roce_cq* %42, i32 %43)
  %45 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %46 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %45, i32 0, i32 1
  %47 = call i64 @atomic_dec_and_test(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.hns_roce_cq*, %struct.hns_roce_cq** %9, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cq, %struct.hns_roce_cq* %50, i32 0, i32 0
  %52 = call i32 @complete(i32* %51)
  br label %53

53:                                               ; preds = %34, %49, %38
  ret void
}

declare dso_local %struct.hns_roce_cq* @xa_load(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
