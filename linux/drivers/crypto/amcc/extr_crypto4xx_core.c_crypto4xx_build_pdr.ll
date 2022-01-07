; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_build_pdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i64, i32*, %struct.TYPE_4__*, i64, %struct.pd_uinfo*, %struct.ce_pd*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.pd_uinfo = type { i64, i32*, i32* }
%struct.ce_pd = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PPC4XX_NUM_PD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*)* @crypto4xx_build_pdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_build_pdr(%struct.crypto4xx_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ce_pd*, align 8
  %6 = alloca %struct.pd_uinfo*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  %7 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %8 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %7, i32 0, i32 6
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %17 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %16, i32 0, i32 7
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call i8* @dma_alloc_coherent(i32 %11, i32 %15, i64* %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.ce_pd*
  %21 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %22 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %21, i32 0, i32 5
  store %struct.ce_pd* %20, %struct.ce_pd** %22, align 8
  %23 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %24 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %23, i32 0, i32 5
  %25 = load %struct.ce_pd*, %struct.ce_pd** %24, align 8
  %26 = icmp ne %struct.ce_pd* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %164

30:                                               ; preds = %1
  %31 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.pd_uinfo* @kcalloc(i32 %31, i32 24, i32 %32)
  %34 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %35 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %34, i32 0, i32 4
  store %struct.pd_uinfo* %33, %struct.pd_uinfo** %35, align 8
  %36 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %37 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %36, i32 0, i32 4
  %38 = load %struct.pd_uinfo*, %struct.pd_uinfo** %37, align 8
  %39 = icmp ne %struct.pd_uinfo* %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %30
  %41 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %42 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %41, i32 0, i32 6
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = trunc i64 %48 to i32
  %50 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %51 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %50, i32 0, i32 5
  %52 = load %struct.ce_pd*, %struct.ce_pd** %51, align 8
  %53 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %54 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %53, i32 0, i32 7
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @dma_free_coherent(i32 %45, i32 %49, %struct.ce_pd* %52, i64 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %164

59:                                               ; preds = %30
  %60 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %61 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %60, i32 0, i32 6
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %70 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %69, i32 0, i32 3
  %71 = load i32, i32* @GFP_ATOMIC, align 4
  %72 = call i8* @dma_alloc_coherent(i32 %64, i32 %68, i64* %70, i32 %71)
  %73 = bitcast i8* %72 to %struct.TYPE_4__*
  %74 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %75 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %74, i32 0, i32 2
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %75, align 8
  %76 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %77 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = icmp ne %struct.TYPE_4__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %59
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %164

83:                                               ; preds = %59
  %84 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %85 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %84, i32 0, i32 6
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = trunc i64 %91 to i32
  %93 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %94 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %93, i32 0, i32 0
  %95 = load i32, i32* @GFP_ATOMIC, align 4
  %96 = call i8* @dma_alloc_coherent(i32 %88, i32 %92, i64* %94, i32 %95)
  %97 = bitcast i8* %96 to i32*
  %98 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %99 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %101 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %83
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %164

107:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %160, %107
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PPC4XX_NUM_PD, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %163

112:                                              ; preds = %108
  %113 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %114 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %113, i32 0, i32 5
  %115 = load %struct.ce_pd*, %struct.ce_pd** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %115, i64 %117
  store %struct.ce_pd* %118, %struct.ce_pd** %5, align 8
  %119 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %120 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %119, i32 0, i32 4
  %121 = load %struct.pd_uinfo*, %struct.pd_uinfo** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %121, i64 %123
  store %struct.pd_uinfo* %124, %struct.pd_uinfo** %6, align 8
  %125 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %126 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = add i64 %127, %130
  %132 = load %struct.ce_pd*, %struct.ce_pd** %5, align 8
  %133 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %135 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %142 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %141, i32 0, i32 2
  store i32* %140, i32** %142, align 8
  %143 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %144 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %150 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %149, i32 0, i32 1
  store i32* %148, i32** %150, align 8
  %151 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %152 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 4, %155
  %157 = add i64 %153, %156
  %158 = load %struct.pd_uinfo*, %struct.pd_uinfo** %6, align 8
  %159 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %112
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %4, align 4
  br label %108

163:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %104, %80, %40, %27
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local %struct.pd_uinfo* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.ce_pd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
