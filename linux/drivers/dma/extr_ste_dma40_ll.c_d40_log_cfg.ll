; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_log_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40_ll.c_d40_log_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stedma40_chan_cfg = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_MEM_TO_MEM = common dso_local global i64 0, align 8
@D40_MEM_LCSP1_SCFG_INCR_POS = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@D40_MEM_LCSP3_DCFG_INCR_POS = common dso_local global i32 0, align 4
@DMA_DEV_TO_DEV = common dso_local global i64 0, align 8
@D40_MEM_LCSP1_SCFG_MST_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP3_DCFG_MST_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP3_DCFG_EIM_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP3_DCFG_PSIZE_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP3_DCFG_ESIZE_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP1_SCFG_EIM_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP1_SCFG_PSIZE_POS = common dso_local global i32 0, align 4
@D40_MEM_LCSP1_SCFG_ESIZE_POS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d40_log_cfg(%struct.stedma40_chan_cfg* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.stedma40_chan_cfg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stedma40_chan_cfg* %0, %struct.stedma40_chan_cfg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @D40_MEM_LCSP1_SCFG_INCR_POS, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %33 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DMA_MEM_TO_MEM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31, %25
  %38 = load i32, i32* @D40_MEM_LCSP3_DCFG_INCR_POS, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @D40_MEM_LCSP1_SCFG_MST_POS, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %67 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @DMA_DEV_TO_DEV, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @D40_MEM_LCSP3_DCFG_MST_POS, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i32, i32* @D40_MEM_LCSP3_DCFG_EIM_POS, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  %81 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %82 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @D40_MEM_LCSP3_DCFG_PSIZE_POS, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %90 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @d40_width_to_bits(i32 %92)
  %94 = load i32, i32* @D40_MEM_LCSP3_DCFG_ESIZE_POS, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @D40_MEM_LCSP1_SCFG_EIM_POS, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %103 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @D40_MEM_LCSP1_SCFG_PSIZE_POS, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.stedma40_chan_cfg*, %struct.stedma40_chan_cfg** %4, align 8
  %111 = getelementptr inbounds %struct.stedma40_chan_cfg, %struct.stedma40_chan_cfg* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @d40_width_to_bits(i32 %113)
  %115 = load i32, i32* @D40_MEM_LCSP1_SCFG_ESIZE_POS, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32*, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %7, align 4
  %122 = load i32*, i32** %6, align 8
  store i32 %121, i32* %122, align 4
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @d40_width_to_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
