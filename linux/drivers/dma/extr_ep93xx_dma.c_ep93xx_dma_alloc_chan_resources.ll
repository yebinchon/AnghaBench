; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ep93xx_dma.c_ep93xx_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.ep93xx_dma_data* }
%struct.ep93xx_dma_data = type { i32, i64, i8* }
%struct.ep93xx_dma_chan = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.ep93xx_dma_chan*)*, i32 }
%struct.ep93xx_dma_desc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EP93XX_DMA_I2S1 = common dso_local global i32 0, align 4
@EP93XX_DMA_IRDA = common dso_local global i32 0, align 4
@ep93xx_dma_interrupt = common dso_local global i32 0, align 4
@DMA_MAX_CHAN_DESCRIPTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not enough descriptors\0A\00", align 1
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@ep93xx_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @ep93xx_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.ep93xx_dma_chan*, align 8
  %5 = alloca %struct.ep93xx_dma_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ep93xx_dma_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = call %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan* %10)
  store %struct.ep93xx_dma_chan* %11, %struct.ep93xx_dma_chan** %4, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %13, align 8
  store %struct.ep93xx_dma_data* %14, %struct.ep93xx_dma_data** %5, align 8
  %15 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %16 = call i8* @dma_chan_name(%struct.dma_chan* %15)
  store i8* %16, i8** %6, align 8
  %17 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %18 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %1
  %24 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %25 = icmp ne %struct.ep93xx_dma_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %179

29:                                               ; preds = %23
  %30 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %31 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EP93XX_DMA_I2S1, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %37 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EP93XX_DMA_IRDA, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %179

44:                                               ; preds = %35
  %45 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %46 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %49 = call i64 @ep93xx_dma_chan_direction(%struct.dma_chan* %48)
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %179

54:                                               ; preds = %44
  br label %77

55:                                               ; preds = %1
  %56 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %57 = icmp ne %struct.ep93xx_dma_data* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %60 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %72 [
    i32 128, label %62
    i32 129, label %62
  ]

62:                                               ; preds = %58, %58
  %63 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %64 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @is_slave_direction(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %179

71:                                               ; preds = %62
  br label %75

72:                                               ; preds = %58
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %179

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %79 = icmp ne %struct.ep93xx_dma_data* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %82 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.ep93xx_dma_data*, %struct.ep93xx_dma_data** %5, align 8
  %87 = getelementptr inbounds %struct.ep93xx_dma_data, %struct.ep93xx_dma_data* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %6, align 8
  br label %89

89:                                               ; preds = %85, %80, %77
  %90 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %91 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @clk_enable(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %179

98:                                               ; preds = %89
  %99 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %100 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ep93xx_dma_interrupt, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %105 = call i32 @request_irq(i32 %101, i32 %102, i32 0, i8* %103, %struct.ep93xx_dma_chan* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98
  br label %173

109:                                              ; preds = %98
  %110 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %111 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %110, i32 0, i32 2
  %112 = call i32 @spin_lock_irq(i32* %111)
  %113 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %114 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %113, i32 0, i32 4
  %115 = call i32 @dma_cookie_init(i32* %114)
  %116 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %117 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32 (%struct.ep93xx_dma_chan*)*, i32 (%struct.ep93xx_dma_chan*)** %119, align 8
  %121 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %122 = call i32 %120(%struct.ep93xx_dma_chan* %121)
  store i32 %122, i32* %7, align 4
  %123 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %124 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %123, i32 0, i32 2
  %125 = call i32 @spin_unlock_irq(i32* %124)
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %109
  br label %167

129:                                              ; preds = %109
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %162, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @DMA_MAX_CHAN_DESCRIPTORS, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call %struct.ep93xx_dma_desc* @kzalloc(i32 12, i32 %135)
  store %struct.ep93xx_dma_desc* %136, %struct.ep93xx_dma_desc** %9, align 8
  %137 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %138 = icmp ne %struct.ep93xx_dma_desc* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %141 = call i32 @chan2dev(%struct.ep93xx_dma_chan* %140)
  %142 = call i32 @dev_warn(i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %165

143:                                              ; preds = %134
  %144 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %145 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %144, i32 0, i32 1
  %146 = call i32 @INIT_LIST_HEAD(i32* %145)
  %147 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %148 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %147, i32 0, i32 0
  %149 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %150 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %148, %struct.dma_chan* %149)
  %151 = load i32, i32* @DMA_CTRL_ACK, align 4
  %152 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %153 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = load i32, i32* @ep93xx_dma_tx_submit, align 4
  %156 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %157 = getelementptr inbounds %struct.ep93xx_dma_desc, %struct.ep93xx_dma_desc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 4
  %159 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %160 = load %struct.ep93xx_dma_desc*, %struct.ep93xx_dma_desc** %9, align 8
  %161 = call i32 @ep93xx_dma_desc_put(%struct.ep93xx_dma_chan* %159, %struct.ep93xx_dma_desc* %160)
  br label %162

162:                                              ; preds = %143
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %130

165:                                              ; preds = %139, %130
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %2, align 4
  br label %179

167:                                              ; preds = %128
  %168 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %169 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %172 = call i32 @free_irq(i32 %170, %struct.ep93xx_dma_chan* %171)
  br label %173

173:                                              ; preds = %167, %108
  %174 = load %struct.ep93xx_dma_chan*, %struct.ep93xx_dma_chan** %4, align 8
  %175 = getelementptr inbounds %struct.ep93xx_dma_chan, %struct.ep93xx_dma_chan* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @clk_disable(i32 %176)
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %173, %165, %96, %72, %68, %51, %41, %26
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.ep93xx_dma_chan* @to_ep93xx_dma_chan(%struct.dma_chan*) #1

declare dso_local i8* @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i64 @ep93xx_dma_chan_direction(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i64) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.ep93xx_dma_chan*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dma_cookie_init(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.ep93xx_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.ep93xx_dma_chan*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, %struct.dma_chan*) #1

declare dso_local i32 @ep93xx_dma_desc_put(%struct.ep93xx_dma_chan*, %struct.ep93xx_dma_desc*) #1

declare dso_local i32 @free_irq(i32, %struct.ep93xx_dma_chan*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
