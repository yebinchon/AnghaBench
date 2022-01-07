; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun6i_dma_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 (i32*, i32, i32)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@DMA_SLAVE_BUSWIDTH_UNDEFINED = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun6i_dma_dev*, %struct.dma_slave_config*, i32, i32*)* @set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config(%struct.sun6i_dma_dev* %0, %struct.dma_slave_config* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun6i_dma_dev*, align 8
  %7 = alloca %struct.dma_slave_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sun6i_dma_dev* %0, %struct.sun6i_dma_dev** %6, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %19 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %22 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %25 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.dma_slave_config*, %struct.dma_slave_config** %7, align 8
  %28 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %59 [
    i32 128, label %31
    i32 129, label %45
  ]

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  br label %43

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 8, %42 ]
  store i32 %44, i32* %12, align 4
  br label %62

45:                                               ; preds = %4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @DMA_SLAVE_BUSWIDTH_UNDEFINED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  br label %57

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %54
  %58 = phi i32 [ %55, %54 ], [ 8, %56 ]
  store i32 %58, i32* %13, align 4
  br label %62

59:                                               ; preds = %4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %136

62:                                               ; preds = %57, %43
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %6, align 8
  %66 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %64, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %136

74:                                               ; preds = %62
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %6, align 8
  %78 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %76, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %5, align 4
  br label %136

86:                                               ; preds = %74
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %6, align 8
  %90 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %88, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %136

99:                                               ; preds = %86
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %6, align 8
  %103 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %101, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %136

112:                                              ; preds = %99
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @convert_buswidth(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @convert_buswidth(i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @convert_burst(i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @convert_burst(i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @DMA_CHAN_CFG_SRC_WIDTH(i32 %121)
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @DMA_CHAN_CFG_DST_WIDTH(i32 %123)
  %125 = or i32 %122, %124
  %126 = load i32*, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  %127 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %6, align 8
  %128 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %130, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 %131(i32* %132, i32 %133, i32 %134)
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %112, %109, %96, %83, %71, %59
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @convert_buswidth(i32) #1

declare dso_local i32 @convert_burst(i32) #1

declare dso_local i32 @DMA_CHAN_CFG_SRC_WIDTH(i32) #1

declare dso_local i32 @DMA_CHAN_CFG_DST_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
