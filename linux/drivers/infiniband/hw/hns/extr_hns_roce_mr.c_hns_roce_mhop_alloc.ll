; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mhop_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_mhop_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i64, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@MR_TYPE_FRMR = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@HNS_ROCE_HOP_NUM_0 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*)* @hns_roce_mhop_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_mhop_alloc(%struct.hns_roce_dev* %0, i32 %1, %struct.hns_roce_mr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_roce_mr*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hns_roce_mr* %2, %struct.hns_roce_mr** %7, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %15 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MR_TYPE_FRMR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %22 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %20, %19
  %26 = phi i32 [ 1, %19 ], [ %24, %20 ]
  store i32 %26, i32* %10, align 4
  %27 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %28 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @HNS_ROCE_HOP_NUM_0, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %156

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @pbl_1hop_alloc(%struct.hns_roce_dev* %42, i32 %43, %struct.hns_roce_mr* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %156

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sdiv i32 %48, 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 4, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %54 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %56 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %156

62:                                               ; preds = %47
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kcalloc(i32 %64, i32 4, i32 %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %69 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %71 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %62
  br label %147

75:                                               ; preds = %62
  %76 = load %struct.device*, %struct.device** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %79 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %78, i32 0, i32 7
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @dma_alloc_coherent(%struct.device* %76, i32 %77, i32* %79, i32 %80)
  %82 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %83 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %85 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %75
  br label %140

89:                                               ; preds = %75
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @pbl_2hop_alloc(%struct.hns_roce_dev* %93, i32 %94, %struct.hns_roce_mr* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %140

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @pbl_3hop_alloc(%struct.hns_roce_dev* %105, i32 %106, %struct.hns_roce_mr* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %140

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %101
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %116 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %118 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %121 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %120, i32 0, i32 8
  store i32 %119, i32* %121, align 8
  %122 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %123 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %127 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 4
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %129 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %133 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %135 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %139 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %4, align 4
  br label %156

140:                                              ; preds = %111, %99, %88
  %141 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %142 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %146 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %145, i32 0, i32 5
  store i32* null, i32** %146, align 8
  br label %147

147:                                              ; preds = %140, %74
  %148 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %149 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @kfree(i32* %150)
  %152 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %7, align 8
  %153 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %152, i32 0, i32 4
  store i32* null, i32** %153, align 8
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %147, %113, %59, %41, %37
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @pbl_1hop_alloc(%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @pbl_2hop_alloc(%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32) #1

declare dso_local i64 @pbl_3hop_alloc(%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
