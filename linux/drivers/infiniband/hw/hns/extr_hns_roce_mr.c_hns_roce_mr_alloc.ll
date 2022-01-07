; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i64, i64, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*, i32, i64, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@BA_BYTE_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i8*, i64, i64, i8*, i32, %struct.hns_roce_mr*)* @hns_roce_mr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mr_alloc(%struct.hns_roce_dev* %0, i8* %1, i64 %2, i64 %3, i8* %4, i32 %5, %struct.hns_roce_mr* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.hns_roce_dev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hns_roce_mr*, align 8
  %16 = alloca %struct.device*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.hns_roce_mr* %6, %struct.hns_roce_mr** %15, align 8
  %19 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %20 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %19, i32 0, i32 2
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @hns_roce_bitmap_alloc(i32* %24, i64* %17)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %102

31:                                               ; preds = %7
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %34 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %37 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %40 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %39, i32 0, i32 13
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %43 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %42, i32 0, i32 12
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %45 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %44, i32 0, i32 11
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call i32 @hw_index_to_key(i64 %46)
  %48 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %49 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %52, label %69

52:                                               ; preds = %31
  %53 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %54 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %56 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %58 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %57, i32 0, i32 9
  store i32* null, i32** %58, align 8
  %59 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %60 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %59, i32 0, i32 8
  store i32* null, i32** %60, align 8
  %61 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %62 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %61, i32 0, i32 7
  store i32* null, i32** %62, align 8
  %63 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %64 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %63, i32 0, i32 6
  store i32* null, i32** %64, align 8
  %65 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %65, i32 0, i32 5
  store i32* null, i32** %66, align 8
  %67 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %68 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  br label %100

69:                                               ; preds = %31
  %70 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %71 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %94, label %75

75:                                               ; preds = %69
  %76 = load %struct.device*, %struct.device** %16, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @BA_BYTE_LEN, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %81 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %80, i32 0, i32 3
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32* @dma_alloc_coherent(%struct.device* %76, i32 %79, i64* %81, i32 %82)
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %87 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %75
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %102

93:                                               ; preds = %75
  br label %99

94:                                               ; preds = %69
  %95 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %15, align 8
  %98 = call i32 @hns_roce_mhop_alloc(%struct.hns_roce_dev* %95, i32 %96, %struct.hns_roce_mr* %97)
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %94, %93
  br label %100

100:                                              ; preds = %99, %52
  %101 = load i32, i32* %18, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %90, %28
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @hns_roce_bitmap_alloc(i32*, i64*) #1

declare dso_local i32 @hw_index_to_key(i64) #1

declare dso_local i32* @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @hns_roce_mhop_alloc(%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
