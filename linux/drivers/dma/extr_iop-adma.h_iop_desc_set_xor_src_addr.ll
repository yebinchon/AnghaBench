; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_xor_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_xor_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i32, i32, %struct.iop3xx_desc_aau* }
%struct.iop3xx_desc_aau = type { i32 }

@IOP_ADMA_XOR_MAX_BYTE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_desc_slot*, i32, i32)* @iop_desc_set_xor_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_set_xor_src_addr(%struct.iop_adma_desc_slot* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iop3xx_desc_aau*, align 8
  %8 = alloca %struct.iop3xx_desc_aau*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %13 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %12, i32 0, i32 2
  %14 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %13, align 8
  store %struct.iop3xx_desc_aau* %14, %struct.iop3xx_desc_aau** %7, align 8
  %15 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %16 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %19 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %34, %3
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, %22
  store i32 %24, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call %struct.iop3xx_desc_aau* @iop_hw_desc_slot_idx(%struct.iop3xx_desc_aau* %27, i32 %28)
  store %struct.iop3xx_desc_aau* %29, %struct.iop3xx_desc_aau** %8, align 8
  %30 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %8, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @iop3xx_aau_desc_set_src_addr(%struct.iop3xx_desc_aau* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i64, i64* @IOP_ADMA_XOR_MAX_BYTE_COUNT, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  br label %21

43:                                               ; preds = %21
  ret void
}

declare dso_local %struct.iop3xx_desc_aau* @iop_hw_desc_slot_idx(%struct.iop3xx_desc_aau*, i32) #1

declare dso_local i32 @iop3xx_aau_desc_set_src_addr(%struct.iop3xx_desc_aau*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
