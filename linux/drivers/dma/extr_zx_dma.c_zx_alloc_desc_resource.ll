; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_alloc_desc_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_alloc_desc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_dma_desc_sw = type { i32, i32, i32 }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zx_dma_chan = type { i32 }
%struct.zx_dma_dev = type { i32 }

@LLI_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vch %p: sg num %d exceed max %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"vch %p: dma alloc fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zx_dma_desc_sw* (i32, %struct.dma_chan*)* @zx_alloc_desc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zx_dma_desc_sw* @zx_alloc_desc_resource(i32 %0, %struct.dma_chan* %1) #0 {
  %3 = alloca %struct.zx_dma_desc_sw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.zx_dma_chan*, align 8
  %7 = alloca %struct.zx_dma_desc_sw*, align 8
  %8 = alloca %struct.zx_dma_dev*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.dma_chan* %1, %struct.dma_chan** %5, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = call %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan* %10)
  store %struct.zx_dma_chan* %11, %struct.zx_dma_chan** %6, align 8
  %12 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %13 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = call %struct.zx_dma_dev* @to_zx_dma(%struct.TYPE_2__* %14)
  store %struct.zx_dma_dev* %15, %struct.zx_dma_dev** %8, align 8
  %16 = load i32, i32* @LLI_BLOCK_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %25 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %6, align 8
  %30 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %29, i32 0, i32 0
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, i32*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %31, i32 %32)
  store %struct.zx_dma_desc_sw* null, %struct.zx_dma_desc_sw** %3, align 8
  br label %70

34:                                               ; preds = %2
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.zx_dma_desc_sw* @kzalloc(i32 12, i32 %35)
  store %struct.zx_dma_desc_sw* %36, %struct.zx_dma_desc_sw** %7, align 8
  %37 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %38 = icmp ne %struct.zx_dma_desc_sw* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store %struct.zx_dma_desc_sw* null, %struct.zx_dma_desc_sw** %3, align 8
  br label %70

40:                                               ; preds = %34
  %41 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %8, align 8
  %42 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @GFP_NOWAIT, align 4
  %45 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %46 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %45, i32 0, i32 2
  %47 = call i32 @dma_pool_zalloc(i32 %43, i32 %44, i32* %46)
  %48 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %49 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %51 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %40
  %55 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %56 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.zx_dma_chan*, %struct.zx_dma_chan** %6, align 8
  %61 = getelementptr inbounds %struct.zx_dma_chan, %struct.zx_dma_chan* %60, i32 0, i32 0
  %62 = call i32 (i32, i8*, i32*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %61)
  %63 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %64 = call i32 @kfree(%struct.zx_dma_desc_sw* %63)
  store %struct.zx_dma_desc_sw* null, %struct.zx_dma_desc_sw** %3, align 8
  br label %70

65:                                               ; preds = %40
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  %68 = getelementptr inbounds %struct.zx_dma_desc_sw, %struct.zx_dma_desc_sw* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %7, align 8
  store %struct.zx_dma_desc_sw* %69, %struct.zx_dma_desc_sw** %3, align 8
  br label %70

70:                                               ; preds = %65, %54, %39, %23
  %71 = load %struct.zx_dma_desc_sw*, %struct.zx_dma_desc_sw** %3, align 8
  ret %struct.zx_dma_desc_sw* %71
}

declare dso_local %struct.zx_dma_chan* @to_zx_chan(%struct.dma_chan*) #1

declare dso_local %struct.zx_dma_dev* @to_zx_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32*, ...) #1

declare dso_local %struct.zx_dma_desc_sw* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.zx_dma_desc_sw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
