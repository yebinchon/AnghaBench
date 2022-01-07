; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_channel_conf_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ipu/extr_ipu_idmac.c_ipu_channel_conf_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPU_CONF_CSI_EN = common dso_local global i32 0, align 4
@IPU_CONF_IC_EN = common dso_local global i32 0, align 4
@IPU_CONF_SDC_EN = common dso_local global i32 0, align 4
@IPU_CONF_DI_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipu_channel_conf_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_channel_conf_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %13 [
    i32 131, label %5
    i32 130, label %5
    i32 129, label %9
    i32 128, label %9
  ]

5:                                                ; preds = %1, %1
  %6 = load i32, i32* @IPU_CONF_CSI_EN, align 4
  %7 = load i32, i32* @IPU_CONF_IC_EN, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  br label %14

9:                                                ; preds = %1, %1
  %10 = load i32, i32* @IPU_CONF_SDC_EN, align 4
  %11 = load i32, i32* @IPU_CONF_DI_EN, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %9, %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
