; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_buff_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-tdes.c_atmel_tdes_buff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_tdes_dev = type { i32, i8*, i8*, i8*, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to alloc pages.\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"dma %zd bytes error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_tdes_dev*)* @atmel_tdes_buff_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_tdes_buff_init(%struct.atmel_tdes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_tdes_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_tdes_dev* %0, %struct.atmel_tdes_dev** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @__get_free_pages(i32 %7, i32 0)
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @__get_free_pages(i32 %12, i32 0)
  %14 = inttoptr i64 %13 to i8*
  %15 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %16 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @DES_BLOCK_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = xor i32 %21, -1
  %23 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %28 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %33 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %38 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %119

41:                                               ; preds = %31
  %42 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %49 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i8* @dma_map_single(i32 %44, i8* %47, i32 %50, i32 %51)
  %53 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %54 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %56 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @dma_mapping_error(i32 %57, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %41
  %64 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %68 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %118

73:                                               ; preds = %41
  %74 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %75 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %78 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %81 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %84 = call i8* @dma_map_single(i32 %76, i8* %79, i32 %82, i32 %83)
  %85 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %86 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %88 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %91 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %90, i32 0, i32 5
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @dma_mapping_error(i32 %89, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %73
  %96 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %97 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %100 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %73
  store i32 0, i32* %2, align 4
  br label %137

106:                                              ; preds = %95
  %107 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %108 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %111 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %114 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DMA_TO_DEVICE, align 4
  %117 = call i32 @dma_unmap_single(i32 %109, i8* %112, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %106, %63
  br label %119

119:                                              ; preds = %118, %36
  %120 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %121 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = call i32 @free_page(i64 %123)
  %125 = load %struct.atmel_tdes_dev*, %struct.atmel_tdes_dev** %3, align 8
  %126 = getelementptr inbounds %struct.atmel_tdes_dev, %struct.atmel_tdes_dev* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = ptrtoint i8* %127 to i64
  %129 = call i32 @free_page(i64 %128)
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %119
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %105
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
