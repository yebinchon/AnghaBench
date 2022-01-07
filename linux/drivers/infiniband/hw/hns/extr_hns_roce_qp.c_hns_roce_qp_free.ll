; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_qp.c_hns_roce_qp_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.hns_roce_qp_table }
%struct.TYPE_4__ = type { i64 }
%struct.hns_roce_qp_table = type { i32, i32 }
%struct.hns_roce_qp = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@IB_QPT_GSI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_qp_free(%struct.hns_roce_dev* %0, %struct.hns_roce_qp* %1) #0 {
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_qp*, align 8
  %5 = alloca %struct.hns_roce_qp_table*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  store %struct.hns_roce_qp* %1, %struct.hns_roce_qp** %4, align 8
  %6 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %6, i32 0, i32 1
  store %struct.hns_roce_qp_table* %7, %struct.hns_roce_qp_table** %5, align 8
  %8 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %9 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %8, i32 0, i32 3
  %10 = call i64 @atomic_dec_and_test(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %14 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %13, i32 0, i32 2
  %15 = call i32 @complete(i32* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %18 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %17, i32 0, i32 2
  %19 = call i32 @wait_for_completion(i32* %18)
  %20 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %21 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_QPT_GSI, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %16
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %34 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %34, i32 0, i32 1
  %36 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %37 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %33, i32* %35, i32 %38)
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %42 = load %struct.hns_roce_qp_table*, %struct.hns_roce_qp_table** %5, align 8
  %43 = getelementptr inbounds %struct.hns_roce_qp_table, %struct.hns_roce_qp_table* %42, i32 0, i32 0
  %44 = load %struct.hns_roce_qp*, %struct.hns_roce_qp** %4, align 8
  %45 = getelementptr inbounds %struct.hns_roce_qp, %struct.hns_roce_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hns_roce_table_put(%struct.hns_roce_dev* %41, i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %40, %16
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @hns_roce_table_put(%struct.hns_roce_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
