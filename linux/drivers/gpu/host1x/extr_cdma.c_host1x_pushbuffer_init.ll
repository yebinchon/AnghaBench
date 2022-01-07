; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_buffer = type { i32, i32, i64, i32, i32*, i32, i64 }
%struct.host1x_cdma = type { i32 }
%struct.host1x = type { i64, i32, i32, i64 }
%struct.iova = type { i32 }

@HOST1X_PUSHBUFFER_SLOTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.push_buffer*)* @host1x_pushbuffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_pushbuffer_init(%struct.push_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.push_buffer*, align 8
  %4 = alloca %struct.host1x_cdma*, align 8
  %5 = alloca %struct.host1x*, align 8
  %6 = alloca %struct.iova*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.push_buffer* %0, %struct.push_buffer** %3, align 8
  %10 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %11 = call %struct.host1x_cdma* @pb_to_cdma(%struct.push_buffer* %10)
  store %struct.host1x_cdma* %11, %struct.host1x_cdma** %4, align 8
  %12 = load %struct.host1x_cdma*, %struct.host1x_cdma** %4, align 8
  %13 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %12)
  store %struct.host1x* %13, %struct.host1x** %5, align 8
  %14 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %14, i32 0, i32 4
  store i32* null, i32** %15, align 8
  %16 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %16, i32 0, i32 3
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* @HOST1X_PUSHBUFFER_SLOTS, align 4
  %19 = mul nsw i32 %18, 8
  %20 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %28 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 8
  %31 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %34 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.host1x*, %struct.host1x** %5, align 8
  %36 = getelementptr inbounds %struct.host1x, %struct.host1x* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %105

39:                                               ; preds = %1
  %40 = load %struct.host1x*, %struct.host1x** %5, align 8
  %41 = getelementptr inbounds %struct.host1x, %struct.host1x* %40, i32 0, i32 2
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @iova_align(i32* %41, i64 %42)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.host1x*, %struct.host1x** %5, align 8
  %45 = getelementptr inbounds %struct.host1x, %struct.host1x* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %49 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %48, i32 0, i32 3
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @dma_alloc_wc(i32 %46, i64 %47, i32* %49, i32 %50)
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %54 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  %55 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %56 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %155

62:                                               ; preds = %39
  %63 = load %struct.host1x*, %struct.host1x** %5, align 8
  %64 = getelementptr inbounds %struct.host1x, %struct.host1x* %63, i32 0, i32 2
  %65 = call i64 @iova_shift(i32* %64)
  store i64 %65, i64* %9, align 8
  %66 = load %struct.host1x*, %struct.host1x** %5, align 8
  %67 = getelementptr inbounds %struct.host1x, %struct.host1x* %66, i32 0, i32 2
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = lshr i64 %68, %69
  %71 = load %struct.host1x*, %struct.host1x** %5, align 8
  %72 = getelementptr inbounds %struct.host1x, %struct.host1x* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = lshr i64 %73, %74
  %76 = call %struct.iova* @alloc_iova(i32* %67, i64 %70, i64 %75, i32 1)
  store %struct.iova* %76, %struct.iova** %6, align 8
  %77 = load %struct.iova*, %struct.iova** %6, align 8
  %78 = icmp ne %struct.iova* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %62
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %8, align 4
  br label %142

82:                                               ; preds = %62
  %83 = load %struct.host1x*, %struct.host1x** %5, align 8
  %84 = getelementptr inbounds %struct.host1x, %struct.host1x* %83, i32 0, i32 2
  %85 = load %struct.iova*, %struct.iova** %6, align 8
  %86 = call i32 @iova_dma_addr(i32* %84, %struct.iova* %85)
  %87 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %88 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.host1x*, %struct.host1x** %5, align 8
  %90 = getelementptr inbounds %struct.host1x, %struct.host1x* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %93 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %96 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load i32, i32* @IOMMU_READ, align 4
  %100 = call i32 @iommu_map(i64 %91, i32 %94, i32 %97, i64 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %82
  br label %137

104:                                              ; preds = %82
  br label %130

105:                                              ; preds = %1
  %106 = load %struct.host1x*, %struct.host1x** %5, align 8
  %107 = getelementptr inbounds %struct.host1x, %struct.host1x* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %111 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %110, i32 0, i32 3
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call i8* @dma_alloc_wc(i32 %108, i64 %109, i32* %111, i32 %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %116 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %115, i32 0, i32 4
  store i32* %114, i32** %116, align 8
  %117 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %118 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %105
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %155

124:                                              ; preds = %105
  %125 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %126 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %129 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %124, %104
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %133 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load %struct.host1x*, %struct.host1x** %5, align 8
  %135 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %136 = call i32 @host1x_hw_pushbuffer_init(%struct.host1x* %134, %struct.push_buffer* %135)
  store i32 0, i32* %2, align 4
  br label %155

137:                                              ; preds = %103
  %138 = load %struct.host1x*, %struct.host1x** %5, align 8
  %139 = getelementptr inbounds %struct.host1x, %struct.host1x* %138, i32 0, i32 2
  %140 = load %struct.iova*, %struct.iova** %6, align 8
  %141 = call i32 @__free_iova(i32* %139, %struct.iova* %140)
  br label %142

142:                                              ; preds = %137, %79
  %143 = load %struct.host1x*, %struct.host1x** %5, align 8
  %144 = getelementptr inbounds %struct.host1x, %struct.host1x* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %148 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %151 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @dma_free_wc(i32 %145, i64 %146, i32* %149, i32 %152)
  %154 = load i32, i32* %8, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %142, %130, %121, %59
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.host1x_cdma* @pb_to_cdma(%struct.push_buffer*) #1

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i64 @iova_align(i32*, i64) #1

declare dso_local i8* @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i64 @iova_shift(i32*) #1

declare dso_local %struct.iova* @alloc_iova(i32*, i64, i64, i32) #1

declare dso_local i32 @iova_dma_addr(i32*, %struct.iova*) #1

declare dso_local i32 @iommu_map(i64, i32, i32, i64, i32) #1

declare dso_local i32 @host1x_hw_pushbuffer_init(%struct.host1x*, %struct.push_buffer*) #1

declare dso_local i32 @__free_iova(i32*, %struct.iova*) #1

declare dso_local i32 @dma_free_wc(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
