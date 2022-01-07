; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_ctl_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_shdmac.c_sh_dmae_ctl_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_dmae_device = type { i32 }

@sh_dmae_lock = common dso_local global i32 0, align 4
@DMAOR_NMIF = common dso_local global i16 0, align 2
@DMAOR_AE = common dso_local global i16 0, align 2
@DMAOR_DME = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_dmae_device*)* @sh_dmae_ctl_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_dmae_ctl_stop(%struct.sh_dmae_device* %0) #0 {
  %2 = alloca %struct.sh_dmae_device*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  store %struct.sh_dmae_device* %0, %struct.sh_dmae_device** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @sh_dmae_lock, i64 %5)
  %7 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %2, align 8
  %8 = call zeroext i16 @dmaor_read(%struct.sh_dmae_device* %7)
  store i16 %8, i16* %3, align 2
  %9 = load %struct.sh_dmae_device*, %struct.sh_dmae_device** %2, align 8
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @DMAOR_NMIF, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @DMAOR_AE, align 2
  %15 = zext i16 %14 to i32
  %16 = or i32 %13, %15
  %17 = load i16, i16* @DMAOR_DME, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %11, %20
  %22 = trunc i32 %21 to i16
  %23 = call i32 @dmaor_write(%struct.sh_dmae_device* %9, i16 zeroext %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* @sh_dmae_lock, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @dmaor_read(%struct.sh_dmae_device*) #1

declare dso_local i32 @dmaor_write(%struct.sh_dmae_device*, i16 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
