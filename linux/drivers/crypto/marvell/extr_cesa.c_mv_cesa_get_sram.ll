; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_get_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_get_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mv_cesa_dev = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.mv_cesa_engine* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mv_cesa_engine = type { i32, i64, i32* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"sram\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"marvell,crypto-srams\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"sram0\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"sram1\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @mv_cesa_get_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_get_sram(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_cesa_dev*, align 8
  %7 = alloca %struct.mv_cesa_engine*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = call %struct.mv_cesa_dev* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.mv_cesa_dev* %11, %struct.mv_cesa_dev** %6, align 8
  %12 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %12, i32 0, i32 3
  %14 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %14, i64 %16
  store %struct.mv_cesa_engine* %17, %struct.mv_cesa_engine** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %18 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %19 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32* @of_gen_pool_get(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %26 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %28 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %2
  %32 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %33 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %36 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %39 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %38, i32 0, i32 0
  %40 = call i64 @gen_pool_dma_alloc(i32* %34, i64 %37, i32* %39)
  %41 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %42 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %44 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %127

48:                                               ; preds = %31
  %49 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %50 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %127

53:                                               ; preds = %2
  %54 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %55 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %65

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %53
  %67 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %67, i32 %68, i8* %69)
  store %struct.resource* %70, %struct.resource** %9, align 8
  %71 = load %struct.resource*, %struct.resource** %9, align 8
  %72 = icmp ne %struct.resource* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.resource*, %struct.resource** %9, align 8
  %75 = call i64 @resource_size(%struct.resource* %74)
  %76 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %77 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %73, %66
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %127

83:                                               ; preds = %73
  %84 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load %struct.resource*, %struct.resource** %9, align 8
  %88 = call i64 @devm_ioremap_resource(%struct.TYPE_6__* %86, %struct.resource* %87)
  %89 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %90 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %92 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @IS_ERR(i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %98 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @PTR_ERR(i64 %99)
  store i32 %100, i32* %3, align 4
  br label %127

101:                                              ; preds = %83
  %102 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %103 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.resource*, %struct.resource** %9, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %109 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %112 = call i32 @dma_map_resource(%struct.TYPE_6__* %104, i32 %107, i64 %110, i32 %111, i32 0)
  %113 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %114 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %6, align 8
  %116 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load %struct.mv_cesa_engine*, %struct.mv_cesa_engine** %7, align 8
  %119 = getelementptr inbounds %struct.mv_cesa_engine, %struct.mv_cesa_engine* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @dma_mapping_error(%struct.TYPE_6__* %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %101
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %127

126:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %126, %123, %96, %80, %48, %47
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.mv_cesa_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32* @of_gen_pool_get(i32, i8*, i32) #1

declare dso_local i64 @gen_pool_dma_alloc(i32*, i64, i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @resource_size(%struct.resource*) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_6__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @dma_map_resource(%struct.TYPE_6__*, i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
