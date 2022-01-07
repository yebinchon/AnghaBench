; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_ivc.c_tegra_ivc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ivc = type { void (%struct.tegra_ivc*, i8*)*, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__, i8*, %struct.device* }
%struct.TYPE_4__ = type { i64, i8*, i8* }
%struct.TYPE_3__ = type { i64, i8*, i8* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_ivc_init(%struct.tegra_ivc* %0, %struct.device* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i64 %7, void (%struct.tegra_ivc*, i8*)* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_ivc*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca void (%struct.tegra_ivc*, i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.tegra_ivc* %0, %struct.tegra_ivc** %12, align 8
  store %struct.device* %1, %struct.device** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i64 %7, i64* %19, align 8
  store void (%struct.tegra_ivc*, i8*)* %8, void (%struct.tegra_ivc*, i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  %24 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %25 = icmp ne %struct.tegra_ivc* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load void (%struct.tegra_ivc*, i8*)*, void (%struct.tegra_ivc*, i8*)** %20, align 8
  %28 = icmp ne void (%struct.tegra_ivc*, i8*)* %27, null
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %26, %10
  %31 = phi i1 [ true, %10 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %11, align 4
  br label %152

38:                                               ; preds = %30
  %39 = load i64, i64* %19, align 8
  %40 = load i64, i64* @INT_MAX, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @E2BIG, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %152

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load i8*, i8** %16, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i32, i32* %18, align 4
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @tegra_ivc_check_params(i64 %47, i64 %49, i32 %50, i64 %51)
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %23, align 4
  store i32 %56, i32* %11, align 4
  br label %152

57:                                               ; preds = %45
  %58 = load i32, i32* %18, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* %19, align 8
  %61 = mul i64 %59, %60
  %62 = trunc i64 %61 to i32
  %63 = call i64 @tegra_ivc_total_queue_size(i32 %62)
  store i64 %63, i64* %22, align 8
  %64 = load %struct.device*, %struct.device** %13, align 8
  %65 = icmp ne %struct.device* %64, null
  br i1 %65, label %66, label %113

66:                                               ; preds = %57
  %67 = load %struct.device*, %struct.device** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %71 = call i8* @dma_map_single(%struct.device* %67, i8* %68, i64 %69, i32 %70)
  %72 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %73 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i8* %71, i8** %74, align 8
  %75 = load %struct.device*, %struct.device** %13, align 8
  %76 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %77 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @dma_mapping_error(%struct.device* %75, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %66
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %152

85:                                               ; preds = %66
  %86 = load %struct.device*, %struct.device** %13, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i64, i64* %22, align 8
  %89 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %90 = call i8* @dma_map_single(%struct.device* %86, i8* %87, i64 %88, i32 %89)
  %91 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %92 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i8* %90, i8** %93, align 8
  %94 = load %struct.device*, %struct.device** %13, align 8
  %95 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %96 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @dma_mapping_error(%struct.device* %94, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %85
  %102 = load %struct.device*, %struct.device** %13, align 8
  %103 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %104 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %22, align 8
  %108 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %109 = call i32 @dma_unmap_single(%struct.device* %102, i8* %106, i64 %107, i32 %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  br label %152

112:                                              ; preds = %85
  br label %122

113:                                              ; preds = %57
  %114 = load i8*, i8** %15, align 8
  %115 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %116 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i8* %114, i8** %117, align 8
  %118 = load i8*, i8** %17, align 8
  %119 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %120 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %113, %112
  %123 = load i8*, i8** %14, align 8
  %124 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %125 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %129 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load %struct.device*, %struct.device** %13, align 8
  %132 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %133 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %132, i32 0, i32 6
  store %struct.device* %131, %struct.device** %133, align 8
  %134 = load void (%struct.tegra_ivc*, i8*)*, void (%struct.tegra_ivc*, i8*)** %20, align 8
  %135 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %136 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %135, i32 0, i32 0
  store void (%struct.tegra_ivc*, i8*)* %134, void (%struct.tegra_ivc*, i8*)** %136, align 8
  %137 = load i8*, i8** %21, align 8
  %138 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %139 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %138, i32 0, i32 5
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %142 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %145 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %147 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i64 0, i64* %148, align 8
  %149 = load %struct.tegra_ivc*, %struct.tegra_ivc** %12, align 8
  %150 = getelementptr inbounds %struct.tegra_ivc, %struct.tegra_ivc* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %122, %101, %82, %55, %42, %35
  %153 = load i32, i32* %11, align 4
  ret i32 %153
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @tegra_ivc_check_params(i64, i64, i32, i64) #1

declare dso_local i64 @tegra_ivc_total_queue_size(i32) #1

declare dso_local i8* @dma_map_single(%struct.device*, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
