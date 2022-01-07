; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_destroy_kernel_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_destroy_kernel_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, %struct.hns_roce_srq*, i32)* @destroy_kernel_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_kernel_srq(%struct.hns_roce_dev* %0, %struct.hns_roce_srq* %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_srq*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_srq* %1, %struct.hns_roce_srq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %8 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kvfree(i32 %9)
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %12 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %13 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %11, i32* %14)
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %17 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %22 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %16, i32 %20, i32* %23)
  %25 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %26 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %31, i32 0, i32 1
  %33 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %30, i32* %32)
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %5, align 8
  %37 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %36, i32 0, i32 0
  %38 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %34, i32 %35, i32* %37)
  ret void
}

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
