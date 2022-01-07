; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_1hop_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_1hop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"npages %d is larger than buf_pg_sz!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32)* @pbl_1hop_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_1hop_alloc(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hns_roce_mr* %2, %struct.hns_roce_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sdiv i32 %15, 8
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.device*, %struct.device** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %64

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %29 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %28, i32 0, i32 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @dma_alloc_coherent(%struct.device* %25, i32 %27, i32* %29, i32 %30)
  %32 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %33 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %64

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %44 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %46 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %49 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %51 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %53 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %57 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %63 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %41, %38, %18
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
