; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_prep_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_prep_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.s3c24xx_dma_chan = type { i32, i32, %struct.s3c24xx_dma_engine* }
%struct.s3c24xx_dma_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.s3c24xx_txd = type { i32, i32, i32, i32, i32, i32 }
%struct.s3c24xx_sg = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"prepare memcpy of %zu bytes from %s\0A\00", align 1
@S3C24XX_DCON_TC_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"memcpy size %zu to large\0A\00", align 1
@GFP_NOWAIT = common dso_local global i32 0, align 4
@S3C24XX_DISRCC_LOC_AHB = common dso_local global i32 0, align 4
@S3C24XX_DISRCC_INC_INCREMENT = common dso_local global i32 0, align 4
@S3C24XX_DIDSTC_LOC_AHB = common dso_local global i32 0, align 4
@S3C24XX_DIDSTC_INC_INCREMENT = common dso_local global i32 0, align 4
@S3C24XX_DCON_DEMAND = common dso_local global i32 0, align 4
@S3C24XX_DCON_SYNC_HCLK = common dso_local global i32 0, align 4
@S3C24XX_DCON_SERV_WHOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i32, i32, i64, i64)* @s3c24xx_dma_prep_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @s3c24xx_dma_prep_memcpy(%struct.dma_chan* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.s3c24xx_dma_chan*, align 8
  %13 = alloca %struct.s3c24xx_dma_engine*, align 8
  %14 = alloca %struct.s3c24xx_txd*, align 8
  %15 = alloca %struct.s3c24xx_sg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %19 = call %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(%struct.dma_chan* %18)
  store %struct.s3c24xx_dma_chan* %19, %struct.s3c24xx_dma_chan** %12, align 8
  %20 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %12, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %20, i32 0, i32 2
  %22 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %21, align 8
  store %struct.s3c24xx_dma_engine* %22, %struct.s3c24xx_dma_engine** %13, align 8
  %23 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %13, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %12, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @S3C24XX_DCON_TC_MASK, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %5
  %38 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %13, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %139

44:                                               ; preds = %5
  %45 = call %struct.s3c24xx_txd* (...) @s3c24xx_dma_get_txd()
  store %struct.s3c24xx_txd* %45, %struct.s3c24xx_txd** %14, align 8
  %46 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %47 = icmp ne %struct.s3c24xx_txd* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %139

49:                                               ; preds = %44
  %50 = load i32, i32* @GFP_NOWAIT, align 4
  %51 = call %struct.s3c24xx_sg* @kzalloc(i32 24, i32 %50)
  store %struct.s3c24xx_sg* %51, %struct.s3c24xx_sg** %15, align 8
  %52 = load %struct.s3c24xx_sg*, %struct.s3c24xx_sg** %15, align 8
  %53 = icmp ne %struct.s3c24xx_sg* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %56 = call i32 @s3c24xx_dma_free_txd(%struct.s3c24xx_txd* %55)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %139

57:                                               ; preds = %49
  %58 = load %struct.s3c24xx_sg*, %struct.s3c24xx_sg** %15, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_sg, %struct.s3c24xx_sg* %58, i32 0, i32 3
  %60 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %61 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %60, i32 0, i32 5
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.s3c24xx_sg*, %struct.s3c24xx_sg** %15, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_sg, %struct.s3c24xx_sg* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.s3c24xx_sg*, %struct.s3c24xx_sg** %15, align 8
  %68 = getelementptr inbounds %struct.s3c24xx_sg, %struct.s3c24xx_sg* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.s3c24xx_sg*, %struct.s3c24xx_sg** %15, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_sg, %struct.s3c24xx_sg* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load i32, i32* %9, align 4
  %73 = srem i32 %72, 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = srem i32 %74, 4
  store i32 %75, i32* %17, align 4
  %76 = load i64, i64* %10, align 8
  %77 = urem i64 %76, 4
  switch i64 %77, label %110 [
    i64 0, label %78
    i64 2, label %90
  ]

78:                                               ; preds = %57
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %17, align 4
  %83 = icmp eq i32 %82, 0
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i1 [ false, %78 ], [ %83, %81 ]
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 4, i32 1
  %88 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %89 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %113

90:                                               ; preds = %57
  %91 = load i32, i32* %16, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 0
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ true, %96 ], [ %101, %99 ]
  br label %104

104:                                              ; preds = %102, %93
  %105 = phi i1 [ false, %93 ], [ %103, %102 ]
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 2, i32 1
  %108 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  br label %113

110:                                              ; preds = %57
  %111 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %112 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %104, %84
  %114 = load i32, i32* @S3C24XX_DISRCC_LOC_AHB, align 4
  %115 = load i32, i32* @S3C24XX_DISRCC_INC_INCREMENT, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %118 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @S3C24XX_DIDSTC_LOC_AHB, align 4
  %120 = load i32, i32* @S3C24XX_DIDSTC_INC_INCREMENT, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %123 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @S3C24XX_DCON_DEMAND, align 4
  %125 = load i32, i32* @S3C24XX_DCON_SYNC_HCLK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @S3C24XX_DCON_SERV_WHOLE, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %130 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %12, align 8
  %134 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %133, i32 0, i32 0
  %135 = load %struct.s3c24xx_txd*, %struct.s3c24xx_txd** %14, align 8
  %136 = getelementptr inbounds %struct.s3c24xx_txd, %struct.s3c24xx_txd* %135, i32 0, i32 4
  %137 = load i64, i64* %11, align 8
  %138 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %134, i32* %136, i64 %137)
  store %struct.dma_async_tx_descriptor* %138, %struct.dma_async_tx_descriptor** %6, align 8
  br label %139

139:                                              ; preds = %113, %54, %48, %37
  %140 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %140
}

declare dso_local %struct.s3c24xx_dma_chan* @to_s3c24xx_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local %struct.s3c24xx_txd* @s3c24xx_dma_get_txd(...) #1

declare dso_local %struct.s3c24xx_sg* @kzalloc(i32, i32) #1

declare dso_local i32 @s3c24xx_dma_free_txd(%struct.s3c24xx_txd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
