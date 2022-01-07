; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_img-mdc-dma.c_mdc_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }
%struct.mdc_chan = type { %struct.TYPE_6__, %struct.mdc_tx_desc* }
%struct.TYPE_6__ = type { i32 }
%struct.mdc_tx_desc = type { i64, %struct.mdc_hw_list_desc*, i64, i32, %struct.TYPE_5__ }
%struct.mdc_hw_list_desc = type { i32, %struct.mdc_hw_list_desc* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_COMPLETE = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_INT_ACTIVE = common dso_local global i32 0, align 4
@MDC_ACTIVE_TRANSFER_SIZE = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_DONE_MASK = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT = common dso_local global i32 0, align 4
@MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK = common dso_local global i32 0, align 4
@MDC_TRANSFER_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i64, %struct.dma_tx_state*)* @mdc_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc_tx_status(%struct.dma_chan* %0, i64 %1, %struct.dma_tx_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_tx_state*, align 8
  %8 = alloca %struct.mdc_chan*, align 8
  %9 = alloca %struct.mdc_tx_desc*, align 8
  %10 = alloca %struct.virt_dma_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mdc_hw_list_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dma_tx_state* %2, %struct.dma_tx_state** %7, align 8
  %22 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %23 = call %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan* %22)
  store %struct.mdc_chan* %23, %struct.mdc_chan** %8, align 8
  store i64 0, i64* %12, align 8
  %24 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %27 = call i32 @dma_cookie_status(%struct.dma_chan* %24, i64 %25, %struct.dma_tx_state* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @DMA_COMPLETE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %4, align 4
  br label %190

33:                                               ; preds = %3
  %34 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %35 = icmp ne %struct.dma_tx_state* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %190

38:                                               ; preds = %33
  %39 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %40 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %45 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %44, i32 0, i32 0
  %46 = load i64, i64* %6, align 8
  %47 = call %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__* %45, i64 %46)
  store %struct.virt_dma_desc* %47, %struct.virt_dma_desc** %10, align 8
  %48 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %49 = icmp ne %struct.virt_dma_desc* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %38
  %51 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %10, align 8
  %52 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %51, i32 0, i32 0
  %53 = call %struct.mdc_tx_desc* @to_mdc_desc(i32* %52)
  store %struct.mdc_tx_desc* %53, %struct.mdc_tx_desc** %9, align 8
  %54 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %9, align 8
  %55 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  br label %180

57:                                               ; preds = %38
  %58 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %59 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %58, i32 0, i32 1
  %60 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %59, align 8
  %61 = icmp ne %struct.mdc_tx_desc* %60, null
  br i1 %61, label %62, label %179

62:                                               ; preds = %57
  %63 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %64 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %63, i32 0, i32 1
  %65 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %64, align 8
  %66 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %179

72:                                               ; preds = %62
  %73 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %74 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %73, i32 0, i32 1
  %75 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %74, align 8
  store %struct.mdc_tx_desc* %75, %struct.mdc_tx_desc** %9, align 8
  br label %76

76:                                               ; preds = %92, %72
  %77 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %78 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %79 = call i32 @mdc_chan_readl(%struct.mdc_chan* %77, i32 %78)
  %80 = load i32, i32* @MDC_CMDS_PROCESSED_INT_ACTIVE, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  store i32 %82, i32* %15, align 4
  %83 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %84 = load i32, i32* @MDC_ACTIVE_TRANSFER_SIZE, align 4
  %85 = call i32 @mdc_chan_readl(%struct.mdc_chan* %83, i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %87 = load i32, i32* @MDC_CMDS_PROCESSED, align 4
  %88 = call i32 @mdc_chan_readl(%struct.mdc_chan* %86, i32 %87)
  %89 = load i32, i32* @MDC_CMDS_PROCESSED_INT_ACTIVE, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  store i32 %91, i32* %16, align 4
  br label %92

92:                                               ; preds = %76
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %76, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_SHIFT, align 4
  %99 = ashr i32 %97, %98
  %100 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_MASK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_PROCESSED_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* @MDC_CMDS_PROCESSED_CMDS_DONE_MASK, align 4
  %111 = add nsw i32 %110, 1
  %112 = srem i32 %109, %111
  store i32 %112, i32* %21, align 4
  %113 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %9, align 8
  %114 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %96
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %21, align 4
  br label %128

120:                                              ; preds = %96
  %121 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %9, align 8
  %122 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %21, align 4
  br label %128

128:                                              ; preds = %120, %117
  %129 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %9, align 8
  %130 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %12, align 8
  %132 = load %struct.mdc_tx_desc*, %struct.mdc_tx_desc** %9, align 8
  %133 = getelementptr inbounds %struct.mdc_tx_desc, %struct.mdc_tx_desc* %132, i32 0, i32 1
  %134 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %133, align 8
  store %struct.mdc_hw_list_desc* %134, %struct.mdc_hw_list_desc** %14, align 8
  store i32 0, i32* %20, align 4
  br label %135

135:                                              ; preds = %150, %128
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %14, align 8
  %141 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %12, align 8
  %146 = sub i64 %145, %144
  store i64 %146, i64* %12, align 8
  %147 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %14, align 8
  %148 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %147, i32 0, i32 1
  %149 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %148, align 8
  store %struct.mdc_hw_list_desc* %149, %struct.mdc_hw_list_desc** %14, align 8
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %20, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %20, align 4
  br label %135

153:                                              ; preds = %135
  %154 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %14, align 8
  %155 = icmp ne %struct.mdc_hw_list_desc* %154, null
  br i1 %155, label %156, label %178

156:                                              ; preds = %153
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* @MDC_TRANSFER_SIZE_MASK, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %14, align 8
  %162 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %12, align 8
  %168 = sub i64 %167, %166
  store i64 %168, i64* %12, align 8
  br label %177

169:                                              ; preds = %156
  %170 = load %struct.mdc_hw_list_desc*, %struct.mdc_hw_list_desc** %14, align 8
  %171 = getelementptr inbounds %struct.mdc_hw_list_desc, %struct.mdc_hw_list_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %12, align 8
  %176 = sub i64 %175, %174
  store i64 %176, i64* %12, align 8
  br label %177

177:                                              ; preds = %169, %160
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %178, %62, %57
  br label %180

180:                                              ; preds = %179, %50
  %181 = load %struct.mdc_chan*, %struct.mdc_chan** %8, align 8
  %182 = getelementptr inbounds %struct.mdc_chan, %struct.mdc_chan* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.dma_tx_state*, %struct.dma_tx_state** %7, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @dma_set_residue(%struct.dma_tx_state* %186, i64 %187)
  %189 = load i32, i32* %13, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %180, %36, %31
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.mdc_chan* @to_mdc_chan(%struct.dma_chan*) #1

declare dso_local i32 @dma_cookie_status(%struct.dma_chan*, i64, %struct.dma_tx_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.virt_dma_desc* @vchan_find_desc(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.mdc_tx_desc* @to_mdc_desc(i32*) #1

declare dso_local i32 @mdc_chan_readl(%struct.mdc_chan*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_set_residue(%struct.dma_tx_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
