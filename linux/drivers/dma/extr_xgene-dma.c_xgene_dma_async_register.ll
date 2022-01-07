; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_async_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_xgene-dma.c_xgene_dma_async_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_dma = type { i32, %struct.dma_device*, %struct.xgene_dma_chan* }
%struct.dma_device = type { i32, i32 }
%struct.xgene_dma_chan = type { %struct.TYPE_3__, i32, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.dma_device* }

@xgene_dma_tasklet_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to register async device %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: CAPABILITY ( %s%s)\0A\00", align 1
@DMA_XOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"XOR \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DMA_PQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"PQ \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_dma*, i32)* @xgene_dma_async_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_dma_async_register(%struct.xgene_dma* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgene_dma_chan*, align 8
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca i32, align 4
  store %struct.xgene_dma* %0, %struct.xgene_dma** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %10 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %9, i32 0, i32 2
  %11 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %11, i64 %13
  store %struct.xgene_dma_chan* %14, %struct.xgene_dma_chan** %6, align 8
  %15 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %16 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %15, i32 0, i32 1
  %17 = load %struct.dma_device*, %struct.dma_device** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %17, i64 %19
  store %struct.dma_device* %20, %struct.dma_device** %7, align 8
  %21 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %22 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %23 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store %struct.dma_device* %21, %struct.dma_device** %24, align 8
  %25 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %26 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %29 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %28, i32 0, i32 6
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %32 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %35 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %34, i32 0, i32 4
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %38 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %37, i32 0, i32 1
  %39 = load i32, i32* @xgene_dma_tasklet_cb, align 4
  %40 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %41 = ptrtoint %struct.xgene_dma_chan* %40 to i64
  %42 = call i32 @tasklet_init(i32* %38, i32 %39, i64 %41)
  %43 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %44 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %46 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %48 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %47, i32 0, i32 0
  %49 = call i32 @dma_cookie_init(%struct.TYPE_3__* %48)
  %50 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %51 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %52 = call i32 @xgene_dma_set_caps(%struct.xgene_dma_chan* %50, %struct.dma_device* %51)
  %53 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %54 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %53, i32 0, i32 1
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %57 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %60 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %59, i32 0, i32 1
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %63 = call i32 @dma_async_device_register(%struct.dma_device* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %2
  %67 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @chan_err(%struct.xgene_dma_chan* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %71 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %70, i32 0, i32 1
  %72 = call i32 @tasklet_kill(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %3, align 4
  br label %98

74:                                               ; preds = %2
  %75 = load %struct.xgene_dma*, %struct.xgene_dma** %4, align 8
  %76 = getelementptr inbounds %struct.xgene_dma, %struct.xgene_dma* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.xgene_dma_chan*, %struct.xgene_dma_chan** %6, align 8
  %79 = getelementptr inbounds %struct.xgene_dma_chan, %struct.xgene_dma_chan* %78, i32 0, i32 0
  %80 = call i32 @dma_chan_name(%struct.TYPE_3__* %79)
  %81 = load i32, i32* @DMA_XOR, align 4
  %82 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %83 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @dma_has_cap(i32 %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %89 = load i32, i32* @DMA_PQ, align 4
  %90 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %91 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @dma_has_cap(i32 %89, i32 %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %97 = call i32 @dev_info(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %80, i8* %88, i8* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %74, %66
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dma_cookie_init(%struct.TYPE_3__*) #1

declare dso_local i32 @xgene_dma_set_caps(%struct.xgene_dma_chan*, %struct.dma_device*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @chan_err(%struct.xgene_dma_chan*, i8*, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @dma_chan_name(%struct.TYPE_3__*) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
