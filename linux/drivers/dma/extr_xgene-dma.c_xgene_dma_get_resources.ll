; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.xgene_dma = type { i32, %struct.TYPE_2__*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to get csr region\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to ioremap csr region\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get ring csr region\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to ioremap ring csr region\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get ring cmd csr region\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Failed to ioremap ring cmd csr region\00", align 1
@XGENE_DMA_RING_CMD_SM_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to get efuse csr region\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to ioremap efuse csr region\00", align 1
@XGENE_DMA_MAX_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.xgene_dma*)* @xgene_dma_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_get_resources(%struct.platform_device* %0, %struct.xgene_dma* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.xgene_dma*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.xgene_dma* %1, %struct.xgene_dma** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %6, align 8
  %12 = load %struct.resource*, %struct.resource** %6, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %184

20:                                               ; preds = %2
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @resource_size(%struct.resource* %26)
  %28 = call i8* @devm_ioremap(i32* %22, i32 %25, i32 %27)
  %29 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %30 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %32 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %20
  %36 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %184

41:                                               ; preds = %20
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 1)
  store %struct.resource* %44, %struct.resource** %6, align 8
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %184

53:                                               ; preds = %41
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.resource*, %struct.resource** %6, align 8
  %60 = call i32 @resource_size(%struct.resource* %59)
  %61 = call i8* @devm_ioremap(i32* %55, i32 %58, i32 %60)
  %62 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %63 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %65 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %64, i32 0, i32 4
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %53
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %184

74:                                               ; preds = %53
  %75 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = call %struct.resource* @platform_get_resource(%struct.platform_device* %75, i32 %76, i32 2)
  store %struct.resource* %77, %struct.resource** %6, align 8
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = icmp ne %struct.resource* %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %184

86:                                               ; preds = %74
  %87 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.resource*, %struct.resource** %6, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.resource*, %struct.resource** %6, align 8
  %93 = call i32 @resource_size(%struct.resource* %92)
  %94 = call i8* @devm_ioremap(i32* %88, i32 %91, i32 %93)
  %95 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %96 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %98 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %86
  %102 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %184

107:                                              ; preds = %86
  %108 = load i64, i64* @XGENE_DMA_RING_CMD_SM_OFFSET, align 8
  %109 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %110 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr i8, i8* %111, i64 %108
  store i8* %112, i8** %110, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %114 = load i32, i32* @IORESOURCE_MEM, align 4
  %115 = call %struct.resource* @platform_get_resource(%struct.platform_device* %113, i32 %114, i32 3)
  store %struct.resource* %115, %struct.resource** %6, align 8
  %116 = load %struct.resource*, %struct.resource** %6, align 8
  %117 = icmp ne %struct.resource* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %107
  %119 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %122 = load i32, i32* @ENXIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %184

124:                                              ; preds = %107
  %125 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.resource*, %struct.resource** %6, align 8
  %128 = getelementptr inbounds %struct.resource, %struct.resource* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.resource*, %struct.resource** %6, align 8
  %131 = call i32 @resource_size(%struct.resource* %130)
  %132 = call i8* @devm_ioremap(i32* %126, i32 %129, i32 %131)
  %133 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %134 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %136 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %124
  %140 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %184

145:                                              ; preds = %124
  %146 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %147 = call i32 @platform_get_irq(%struct.platform_device* %146, i32 0)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sle i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i32, i32* @ENXIO, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %184

153:                                              ; preds = %145
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %156 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  store i32 1, i32* %8, align 4
  br label %157

157:                                              ; preds = %180, %153
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @XGENE_DMA_MAX_CHANNEL, align 4
  %160 = icmp sle i32 %158, %159
  br i1 %160, label %161, label %183

161:                                              ; preds = %157
  %162 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @platform_get_irq(%struct.platform_device* %162, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* @ENXIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %184

170:                                              ; preds = %161
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.xgene_dma*, %struct.xgene_dma** %5, align 8
  %173 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load i32, i32* %8, align 4
  %176 = sub nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  store i32 %171, i32* %179, align 4
  br label %180

180:                                              ; preds = %170
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %157

183:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %167, %150, %139, %118, %101, %80, %68, %47, %35, %14
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
