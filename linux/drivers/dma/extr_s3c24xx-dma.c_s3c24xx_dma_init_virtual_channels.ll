; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_init_virtual_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_init_virtual_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_dma_engine = type { i32 }
%struct.dma_device = type { i32, i32 }
%struct.s3c24xx_dma_chan = type { i32, i32, %struct.TYPE_2__, i8*, i32, %struct.s3c24xx_dma_engine* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S3C24XX_DMA_CHAN_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"slave%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"memcpy%d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"initialize virtual channel \22%s\22\0A\00", align 1
@s3c24xx_dma_desc_free = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"initialized %d virtual %s channels\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_dma_engine*, %struct.dma_device*, i32, i32)* @s3c24xx_dma_init_virtual_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_init_virtual_channels(%struct.s3c24xx_dma_engine* %0, %struct.dma_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c24xx_dma_engine*, align 8
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s3c24xx_dma_chan*, align 8
  %11 = alloca i32, align 4
  store %struct.s3c24xx_dma_engine* %0, %struct.s3c24xx_dma_engine** %6, align 8
  store %struct.dma_device* %1, %struct.dma_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %13 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %12, i32 0, i32 1
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %88, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %91

19:                                               ; preds = %15
  %20 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %21 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.s3c24xx_dma_chan* @devm_kzalloc(i32 %22, i32 40, i32 %23)
  store %struct.s3c24xx_dma_chan* %24, %struct.s3c24xx_dma_chan** %10, align 8
  %25 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %26 = icmp ne %struct.s3c24xx_dma_chan* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %102

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %6, align 8
  %35 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %35, i32 0, i32 5
  store %struct.s3c24xx_dma_engine* %34, %struct.s3c24xx_dma_engine** %36, align 8
  %37 = load i32, i32* @S3C24XX_DMA_CHAN_IDLE, align 4
  %38 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %30
  %43 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %44 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i8* @kasprintf(i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %102

57:                                               ; preds = %42
  br label %72

58:                                               ; preds = %30
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @kasprintf(i32 %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %63 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %102

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %74 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %77 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @s3c24xx_dma_desc_free, align 4
  %81 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %82 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.s3c24xx_dma_chan*, %struct.s3c24xx_dma_chan** %10, align 8
  %85 = getelementptr inbounds %struct.s3c24xx_dma_chan, %struct.s3c24xx_dma_chan* %84, i32 0, i32 2
  %86 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %87 = call i32 @vchan_init(%struct.TYPE_2__* %85, %struct.dma_device* %86)
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %15

91:                                               ; preds = %15
  %92 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %93 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %100 = call i32 @dev_info(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %95, i8* %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %91, %68, %54, %27
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.s3c24xx_dma_chan* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @vchan_init(%struct.TYPE_2__*, %struct.dma_device*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
