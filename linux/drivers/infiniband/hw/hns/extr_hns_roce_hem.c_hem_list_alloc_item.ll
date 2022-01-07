; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hem_list_alloc_item.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hem.c_hem_list_alloc_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roce_hem_item = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hns_roce_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.roce_hem_item* (%struct.hns_roce_dev*, i32, i32, i32, i32, i32)* @hem_list_alloc_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.roce_hem_item* @hem_list_alloc_item(%struct.hns_roce_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.roce_hem_item*, align 8
  %8 = alloca %struct.hns_roce_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.roce_hem_item*, align 8
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.roce_hem_item* @kzalloc(i32 28, i32 %15)
  store %struct.roce_hem_item* %16, %struct.roce_hem_item** %14, align 8
  %17 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %18 = icmp ne %struct.roce_hem_item* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  store %struct.roce_hem_item* null, %struct.roce_hem_item** %7, align 8
  br label %61

20:                                               ; preds = %6
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %8, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @BA_BYTE_LEN, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %31 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %30, i32 0, i32 6
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @dma_alloc_coherent(i32 %26, i32 %29, i32* %31, i32 %32)
  %34 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %35 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %37 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %42 = call i32 @kfree(%struct.roce_hem_item* %41)
  store %struct.roce_hem_item* null, %struct.roce_hem_item** %7, align 8
  br label %61

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %47 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %50 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %53 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %55 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %54, i32 0, i32 4
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  %58 = getelementptr inbounds %struct.roce_hem_item, %struct.roce_hem_item* %57, i32 0, i32 3
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.roce_hem_item*, %struct.roce_hem_item** %14, align 8
  store %struct.roce_hem_item* %60, %struct.roce_hem_item** %7, align 8
  br label %61

61:                                               ; preds = %44, %40, %19
  %62 = load %struct.roce_hem_item*, %struct.roce_hem_item** %7, align 8
  ret %struct.roce_hem_item* %62
}

declare dso_local %struct.roce_hem_item* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.roce_hem_item*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
