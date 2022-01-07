; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_srq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, %struct.TYPE_2__, %struct.hns_roce_srq_table }
%struct.TYPE_2__ = type { i32 }
%struct.hns_roce_srq_table = type { i32 }
%struct.hns_roce_srq = type { i32, i32, i32 (%struct.hns_roce_srq*, i32)* }

@.str = private unnamed_addr constant [32 x i8] c"Async event for bogus SRQ %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_srq_event(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_srq_table*, align 8
  %8 = alloca %struct.hns_roce_srq*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %9, i32 0, i32 2
  store %struct.hns_roce_srq_table* %10, %struct.hns_roce_srq_table** %7, align 8
  %11 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %7, align 8
  %12 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %11, i32 0, i32 0
  %13 = call i32 @xa_lock(i32* %12)
  %14 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %7, align 8
  %15 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %16, %21
  %23 = call %struct.hns_roce_srq* @xa_load(i32* %15, i32 %22)
  store %struct.hns_roce_srq* %23, %struct.hns_roce_srq** %8, align 8
  %24 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %25 = icmp ne %struct.hns_roce_srq* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %28 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %27, i32 0, i32 1
  %29 = call i32 @atomic_inc(i32* %28)
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.hns_roce_srq_table*, %struct.hns_roce_srq_table** %7, align 8
  %32 = getelementptr inbounds %struct.hns_roce_srq_table, %struct.hns_roce_srq_table* %31, i32 0, i32 0
  %33 = call i32 @xa_unlock(i32* %32)
  %34 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %35 = icmp ne %struct.hns_roce_srq* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %57

42:                                               ; preds = %30
  %43 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %44 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %43, i32 0, i32 2
  %45 = load i32 (%struct.hns_roce_srq*, i32)*, i32 (%struct.hns_roce_srq*, i32)** %44, align 8
  %46 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %45(%struct.hns_roce_srq* %46, i32 %47)
  %49 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %50 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %49, i32 0, i32 1
  %51 = call i64 @atomic_dec_and_test(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %8, align 8
  %55 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %54, i32 0, i32 0
  %56 = call i32 @complete(i32* %55)
  br label %57

57:                                               ; preds = %36, %53, %42
  ret void
}

declare dso_local i32 @xa_lock(i32*) #1

declare dso_local %struct.hns_roce_srq* @xa_load(i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @xa_unlock(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
