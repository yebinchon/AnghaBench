; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_set_2stage_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sprd-dma.c_sprd_dma_set_2stage_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_dma_chn = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sprd_dma_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SPRD_DMA_GLB_SRC_CHN_MASK = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_TRG_OFFSET = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_2STAGE_EN = common dso_local global i32 0, align 4
@SPRD_DMA_NO_INT = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_SRC_INT = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_2STAGE_GRP1 = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_2STAGE_GRP2 = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_DEST_CHN_OFFSET = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_DEST_CHN_MASK = common dso_local global i32 0, align 4
@SPRD_DMA_GLB_DEST_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid channel mode setting %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_dma_chn*)* @sprd_dma_set_2stage_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_dma_set_2stage_config(%struct.sprd_dma_chn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_dma_chn*, align 8
  %4 = alloca %struct.sprd_dma_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sprd_dma_chn* %0, %struct.sprd_dma_chn** %3, align 8
  %7 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %8 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call %struct.sprd_dma_dev* @to_sprd_dma_dev(i32* %9)
  store %struct.sprd_dma_dev* %10, %struct.sprd_dma_dev** %4, align 8
  %11 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %12 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %16 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %128 [
    i32 129, label %18
    i32 128, label %49
    i32 131, label %80
    i32 130, label %104
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SPRD_DMA_GLB_SRC_CHN_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %23 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @BIT(i32 %25)
  %27 = load i32, i32* @SPRD_DMA_GLB_TRG_OFFSET, align 4
  %28 = shl i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @SPRD_DMA_GLB_2STAGE_EN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %35 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SPRD_DMA_NO_INT, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %18
  %40 = load i32, i32* @SPRD_DMA_GLB_SRC_INT, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %18
  %44 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %45 = load i32, i32* @SPRD_DMA_GLB_2STAGE_GRP1, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @sprd_dma_glb_update(%struct.sprd_dma_dev* %44, i32 %45, i32 %46, i32 %47)
  br label %139

49:                                               ; preds = %1
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SPRD_DMA_GLB_SRC_CHN_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %5, align 4
  %53 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %54 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @BIT(i32 %56)
  %58 = load i32, i32* @SPRD_DMA_GLB_TRG_OFFSET, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @SPRD_DMA_GLB_2STAGE_EN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %66 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SPRD_DMA_NO_INT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %49
  %71 = load i32, i32* @SPRD_DMA_GLB_SRC_INT, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %49
  %75 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %76 = load i32, i32* @SPRD_DMA_GLB_2STAGE_GRP2, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @sprd_dma_glb_update(%struct.sprd_dma_dev* %75, i32 %76, i32 %77, i32 %78)
  br label %139

80:                                               ; preds = %1
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SPRD_DMA_GLB_DEST_CHN_OFFSET, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* @SPRD_DMA_GLB_DEST_CHN_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @SPRD_DMA_GLB_2STAGE_EN, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %90 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @SPRD_DMA_NO_INT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i32, i32* @SPRD_DMA_GLB_DEST_INT, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %80
  %99 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %100 = load i32, i32* @SPRD_DMA_GLB_2STAGE_GRP1, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @sprd_dma_glb_update(%struct.sprd_dma_dev* %99, i32 %100, i32 %101, i32 %102)
  br label %139

104:                                              ; preds = %1
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @SPRD_DMA_GLB_DEST_CHN_OFFSET, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* @SPRD_DMA_GLB_DEST_CHN_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @SPRD_DMA_GLB_2STAGE_EN, align 4
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %114 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SPRD_DMA_NO_INT, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %104
  %119 = load i32, i32* @SPRD_DMA_GLB_DEST_INT, align 4
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %118, %104
  %123 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %124 = load i32, i32* @SPRD_DMA_GLB_2STAGE_GRP2, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @sprd_dma_glb_update(%struct.sprd_dma_dev* %123, i32 %124, i32 %125, i32 %126)
  br label %139

128:                                              ; preds = %1
  %129 = load %struct.sprd_dma_dev*, %struct.sprd_dma_dev** %4, align 8
  %130 = getelementptr inbounds %struct.sprd_dma_dev, %struct.sprd_dma_dev* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.sprd_dma_chn*, %struct.sprd_dma_chn** %3, align 8
  %134 = getelementptr inbounds %struct.sprd_dma_chn, %struct.sprd_dma_chn* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %122, %98, %74, %43
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.sprd_dma_dev* @to_sprd_dma_dev(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sprd_dma_glb_update(%struct.sprd_dma_dev*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
