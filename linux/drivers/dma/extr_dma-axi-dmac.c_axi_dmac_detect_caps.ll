; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_detect_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_detect_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axi_dmac = type { %struct.TYPE_2__, %struct.axi_dmac_chan }
%struct.TYPE_2__ = type { i32 }
%struct.axi_dmac_chan = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@ADI_AXI_REG_VERSION = common dso_local global i32 0, align 4
@AXI_DMAC_REG_FLAGS = common dso_local global i32 0, align 4
@AXI_DMAC_FLAG_CYCLIC = common dso_local global i32 0, align 4
@AXI_DMAC_REG_Y_LENGTH = common dso_local global i32 0, align 4
@AXI_DMAC_REG_X_LENGTH = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@AXI_DMAC_REG_DEST_ADDRESS = common dso_local global i32 0, align 4
@AXI_DMAC_BUS_TYPE_AXI_MM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Destination memory-mapped interface not supported.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AXI_DMAC_REG_SRC_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Source memory-mapped interface not supported.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axi_dmac*)* @axi_dmac_detect_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_detect_caps(%struct.axi_dmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axi_dmac*, align 8
  %4 = alloca %struct.axi_dmac_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.axi_dmac* %0, %struct.axi_dmac** %3, align 8
  %6 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %7 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %6, i32 0, i32 1
  store %struct.axi_dmac_chan* %7, %struct.axi_dmac_chan** %4, align 8
  %8 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %9 = load i32, i32* @ADI_AXI_REG_VERSION, align 4
  %10 = call i32 @axi_dmac_read(%struct.axi_dmac* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %12 = load i32, i32* @AXI_DMAC_REG_FLAGS, align 4
  %13 = load i32, i32* @AXI_DMAC_FLAG_CYCLIC, align 4
  %14 = call i32 @axi_dmac_write(%struct.axi_dmac* %11, i32 %12, i32 %13)
  %15 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %16 = load i32, i32* @AXI_DMAC_REG_FLAGS, align 4
  %17 = call i32 @axi_dmac_read(%struct.axi_dmac* %15, i32 %16)
  %18 = load i32, i32* @AXI_DMAC_FLAG_CYCLIC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %22 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %25 = load i32, i32* @AXI_DMAC_REG_Y_LENGTH, align 4
  %26 = call i32 @axi_dmac_write(%struct.axi_dmac* %24, i32 %25, i32 1)
  %27 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %28 = load i32, i32* @AXI_DMAC_REG_Y_LENGTH, align 4
  %29 = call i32 @axi_dmac_read(%struct.axi_dmac* %27, i32 %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %33 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %36 = load i32, i32* @AXI_DMAC_REG_X_LENGTH, align 4
  %37 = call i32 @axi_dmac_write(%struct.axi_dmac* %35, i32 %36, i32 -1)
  %38 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %39 = load i32, i32* @AXI_DMAC_REG_X_LENGTH, align 4
  %40 = call i32 @axi_dmac_read(%struct.axi_dmac* %38, i32 %39)
  %41 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %42 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %44 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UINT_MAX, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %50 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %34
  %54 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %55 = load i32, i32* @AXI_DMAC_REG_DEST_ADDRESS, align 4
  %56 = call i32 @axi_dmac_write(%struct.axi_dmac* %54, i32 %55, i32 -1)
  %57 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %58 = load i32, i32* @AXI_DMAC_REG_DEST_ADDRESS, align 4
  %59 = call i32 @axi_dmac_read(%struct.axi_dmac* %57, i32 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %53
  %62 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %63 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AXI_DMAC_BUS_TYPE_AXI_MM, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %69 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %124

75:                                               ; preds = %61, %53
  %76 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %77 = load i32, i32* @AXI_DMAC_REG_SRC_ADDRESS, align 4
  %78 = call i32 @axi_dmac_write(%struct.axi_dmac* %76, i32 %77, i32 -1)
  %79 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %80 = load i32, i32* @AXI_DMAC_REG_SRC_ADDRESS, align 4
  %81 = call i32 @axi_dmac_read(%struct.axi_dmac* %79, i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %85 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AXI_DMAC_BUS_TYPE_AXI_MM, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %91 = getelementptr inbounds %struct.axi_dmac, %struct.axi_dmac* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %124

97:                                               ; preds = %83, %75
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @ADI_AXI_PCORE_VER(i32 4, i32 2, i8 signext 97)
  %100 = icmp uge i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %103 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %102, i32 0, i32 5
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @ADI_AXI_PCORE_VER(i32 4, i32 1, i8 signext 97)
  %107 = icmp uge i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %110 = load i32, i32* @AXI_DMAC_REG_X_LENGTH, align 4
  %111 = call i32 @axi_dmac_write(%struct.axi_dmac* %109, i32 %110, i32 0)
  %112 = load %struct.axi_dmac*, %struct.axi_dmac** %3, align 8
  %113 = load i32, i32* @AXI_DMAC_REG_X_LENGTH, align 4
  %114 = call i32 @axi_dmac_read(%struct.axi_dmac* %112, i32 %113)
  %115 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %116 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  br label %123

117:                                              ; preds = %104
  %118 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %119 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %4, align 8
  %122 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %117, %108
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %89, %67
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @axi_dmac_read(%struct.axi_dmac*, i32) #1

declare dso_local i32 @axi_dmac_write(%struct.axi_dmac*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ADI_AXI_PCORE_VER(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
