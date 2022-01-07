; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_src_mult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_desc_set_src_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { %struct.xor_cb* }
%struct.xor_cb = type { i8, i8, i8 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dma_cdb = type { i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*, i8, i32, i8)* @ppc440spe_desc_set_src_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc440spe_desc_set_src_mult(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_chan* %1, i8 zeroext %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %7 = alloca %struct.ppc440spe_adma_chan*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct.dma_cdb*, align 8
  %12 = alloca %struct.xor_cb*, align 8
  %13 = alloca i8*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %6, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  store i8 %4, i8* %10, align 1
  %14 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %7, align 8
  %15 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %54 [
    i32 130, label %19
    i32 129, label %19
    i32 128, label %50
  ]

19:                                               ; preds = %5, %5
  %20 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %6, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %20, i32 0, i32 0
  %22 = load %struct.xor_cb*, %struct.xor_cb** %21, align 8
  %23 = bitcast %struct.xor_cb* %22 to %struct.dma_cdb*
  store %struct.dma_cdb* %23, %struct.dma_cdb** %11, align 8
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %34 [
    i32 131, label %25
    i32 133, label %28
    i32 132, label %31
  ]

25:                                               ; preds = %19
  %26 = load %struct.dma_cdb*, %struct.dma_cdb** %11, align 8
  %27 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %26, i32 0, i32 0
  store i8* %27, i8** %13, align 8
  br label %36

28:                                               ; preds = %19
  %29 = load %struct.dma_cdb*, %struct.dma_cdb** %11, align 8
  %30 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %29, i32 0, i32 1
  store i8* %30, i8** %13, align 8
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.dma_cdb*, %struct.dma_cdb** %11, align 8
  %33 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %32, i32 0, i32 2
  store i8* %33, i8** %13, align 8
  br label %36

34:                                               ; preds = %19
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %31, %28, %25
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = call zeroext i8 @cpu_to_le32(i8 zeroext %42)
  %44 = zext i8 %43 to i32
  %45 = load i8*, i8** %13, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %44
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  br label %56

50:                                               ; preds = %5
  %51 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %6, align 8
  %52 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %51, i32 0, i32 0
  %53 = load %struct.xor_cb*, %struct.xor_cb** %52, align 8
  store %struct.xor_cb* %53, %struct.xor_cb** %12, align 8
  br label %56

54:                                               ; preds = %5
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %50, %36
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local zeroext i8 @cpu_to_le32(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
