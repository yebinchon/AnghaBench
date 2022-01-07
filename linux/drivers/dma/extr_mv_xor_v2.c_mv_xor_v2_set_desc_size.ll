; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_set_desc_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor_v2.c_mv_xor_v2_set_desc_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_xor_v2_device = type { i64 }

@MV_XOR_V2_DMA_DESQ_CTRL_128B = common dso_local global i32 0, align 4
@MV_XOR_V2_DMA_DESQ_CTRL_OFF = common dso_local global i64 0, align 8
@MV_XOR_V2_EXT_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_xor_v2_device*)* @mv_xor_v2_set_desc_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_v2_set_desc_size(%struct.mv_xor_v2_device* %0) #0 {
  %2 = alloca %struct.mv_xor_v2_device*, align 8
  store %struct.mv_xor_v2_device* %0, %struct.mv_xor_v2_device** %2, align 8
  %3 = load i32, i32* @MV_XOR_V2_DMA_DESQ_CTRL_128B, align 4
  %4 = load %struct.mv_xor_v2_device*, %struct.mv_xor_v2_device** %2, align 8
  %5 = getelementptr inbounds %struct.mv_xor_v2_device, %struct.mv_xor_v2_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MV_XOR_V2_DMA_DESQ_CTRL_OFF, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load i32, i32* @MV_XOR_V2_EXT_DESC_SIZE, align 4
  ret i32 %10
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
