; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_free_pkt_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_free_pkt_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qib_user_sdma_queue = type { i32 }
%struct.qib_user_sdma_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i64, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_pkt*, i32)* @qib_user_sdma_free_pkt_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_user_sdma_free_pkt_frag(%struct.device* %0, %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_pkt* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qib_user_sdma_queue*, align 8
  %7 = alloca %struct.qib_user_sdma_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.qib_user_sdma_queue* %1, %struct.qib_user_sdma_queue** %6, align 8
  store %struct.qib_user_sdma_pkt* %2, %struct.qib_user_sdma_pkt** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %12 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %101

20:                                               ; preds = %4
  %21 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %22 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %20
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %33 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %41 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_unmap_page(%struct.device* %31, i64 %39, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %30, %20
  %51 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %52 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %50
  %61 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %62 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @kunmap(i64 %68)
  br label %70

70:                                               ; preds = %60, %50
  %71 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %72 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %82 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @put_user_page(i64 %88)
  br label %100

90:                                               ; preds = %70
  %91 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %92 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @__free_page(i64 %98)
  br label %100

100:                                              ; preds = %90, %80
  br label %194

101:                                              ; preds = %4
  %102 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %103 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %193

111:                                              ; preds = %101
  %112 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %113 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %111
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %124 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %132 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @DMA_TO_DEVICE, align 4
  %140 = call i32 @dma_unmap_single(%struct.device* %122, i64 %130, i32 %138, i32 %139)
  %141 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %142 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @kfree(i64 %148)
  br label %192

150:                                              ; preds = %111
  %151 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %152 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %150
  %161 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %6, align 8
  %162 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %165 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %173 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @dma_pool_free(i32 %163, i64 %171, i64 %179)
  br label %191

181:                                              ; preds = %150
  %182 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %7, align 8
  %183 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %182, i32 0, i32 0
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @kfree(i64 %189)
  br label %191

191:                                              ; preds = %181, %160
  br label %192

192:                                              ; preds = %191, %121
  br label %193

193:                                              ; preds = %192, %101
  br label %194

194:                                              ; preds = %193, %100
  ret void
}

declare dso_local i32 @dma_unmap_page(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @kunmap(i64) #1

declare dso_local i32 @put_user_page(i64) #1

declare dso_local i32 @__free_page(i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @dma_pool_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
