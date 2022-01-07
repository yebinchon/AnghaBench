; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_ah.c_hns_roce_query_ah.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_ah.c_hns_roce_query_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.rdma_ah_attr = type { i32 }
%struct.hns_roce_ah = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_roce_query_ah(%struct.ib_ah* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_ah*, align 8
  %4 = alloca %struct.rdma_ah_attr*, align 8
  %5 = alloca %struct.hns_roce_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %3, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %4, align 8
  %6 = load %struct.ib_ah*, %struct.ib_ah** %3, align 8
  %7 = call %struct.hns_roce_ah* @to_hr_ah(%struct.ib_ah* %6)
  store %struct.hns_roce_ah* %7, %struct.hns_roce_ah** %5, align 8
  %8 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %9 = call i32 @memset(%struct.rdma_ah_attr* %8, i32 0, i32 4)
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %11 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @rdma_ah_set_sl(%struct.rdma_ah_attr* %10, i32 %14)
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %17 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr* %16, i32 %20)
  %22 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %23 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr* %22, i32 %26)
  %28 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %29 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %30 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %34 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %38 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %42 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @rdma_ah_set_grh(%struct.rdma_ah_attr* %28, i32* null, i32 %32, i32 %36, i32 %40, i32 %44)
  %46 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %4, align 8
  %47 = load %struct.hns_roce_ah*, %struct.hns_roce_ah** %5, align 8
  %48 = getelementptr inbounds %struct.hns_roce_ah, %struct.hns_roce_ah* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr* %46, i32 %50)
  ret i32 0
}

declare dso_local %struct.hns_roce_ah* @to_hr_ah(%struct.ib_ah*) #1

declare dso_local i32 @memset(%struct.rdma_ah_attr*, i32, i32) #1

declare dso_local i32 @rdma_ah_set_sl(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_static_rate(%struct.rdma_ah_attr*, i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.rdma_ah_attr*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.rdma_ah_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
