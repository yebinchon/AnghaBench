; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_get_ipu_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-image-convert.c_get_ipu_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_image_convert_chan = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32, %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_dma_chan* }
%struct.ipu_image_convert_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipu_image_convert_dma_chan = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"could not acquire IC\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"could not acquire idmac channels\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"could not acquire idmac rotation channels\0A\00", align 1
@IPU_IRQ_EOF = common dso_local global i32 0, align 4
@norotate_irq = common dso_local global i32 0, align 4
@do_bh = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"ipu-ic\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"could not acquire irq %d\0A\00", align 1
@rotate_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_image_convert_chan*)* @get_ipu_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ipu_resources(%struct.ipu_image_convert_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_image_convert_chan*, align 8
  %4 = alloca %struct.ipu_image_convert_dma_chan*, align 8
  %5 = alloca %struct.ipu_image_convert_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ipu_image_convert_chan* %0, %struct.ipu_image_convert_chan** %3, align 8
  %7 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %7, i32 0, i32 9
  %9 = load %struct.ipu_image_convert_dma_chan*, %struct.ipu_image_convert_dma_chan** %8, align 8
  store %struct.ipu_image_convert_dma_chan* %9, %struct.ipu_image_convert_dma_chan** %4, align 8
  %10 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %11 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %10, i32 0, i32 8
  %12 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %11, align 8
  store %struct.ipu_image_convert_priv* %12, %struct.ipu_image_convert_priv** %5, align 8
  %13 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %17 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @ipu_ic_get(%struct.TYPE_4__* %15, i32 %18)
  %20 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %21 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %23 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %22, i32 0, i32 6
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @IS_ERR(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %35 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %34, i32 0, i32 6
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @PTR_ERR(i8* %36)
  store i32 %37, i32* %6, align 4
  br label %183

38:                                               ; preds = %1
  %39 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load %struct.ipu_image_convert_dma_chan*, %struct.ipu_image_convert_dma_chan** %4, align 8
  %43 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, %struct.ipu_image_convert_dma_chan* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @ipu_idmac_get(%struct.TYPE_4__* %41, i32 %44)
  %46 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %47 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %46, i32 0, i32 5
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.ipu_image_convert_dma_chan*, %struct.ipu_image_convert_dma_chan** %4, align 8
  %52 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, %struct.ipu_image_convert_dma_chan* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ipu_idmac_get(%struct.TYPE_4__* %50, i32 %53)
  %55 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %56 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %58 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %38
  %63 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %64 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @IS_ERR(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62, %38
  %69 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %183

77:                                               ; preds = %62
  %78 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load %struct.ipu_image_convert_dma_chan*, %struct.ipu_image_convert_dma_chan** %4, align 8
  %82 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, %struct.ipu_image_convert_dma_chan* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @ipu_idmac_get(%struct.TYPE_4__* %80, i32 %83)
  %85 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %86 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %88 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load %struct.ipu_image_convert_dma_chan*, %struct.ipu_image_convert_dma_chan** %4, align 8
  %91 = getelementptr inbounds %struct.ipu_image_convert_dma_chan, %struct.ipu_image_convert_dma_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @ipu_idmac_get(%struct.TYPE_4__* %89, i32 %92)
  %94 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %95 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %97 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @IS_ERR(i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %77
  %102 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %103 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101, %77
  %108 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %109 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @EBUSY, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %183

116:                                              ; preds = %101
  %117 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %118 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %121 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = load i32, i32* @IPU_IRQ_EOF, align 4
  %124 = call i8* @ipu_idmac_channel_irq(%struct.TYPE_4__* %119, i8* %122, i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %127 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %129 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @norotate_irq, align 4
  %132 = load i32, i32* @do_bh, align 4
  %133 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %134 = call i32 @request_threaded_irq(i32 %130, i32 %131, i32 %132, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.ipu_image_convert_chan* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %116
  %138 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %139 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %144 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %148 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %147, i32 0, i32 0
  store i32 -1, i32* %148, align 8
  br label %183

149:                                              ; preds = %116
  %150 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %151 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %154 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* @IPU_IRQ_EOF, align 4
  %157 = call i8* @ipu_idmac_channel_irq(%struct.TYPE_4__* %152, i8* %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %160 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %162 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @rotate_irq, align 4
  %165 = load i32, i32* @do_bh, align 4
  %166 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %167 = call i32 @request_threaded_irq(i32 %163, i32 %164, i32 %165, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.ipu_image_convert_chan* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %149
  %171 = load %struct.ipu_image_convert_priv*, %struct.ipu_image_convert_priv** %5, align 8
  %172 = getelementptr inbounds %struct.ipu_image_convert_priv, %struct.ipu_image_convert_priv* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %177 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i32, i8*, ...) @dev_err(i32 %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  %180 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %181 = getelementptr inbounds %struct.ipu_image_convert_chan, %struct.ipu_image_convert_chan* %180, i32 0, i32 1
  store i32 -1, i32* %181, align 4
  br label %183

182:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %187

183:                                              ; preds = %170, %137, %107, %68, %27
  %184 = load %struct.ipu_image_convert_chan*, %struct.ipu_image_convert_chan** %3, align 8
  %185 = call i32 @release_ipu_resources(%struct.ipu_image_convert_chan* %184)
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %183, %182
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i8* @ipu_ic_get(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @ipu_idmac_get(%struct.TYPE_4__*, i32) #1

declare dso_local i8* @ipu_idmac_channel_irq(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.ipu_image_convert_chan*) #1

declare dso_local i32 @release_ipu_resources(%struct.ipu_image_convert_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
