; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_main.c_hns_roce_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32, i32 }
%struct.hns_roce_dev = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @hns_roce_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.hns_roce_dev*, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %8 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.hns_roce_dev* @to_hr_dev(i32 %9)
  store %struct.hns_roce_dev* %10, %struct.hns_roce_dev** %6, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %56 [
    i32 0, label %14
    i32 1, label %28
  ]

14:                                               ; preds = %2
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %18 = call %struct.TYPE_4__* @to_hr_ucontext(%struct.ib_ucontext* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pgprot_noncached(i32 %25)
  %27 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %15, %struct.vm_area_struct* %16, i32 %21, i32 %22, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %30 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %33
  %42 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %50 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @rdma_user_mmap_io(%struct.ib_ucontext* %42, %struct.vm_area_struct* %43, i32 %48, i32 %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %41, %38, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local i32 @rdma_user_mmap_io(%struct.ib_ucontext*, %struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_hr_ucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @pgprot_noncached(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
