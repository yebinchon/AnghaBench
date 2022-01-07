; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_parse_chan_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-axi-dmac.c_axi_dmac_parse_chan_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.axi_dmac_chan = type { i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"adi,source-bus-type\00", align 1
@AXI_DMAC_BUS_TYPE_FIFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"adi,destination-bus-type\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"adi,source-bus-width\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"adi,destination-bus-width\00", align 1
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_DEV_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.axi_dmac_chan*)* @axi_dmac_parse_chan_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_dmac_parse_chan_dt(%struct.device_node* %0, %struct.axi_dmac_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.axi_dmac_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.axi_dmac_chan* %1, %struct.axi_dmac_chan** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %129

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %129

20:                                               ; preds = %14
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %129

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @AXI_DMAC_BUS_TYPE_FIFO, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %129

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %37 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %129

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AXI_DMAC_BUS_TYPE_FIFO, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %129

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %54 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %129

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 8
  %64 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %65 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %6)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %129

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 8
  %75 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %76 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %78 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %81 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @max(i32 %79, i32 %82)
  %84 = sub nsw i64 %83, 1
  %85 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %86 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %85, i32 0, i32 5
  store i64 %84, i64* %86, align 8
  %87 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %88 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %72
  %91 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %92 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %96 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %97 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 8
  br label %128

98:                                               ; preds = %90, %72
  %99 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %100 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %104 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %108 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %109 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  br label %127

110:                                              ; preds = %102, %98
  %111 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %112 = call i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %116 = call i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %120 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %121 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %126

122:                                              ; preds = %114, %110
  %123 = load i32, i32* @DMA_DEV_TO_DEV, align 4
  %124 = load %struct.axi_dmac_chan*, %struct.axi_dmac_chan** %5, align 8
  %125 = getelementptr inbounds %struct.axi_dmac_chan, %struct.axi_dmac_chan* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %106
  br label %128

128:                                              ; preds = %127, %94
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %70, %59, %48, %42, %31, %25, %17, %12
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @axi_dmac_dest_is_mem(%struct.axi_dmac_chan*) #1

declare dso_local i64 @axi_dmac_src_is_mem(%struct.axi_dmac_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
