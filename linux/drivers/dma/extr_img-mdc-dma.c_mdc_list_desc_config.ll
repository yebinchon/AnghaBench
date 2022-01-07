; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_list_desc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_list_desc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdc_chan = type { i32, %struct.TYPE_2__, %struct.mdc_dma* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mdc_dma = type { i32, i32 }
%struct.mdc_hw_list_desc = type { i32, i32, i64, i32, i32*, i64, i64, i8*, i8* }

@MDC_GENERAL_CONFIG_IEN = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_LIST_IEN = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_LEVEL_INT = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_PHYSICAL_W = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_PHYSICAL_R = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_STHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_RTHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_WTHREAD_SHIFT = common dso_local global i32 0, align 4
@MDC_CONTROL_AND_STATUS_LIST_EN = common dso_local global i32 0, align 4
@MDC_CONTROL_AND_STATUS_EN = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_INC_R = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_DREQ_ENABLE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@MDC_GENERAL_CONFIG_INC_W = common dso_local global i32 0, align 4
@MDC_READ_PORT_CONFIG_BURST_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdc_chan*, %struct.mdc_hw_list_desc*, i32, i8*, i8*, i64)* @mdc_list_desc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdc_list_desc_config(%struct.mdc_chan* %0, %struct.mdc_hw_list_desc* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.mdc_chan*, align 8
  %8 = alloca %struct.mdc_hw_list_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mdc_dma*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdc_chan* %0, %struct.mdc_chan** %7, align 8
  store %struct.mdc_hw_list_desc* %1, %struct.mdc_hw_list_desc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %17 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %16, i32 0, i32 2
  %18 = load %struct.mdc_dma*, %struct.mdc_dma** %17, align 8
  store %struct.mdc_dma* %18, %struct.mdc_dma** %13, align 8
  %19 = load i32, i32* @MDC_GENERAL_CONFIG_IEN, align 4
  %20 = load i32, i32* @MDC_GENERAL_CONFIG_LIST_IEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MDC_GENERAL_CONFIG_LEVEL_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MDC_GENERAL_CONFIG_PHYSICAL_W, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MDC_GENERAL_CONFIG_PHYSICAL_R, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %29 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %31 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MDC_READ_PORT_CONFIG_STHREAD_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %36 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MDC_READ_PORT_CONFIG_RTHREAD_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %34, %39
  %41 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %42 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MDC_READ_PORT_CONFIG_WTHREAD_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %40, %45
  %47 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %48 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %51 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %54 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %53, i32 0, i32 7
  store i8* %52, i8** %54, align 8
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %55, 1
  %57 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %58 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %60 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %62 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @MDC_CONTROL_AND_STATUS_LIST_EN, align 4
  %64 = load i32, i32* @MDC_CONTROL_AND_STATUS_EN, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %67 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %69 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %72 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ALIGNED(i8* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %6
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %79 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @IS_ALIGNED(i8* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %85 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %88 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 %86, %89
  store i32 %90, i32* %14, align 4
  br label %100

91:                                               ; preds = %76, %6
  %92 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %93 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %96 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %97, 1
  %99 = mul i32 %94, %98
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %91, %83
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %137

104:                                              ; preds = %100
  %105 = load i32, i32* @MDC_GENERAL_CONFIG_INC_R, align 4
  %106 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %107 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* @MDC_READ_PORT_CONFIG_DREQ_ENABLE, align 4
  %111 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %112 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %116 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %117 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @mdc_set_read_width(%struct.mdc_hw_list_desc* %115, i32 %118)
  %120 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %121 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %122 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @mdc_set_write_width(%struct.mdc_hw_list_desc* %120, i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %128 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %132 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %130, %134
  %136 = call i32 @min(i32 %126, i32 %135)
  store i32 %136, i32* %15, align 4
  br label %194

137:                                              ; preds = %100
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %174

141:                                              ; preds = %137
  %142 = load i32, i32* @MDC_GENERAL_CONFIG_INC_W, align 4
  %143 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %144 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* @MDC_READ_PORT_CONFIG_DREQ_ENABLE, align 4
  %148 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %149 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %153 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %154 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mdc_set_read_width(%struct.mdc_hw_list_desc* %152, i32 %156)
  %158 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %159 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %160 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @mdc_set_write_width(%struct.mdc_hw_list_desc* %158, i32 %161)
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %165 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.mdc_chan*, %struct.mdc_chan** %7, align 8
  %169 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %167, %171
  %173 = call i32 @min(i32 %163, i32 %172)
  store i32 %173, i32* %15, align 4
  br label %193

174:                                              ; preds = %137
  %175 = load i32, i32* @MDC_GENERAL_CONFIG_INC_R, align 4
  %176 = load i32, i32* @MDC_GENERAL_CONFIG_INC_W, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %179 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %183 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %184 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @mdc_set_read_width(%struct.mdc_hw_list_desc* %182, i32 %185)
  %187 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %188 = load %struct.mdc_dma*, %struct.mdc_dma** %13, align 8
  %189 = getelementptr inbounds %struct.mdc_dma, %struct.mdc_dma* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @mdc_set_write_width(%struct.mdc_hw_list_desc* %187, i32 %190)
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %174, %141
  br label %194

194:                                              ; preds = %193, %104
  %195 = load i32, i32* %15, align 4
  %196 = sub i32 %195, 1
  %197 = load i32, i32* @MDC_READ_PORT_CONFIG_BURST_SIZE_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %8, align 8
  %200 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  ret void
}

declare dso_local i64 @IS_ALIGNED(i8*, i32) #1

declare dso_local i32 @mdc_set_read_width(%struct.mdc_hw_list_desc*, i32) #1

declare dso_local i32 @mdc_set_write_width(%struct.mdc_hw_list_desc*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
