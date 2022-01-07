; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_srq.c_hns_roce_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_srq = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_roce_destroy_srq(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_srq*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %7 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %8 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hns_roce_dev* @to_hr_dev(i32 %9)
  store %struct.hns_roce_dev* %10, %struct.hns_roce_dev** %5, align 8
  %11 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %12 = call %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq* %11)
  store %struct.hns_roce_srq* %12, %struct.hns_roce_srq** %6, align 8
  %13 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %14 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %15 = call i32 @hns_roce_srq_free(%struct.hns_roce_dev* %13, %struct.hns_roce_srq* %14)
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %17 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %18 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %17, i32 0, i32 6
  %19 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %16, i32* %18)
  %20 = load %struct.ib_udata*, %struct.ib_udata** %4, align 8
  %21 = icmp ne %struct.ib_udata* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %24 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %25 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %23, i32* %26)
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kvfree(i32 %31)
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %34 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %35 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %38 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %36, %39
  %41 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %42 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %41, i32 0, i32 4
  %43 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %33, i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %28, %22
  %45 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ib_umem_release(i32 %48)
  %50 = load %struct.hns_roce_srq*, %struct.hns_roce_srq** %6, align 8
  %51 = getelementptr inbounds %struct.hns_roce_srq, %struct.hns_roce_srq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ib_umem_release(i32 %52)
  ret void
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_srq* @to_hr_srq(%struct.ib_srq*) #1

declare dso_local i32 @hns_roce_srq_free(%struct.hns_roce_dev*, %struct.hns_roce_srq*) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
