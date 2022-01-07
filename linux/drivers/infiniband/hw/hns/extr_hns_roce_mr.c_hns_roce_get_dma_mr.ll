; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.hns_roce_mr = type { %struct.ib_mr, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MR_TYPE_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @hns_roce_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_mr*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hns_roce_mr* @kmalloc(i32 24, i32 %8)
  store %struct.hns_roce_mr* %9, %struct.hns_roce_mr** %6, align 8
  %10 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %11 = icmp eq %struct.hns_roce_mr* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.ib_mr* @ERR_PTR(i32 %14)
  store %struct.ib_mr* %15, %struct.ib_mr** %3, align 8
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* @MR_TYPE_DMA, align 4
  %18 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %19 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @to_hr_dev(i32 %22)
  %24 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %25 = call %struct.TYPE_2__* @to_hr_pd(%struct.ib_pd* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %30 = call i32 @hns_roce_mr_alloc(i32 %23, i32 %27, i32 0, i64 -1, i32 %28, i32 0, %struct.hns_roce_mr* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %65

34:                                               ; preds = %16
  %35 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %36 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_hr_dev(i32 %37)
  %39 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %40 = call i32 @hns_roce_mr_enable(i32 %38, %struct.hns_roce_mr* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %49 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  %54 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %55 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %57 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %56, i32 0, i32 0
  store %struct.ib_mr* %57, %struct.ib_mr** %3, align 8
  br label %70

58:                                               ; preds = %43
  %59 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %60 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @to_hr_dev(i32 %61)
  %63 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %64 = call i32 @hns_roce_mr_free(i32 %62, %struct.hns_roce_mr* %63)
  br label %65

65:                                               ; preds = %58, %33
  %66 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %6, align 8
  %67 = call i32 @kfree(%struct.hns_roce_mr* %66)
  %68 = load i32, i32* %7, align 4
  %69 = call %struct.ib_mr* @ERR_PTR(i32 %68)
  store %struct.ib_mr* %69, %struct.ib_mr** %3, align 8
  br label %70

70:                                               ; preds = %65, %44, %12
  %71 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %71
}

declare dso_local %struct.hns_roce_mr* @kmalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @hns_roce_mr_alloc(i32, i32, i32, i64, i32, i32, %struct.hns_roce_mr*) #1

declare dso_local i32 @to_hr_dev(i32) #1

declare dso_local %struct.TYPE_2__* @to_hr_pd(%struct.ib_pd*) #1

declare dso_local i32 @hns_roce_mr_enable(i32, %struct.hns_roce_mr*) #1

declare dso_local i32 @hns_roce_mr_free(i32, %struct.hns_roce_mr*) #1

declare dso_local i32 @kfree(%struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
