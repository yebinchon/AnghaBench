; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_config_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_config_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.d40_chan = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@dma40_memcpy_conf_log = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@dma40_memcpy_channels = common dso_local global i32* null, align 8
@dma40_memcpy_conf_phy = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@D40_SREG_CFG_TIM_POS = common dso_local global i32 0, align 4
@D40_SREG_CFG_EIM_POS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"No memcpy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*)* @d40_config_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_config_memcpy(%struct.d40_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  %5 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %6 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @DMA_MEMCPY, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @dma_has_cap(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %1
  %16 = load i32, i32* @DMA_SLAVE, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @dma_has_cap(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %15
  %21 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %22 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %21, i32 0, i32 2
  %23 = bitcast %struct.TYPE_10__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 bitcast (%struct.TYPE_10__* @dma40_memcpy_conf_log to i8*), i64 4, i1 false)
  %24 = load i32*, i32** @dma40_memcpy_channels, align 8
  %25 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %26 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %32 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %35 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %34, i32 0, i32 2
  %36 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %37 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %40 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = call i32 @d40_log_cfg(%struct.TYPE_10__* %35, i32* %38, i32* %41)
  br label %81

43:                                               ; preds = %15, %1
  %44 = load i32, i32* @DMA_MEMCPY, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @dma_has_cap(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* @DMA_SLAVE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @dma_has_cap(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %55 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %54, i32 0, i32 2
  %56 = bitcast %struct.TYPE_10__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 bitcast (%struct.TYPE_10__* @dma40_memcpy_conf_phy to i8*), i64 4, i1 false)
  %57 = load i32, i32* @D40_SREG_CFG_TIM_POS, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %60 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @D40_SREG_CFG_EIM_POS, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %66 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @D40_SREG_CFG_EIM_POS, align 4
  %70 = call i32 @BIT(i32 %69)
  %71 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %72 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %80

75:                                               ; preds = %48, %43
  %76 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %77 = call i32 @chan_err(%struct.d40_chan* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %53
  br label %81

81:                                               ; preds = %80, %20
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %75
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @dma_has_cap(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @d40_log_cfg(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @chan_err(%struct.d40_chan*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
