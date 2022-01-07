; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_zero_sum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_init_zero_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i32, i32, %struct.TYPE_2__, %struct.iop3xx_desc_aau* }
%struct.TYPE_2__ = type { i64 }
%struct.iop3xx_desc_aau = type { i64, i64 }
%union.anon = type { %struct.iop3xx_aau_desc_ctrl }
%struct.iop3xx_aau_desc_ctrl = type { i32, i64, i64 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iop_adma_desc_slot*, i32, i64)* @iop_desc_init_zero_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_desc_init_zero_sum(%struct.iop_adma_desc_slot* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iop3xx_desc_aau*, align 8
  %10 = alloca %struct.iop3xx_desc_aau*, align 8
  %11 = alloca %struct.iop3xx_desc_aau*, align 8
  %12 = alloca %union.anon, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %19 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %22 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %21, i32 0, i32 3
  %23 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %22, align 8
  store %struct.iop3xx_desc_aau* %23, %struct.iop3xx_desc_aau** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %70, %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  %30 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %9, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call %struct.iop3xx_desc_aau* @iop_hw_desc_slot_idx(%struct.iop3xx_desc_aau* %30, i32 %31)
  store %struct.iop3xx_desc_aau* %32, %struct.iop3xx_desc_aau** %11, align 8
  %33 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %11, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @iop3xx_desc_init_xor(%struct.iop3xx_desc_aau* %33, i32 %34, i64 %35)
  %37 = bitcast %union.anon* %12 to i64*
  store i64 %36, i64* %37, align 8
  %38 = bitcast %union.anon* %12 to %struct.iop3xx_aau_desc_ctrl*
  %39 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = bitcast %union.anon* %12 to %struct.iop3xx_aau_desc_ctrl*
  %41 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %44 = and i64 %42, %43
  %45 = bitcast %union.anon* %12 to %struct.iop3xx_aau_desc_ctrl*
  %46 = getelementptr inbounds %struct.iop3xx_aau_desc_ctrl, %struct.iop3xx_aau_desc_ctrl* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = bitcast %union.anon* %12 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %11, align 8
  %50 = getelementptr inbounds %struct.iop3xx_desc_aau, %struct.iop3xx_desc_aau* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %29
  %54 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call %struct.iop3xx_desc_aau* @iop_hw_desc_slot_idx(%struct.iop3xx_desc_aau* %54, i32 %57)
  store %struct.iop3xx_desc_aau* %58, %struct.iop3xx_desc_aau** %10, align 8
  %59 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %60 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = shl i32 %63, 5
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %10, align 8
  %68 = getelementptr inbounds %struct.iop3xx_desc_aau, %struct.iop3xx_desc_aau* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %53, %29
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %24

76:                                               ; preds = %24
  %77 = load i32, i32* %14, align 4
  ret i32 %77
}

declare dso_local %struct.iop3xx_desc_aau* @iop_hw_desc_slot_idx(%struct.iop3xx_desc_aau*, i32) #1

declare dso_local i64 @iop3xx_desc_init_xor(%struct.iop3xx_desc_aau*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
