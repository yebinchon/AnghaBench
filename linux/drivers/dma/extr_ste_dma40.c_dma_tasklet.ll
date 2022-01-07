; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_dma_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { i64, i32, i32, i32 }
%struct.d40_desc = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dmaengine_desc_callback = type { i32 }

@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dma_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca %struct.d40_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dmaengine_desc_callback, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.d40_chan*
  store %struct.d40_chan* %9, %struct.d40_chan** %3, align 8
  %10 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %11 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %10, i32 0, i32 1
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %15 = call %struct.d40_desc* @d40_first_done(%struct.d40_chan* %14)
  store %struct.d40_desc* %15, %struct.d40_desc** %4, align 8
  %16 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %17 = icmp eq %struct.d40_desc* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %20 = call %struct.d40_desc* @d40_first_active_get(%struct.d40_chan* %19)
  store %struct.d40_desc* %20, %struct.d40_desc** %4, align 8
  %21 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %22 = icmp eq %struct.d40_desc* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %25 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %18
  br label %121

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %32 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %37 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %36, i32 0, i32 2
  %38 = call i32 @dma_cookie_complete(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %41 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %46 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %45, i32 0, i32 1
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %136

49:                                               ; preds = %39
  %50 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %51 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %61 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %60, i32 0, i32 2
  %62 = call i32 @dmaengine_desc_get_callback(%struct.TYPE_4__* %61, %struct.dmaengine_desc_callback* %7)
  %63 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %64 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %49
  %68 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %69 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %68, i32 0, i32 2
  %70 = call i64 @async_tx_test_ack(%struct.TYPE_4__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %74 = call i32 @d40_desc_remove(%struct.d40_desc* %73)
  %75 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %76 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %77 = call i32 @d40_desc_free(%struct.d40_chan* %75, %struct.d40_desc* %76)
  br label %97

78:                                               ; preds = %67
  %79 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %80 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %85 = call i32 @d40_desc_remove(%struct.d40_desc* %84)
  %86 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %87 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %88 = call i32 @d40_lcla_free_all(%struct.d40_chan* %86, %struct.d40_desc* %87)
  %89 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %90 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %89, i32 0, i32 1
  %91 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %92 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %91, i32 0, i32 3
  %93 = call i32 @list_add_tail(i32* %90, i32* %92)
  %94 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %95 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  br label %96

96:                                               ; preds = %83, %78
  br label %97

97:                                               ; preds = %96, %72
  br label %98

98:                                               ; preds = %97, %49
  %99 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %100 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* %100, align 8
  %103 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %104 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %98
  %108 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %109 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %108, i32 0, i32 2
  %110 = call i32 @tasklet_schedule(i32* %109)
  br label %111

111:                                              ; preds = %107, %98
  %112 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %113 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %112, i32 0, i32 1
  %114 = load i64, i64* %5, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = call i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback* %7, i32* null)
  br label %120

120:                                              ; preds = %118, %111
  br label %136

121:                                              ; preds = %28
  %122 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %123 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %128 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, -1
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %133 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %132, i32 0, i32 1
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %131, %120, %44
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.d40_desc* @d40_first_done(%struct.d40_chan*) #1

declare dso_local %struct.d40_desc* @d40_first_active_get(%struct.d40_chan*) #1

declare dso_local i32 @dma_cookie_complete(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dmaengine_desc_get_callback(%struct.TYPE_4__*, %struct.dmaengine_desc_callback*) #1

declare dso_local i64 @async_tx_test_ack(%struct.TYPE_4__*) #1

declare dso_local i32 @d40_desc_remove(%struct.d40_desc*) #1

declare dso_local i32 @d40_desc_free(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_lcla_free_all(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
