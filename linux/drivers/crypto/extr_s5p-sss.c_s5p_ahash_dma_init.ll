; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_ahash_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_ahash_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32 }

@SSS_FCINTENCLR_HRDMAINTENCLR = common dso_local global i32 0, align 4
@SSS_FCINTENCLR_HDONEINTENCLR = common dso_local global i32 0, align 4
@SSS_FCINTENCLR_HPARTINTENCLR = common dso_local global i32 0, align 4
@SSS_HASHIN_MASK = common dso_local global i32 0, align 4
@SSS_FCINTENSET_HRDMAINTENSET = common dso_local global i32 0, align 4
@SSS_FCINTENSET_HDONEINTENSET = common dso_local global i32 0, align 4
@SSS_FCINTENSET_HPARTINTENSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*, i32)* @s5p_ahash_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_ahash_dma_init(%struct.s5p_aes_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_aes_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %6 = load i32, i32* @SSS_FCINTENCLR_HRDMAINTENCLR, align 4
  %7 = load i32, i32* @SSS_FCINTENCLR_HDONEINTENCLR, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SSS_FCINTENCLR_HPARTINTENCLR, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @s5p_hash_irq_disable(%struct.s5p_aes_dev* %5, i32 %10)
  %12 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %13 = call i32 @s5p_hash_dma_flush(%struct.s5p_aes_dev* %12)
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %15 = call i32 @s5p_hash_dma_enable(%struct.s5p_aes_dev* %14)
  %16 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SSS_HASHIN_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @s5p_hash_set_flow(%struct.s5p_aes_dev* %16, i32 %19)
  %21 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %22 = load i32, i32* @SSS_FCINTENSET_HRDMAINTENSET, align 4
  %23 = load i32, i32* @SSS_FCINTENSET_HDONEINTENSET, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SSS_FCINTENSET_HPARTINTENSET, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @s5p_hash_irq_enable(%struct.s5p_aes_dev* %21, i32 %26)
  ret void
}

declare dso_local i32 @s5p_hash_irq_disable(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_hash_dma_flush(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_hash_dma_enable(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_hash_set_flow(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_hash_irq_enable(%struct.s5p_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
