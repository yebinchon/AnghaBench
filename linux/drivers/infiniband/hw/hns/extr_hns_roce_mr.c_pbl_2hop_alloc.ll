; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_2hop_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_pbl_2hop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.device* }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i32, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32)* @pbl_2hop_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pbl_2hop_alloc(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_mr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_roce_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hns_roce_mr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hns_roce_mr* %2, %struct.hns_roce_mr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sdiv i32 %20, 8
  %22 = add nsw i32 %19, %21
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %9, align 4
  %25 = sdiv i32 %24, 8
  %26 = sdiv i32 %23, %25
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %101, %4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %29, 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %104

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %14, align 4
  br label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sdiv i32 %41, 8
  %43 = mul nsw i32 %40, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %44, %45
  %47 = mul nsw i32 %46, 8
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %39, %37
  %49 = load %struct.device*, %struct.device** %10, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %52 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @dma_alloc_coherent(%struct.device* %49, i32 %50, i32* %56, i32 %57)
  %59 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %48
  %74 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %6, align 8
  %75 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @hns_roce_loop_free(%struct.hns_roce_dev* %74, %struct.hns_roce_mr* %75, i32 1, i32 %76, i32 0)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %109

80:                                               ; preds = %48
  %81 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %82 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %89 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  br label %104

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %27

104:                                              ; preds = %99, %27
  %105 = load i32, i32* %15, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %8, align 8
  %108 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %73
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @hns_roce_loop_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
