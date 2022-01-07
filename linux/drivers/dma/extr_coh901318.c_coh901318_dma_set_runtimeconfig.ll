; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_dma_set_runtimeconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_coh901318_dma_set_runtimeconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.coh901318_chan = type { i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"illegal channel mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"configure channel for %d byte transfers\0A\00", align 1
@COH901318_CX_CTRL_SRC_BUS_SIZE_8_BITS = common dso_local global i32 0, align 4
@COH901318_CX_CTRL_DST_BUS_SIZE_8_BITS = common dso_local global i32 0, align 4
@burst_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@COH901318_CX_CTRL_SRC_BUS_SIZE_16_BITS = common dso_local global i32 0, align 4
@COH901318_CX_CTRL_DST_BUS_SIZE_16_BITS = common dso_local global i32 0, align 4
@COH901318_CX_CTRL_SRC_BUS_SIZE_32_BITS = common dso_local global i32 0, align 4
@COH901318_CX_CTRL_DST_BUS_SIZE_32_BITS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"bad runtimeconfig: alien address width\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"selected burst size %d bytes for address width %d bytes, maxburst %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, i32)* @coh901318_dma_set_runtimeconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coh901318_dma_set_runtimeconfig(%struct.dma_chan* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_slave_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.coh901318_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %15 = call %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan* %14)
  store %struct.coh901318_chan* %15, %struct.coh901318_chan** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %21 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %24 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %50

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %38 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.dma_slave_config*, %struct.dma_slave_config** %6, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %45 = call i32 @COHC_2_DEV(%struct.coh901318_chan* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %163

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %52 = call i32 @COHC_2_DEV(%struct.coh901318_chan* %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %131 [
    i32 130, label %56
    i32 129, label %81
    i32 128, label %106
  ]

56:                                               ; preds = %50
  %57 = load i32, i32* @COH901318_CX_CTRL_SRC_BUS_SIZE_8_BITS, align 4
  %58 = load i32, i32* @COH901318_CX_CTRL_DST_BUS_SIZE_8_BITS, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %77, %56
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %64)
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %62

80:                                               ; preds = %76, %62
  br label %137

81:                                               ; preds = %50
  %82 = load i32, i32* @COH901318_CX_CTRL_SRC_BUS_SIZE_16_BITS, align 4
  %83 = load i32, i32* @COH901318_CX_CTRL_DST_BUS_SIZE_16_BITS, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %102, %81
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %90 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %105

102:                                              ; preds = %92
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %87

105:                                              ; preds = %101, %87
  br label %137

106:                                              ; preds = %50
  %107 = load i32, i32* @COH901318_CX_CTRL_SRC_BUS_SIZE_32_BITS, align 4
  %108 = load i32, i32* @COH901318_CX_CTRL_DST_BUS_SIZE_32_BITS, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %127, %106
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %112
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp sle i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %130

127:                                              ; preds = %117
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %112

130:                                              ; preds = %126, %112
  br label %137

131:                                              ; preds = %50
  %132 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %133 = call i32 @COHC_2_DEV(%struct.coh901318_chan* %132)
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %163

137:                                              ; preds = %130, %105, %80
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %12, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %12, align 4
  %146 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %147 = call i32 @COHC_2_DEV(%struct.coh901318_chan* %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** @burst_sizes, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %147, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %159 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.coh901318_chan*, %struct.coh901318_chan** %8, align 8
  %162 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %137, %131, %43
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.coh901318_chan* @to_coh901318_chan(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @COHC_2_DEV(%struct.coh901318_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
