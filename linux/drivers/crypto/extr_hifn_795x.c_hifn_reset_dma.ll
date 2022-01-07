; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_reset_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_reset_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32 }

@HIFN_1_DMA_CNFG = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MSTRESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_DMARESET = common dso_local global i32 0, align 4
@HIFN_DMACNFG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*, i32)* @hifn_reset_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_reset_dma(%struct.hifn_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %6 = call i32 @hifn_stop_device(%struct.hifn_device* %5)
  %7 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %8 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %9 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %10 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @hifn_write_1(%struct.hifn_device* %7, i32 %8, i32 %13)
  %15 = call i32 @mdelay(i32 1)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %20 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %21 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %22 = call i32 @hifn_write_1(%struct.hifn_device* %19, i32 %20, i32 %21)
  %23 = call i32 @mdelay(i32 1)
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %26 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %27 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %28 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @hifn_write_1(%struct.hifn_device* %25, i32 %26, i32 %29)
  %31 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %32 = call i32 @hifn_reset_puc(%struct.hifn_device* %31)
  br label %33

33:                                               ; preds = %24, %18
  %34 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %35 = load i32, i32* @HIFN_1_DMA_CNFG, align 4
  %36 = load i32, i32* @HIFN_DMACNFG_MSTRESET, align 4
  %37 = load i32, i32* @HIFN_DMACNFG_DMARESET, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @HIFN_DMACNFG_MODE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @hifn_write_1(%struct.hifn_device* %34, i32 %35, i32 %40)
  %42 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %43 = call i32 @hifn_reset_puc(%struct.hifn_device* %42)
  ret void
}

declare dso_local i32 @hifn_stop_device(%struct.hifn_device*) #1

declare dso_local i32 @hifn_write_1(%struct.hifn_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hifn_reset_puc(%struct.hifn_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
