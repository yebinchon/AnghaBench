; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_prep_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_prep_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_desc = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.d40_chan = type { i32, %struct.stedma40_chan_cfg }
%struct.stedma40_chan_cfg = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Unaligned size\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Could not allocate lli\0A\00", align 1
@d40_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.d40_desc* (%struct.d40_chan*, %struct.scatterlist*, i32, i64)* @d40_prep_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.d40_desc* @d40_prep_desc(%struct.d40_chan* %0, %struct.scatterlist* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.d40_desc*, align 8
  %6 = alloca %struct.d40_chan*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.stedma40_chan_cfg*, align 8
  %11 = alloca %struct.d40_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %14 = call %struct.d40_desc* @d40_desc_get(%struct.d40_chan* %13)
  store %struct.d40_desc* %14, %struct.d40_desc** %11, align 8
  %15 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %16 = icmp ne %struct.d40_desc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store %struct.d40_desc* null, %struct.d40_desc** %5, align 8
  br label %74

18:                                               ; preds = %4
  %19 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %20 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %19, i32 0, i32 1
  store %struct.stedma40_chan_cfg* %20, %struct.stedma40_chan_cfg** %10, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %10, align 8
  %24 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %10, align 8
  %28 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @d40_sg_2_dmalen(%struct.scatterlist* %21, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %33 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %35 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %18
  %39 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %40 = call i32 @chan_err(%struct.d40_chan* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %70

41:                                               ; preds = %18
  %42 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %43 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %44 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %45 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @d40_pool_lli_alloc(%struct.d40_chan* %42, %struct.d40_desc* %43, i64 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %52 = call i32 @chan_err(%struct.d40_chan* %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %70

53:                                               ; preds = %41
  %54 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %55 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %58 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load i32, i32* @d40_tx_submit, align 4
  %61 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %62 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %65 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %64, i32 0, i32 1
  %66 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %67 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %66, i32 0, i32 0
  %68 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__* %65, i32* %67)
  %69 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  store %struct.d40_desc* %69, %struct.d40_desc** %5, align 8
  br label %74

70:                                               ; preds = %50, %38
  %71 = load %struct.d40_chan*, %struct.d40_chan** %6, align 8
  %72 = load %struct.d40_desc*, %struct.d40_desc** %11, align 8
  %73 = call i32 @d40_desc_free(%struct.d40_chan* %71, %struct.d40_desc* %72)
  store %struct.d40_desc* null, %struct.d40_desc** %5, align 8
  br label %74

74:                                               ; preds = %70, %53, %17
  %75 = load %struct.d40_desc*, %struct.d40_desc** %5, align 8
  ret %struct.d40_desc* %75
}

declare dso_local %struct.d40_desc* @d40_desc_get(%struct.d40_chan*) #1

declare dso_local i64 @d40_sg_2_dmalen(%struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @chan_err(%struct.d40_chan*, i8*) #1

declare dso_local i32 @d40_pool_lli_alloc(%struct.d40_chan*, %struct.d40_desc*, i64) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @d40_desc_free(%struct.d40_chan*, %struct.d40_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
