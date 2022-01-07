; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_begin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dma-jz4780.c_jz4780_dma_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_dma_chan = type { i32, i32, %struct.TYPE_6__*, i64, i32 }
%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.jz4780_dma_dev = type { i32 }
%struct.virt_dma_desc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@DMA_CYCLIC = common dso_local global i64 0, align 8
@JZ_DMA_DCM_LINK = common dso_local global i32 0, align 4
@JZ_DMA_REG_DCS = common dso_local global i32 0, align 4
@JZ_DMA_REG_DRT = common dso_local global i32 0, align 4
@JZ_DMA_REG_DTC = common dso_local global i32 0, align 4
@JZ_DMA_REG_DDA = common dso_local global i32 0, align 4
@JZ_DMA_REG_DDRS = common dso_local global i32 0, align 4
@JZ_DMA_DCS_CTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4780_dma_chan*)* @jz4780_dma_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4780_dma_begin(%struct.jz4780_dma_chan* %0) #0 {
  %2 = alloca %struct.jz4780_dma_chan*, align 8
  %3 = alloca %struct.jz4780_dma_dev*, align 8
  %4 = alloca %struct.virt_dma_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.jz4780_dma_chan* %0, %struct.jz4780_dma_chan** %2, align 8
  %7 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %8 = call %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan* %7)
  store %struct.jz4780_dma_dev* %8, %struct.jz4780_dma_dev** %3, align 8
  %9 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %10 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %1
  %14 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %15 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %14, i32 0, i32 4
  %16 = call %struct.virt_dma_desc* @vchan_next_desc(i32* %15)
  store %struct.virt_dma_desc* %16, %struct.virt_dma_desc** %4, align 8
  %17 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %18 = icmp ne %struct.virt_dma_desc* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %155

20:                                               ; preds = %13
  %21 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %22 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %21, i32 0, i32 1
  %23 = call i32 @list_del(i32* %22)
  %24 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %25 = call %struct.TYPE_6__* @to_jz4780_dma_desc(%struct.virt_dma_desc* %24)
  %26 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %27 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %26, i32 0, i32 2
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %27, align 8
  %28 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %29 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %31 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %30, i32 0, i32 2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMA_CYCLIC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %20
  %38 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %4, align 8
  %39 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %47 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %45, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %44
  %53 = load i32, i32* @JZ_DMA_DCM_LINK, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %56 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %54
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %44

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69, %37, %20
  br label %84

71:                                               ; preds = %1
  %72 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %73 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  %76 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %77 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %76, i32 0, i32 2
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = urem i32 %75, %80
  %82 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %83 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %71, %70
  %85 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %86 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %87 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @jz4780_dma_chan_enable(%struct.jz4780_dma_dev* %85, i32 %88)
  %90 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %91 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %92 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %95 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %90, i32 %93, i32 %94, i64 0)
  %96 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %97 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %98 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @JZ_DMA_REG_DRT, align 4
  %101 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %102 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %96, i32 %99, i32 %100, i64 %103)
  %105 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %106 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %107 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @JZ_DMA_REG_DTC, align 4
  %110 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %111 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %110, i32 0, i32 2
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %116 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %105, i32 %108, i32 %109, i64 %121)
  %123 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %124 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %129 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 16
  %133 = add i64 %127, %132
  store i64 %133, i64* %6, align 8
  %134 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %135 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %136 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @JZ_DMA_REG_DDA, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %134, i32 %137, i32 %138, i64 %139)
  %141 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %142 = load i32, i32* @JZ_DMA_REG_DDRS, align 4
  %143 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %144 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @BIT(i32 %145)
  %147 = call i32 @jz4780_dma_ctrl_writel(%struct.jz4780_dma_dev* %141, i32 %142, i32 %146)
  %148 = load %struct.jz4780_dma_dev*, %struct.jz4780_dma_dev** %3, align 8
  %149 = load %struct.jz4780_dma_chan*, %struct.jz4780_dma_chan** %2, align 8
  %150 = getelementptr inbounds %struct.jz4780_dma_chan, %struct.jz4780_dma_chan* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @JZ_DMA_REG_DCS, align 4
  %153 = load i64, i64* @JZ_DMA_DCS_CTE, align 8
  %154 = call i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev* %148, i32 %151, i32 %152, i64 %153)
  br label %155

155:                                              ; preds = %84, %19
  ret void
}

declare dso_local %struct.jz4780_dma_dev* @jz4780_dma_chan_parent(%struct.jz4780_dma_chan*) #1

declare dso_local %struct.virt_dma_desc* @vchan_next_desc(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.TYPE_6__* @to_jz4780_dma_desc(%struct.virt_dma_desc*) #1

declare dso_local i32 @jz4780_dma_chan_enable(%struct.jz4780_dma_dev*, i32) #1

declare dso_local i32 @jz4780_dma_chn_writel(%struct.jz4780_dma_dev*, i32, i32, i64) #1

declare dso_local i32 @jz4780_dma_ctrl_writel(%struct.jz4780_dma_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
