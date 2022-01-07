; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gem.c_exynos_drm_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_gem = type { i64, i32, i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.sg_table = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"already allocated.\0A\00", align 1
@EXYNOS_BO_NONCONTIG = common dso_local global i32 0, align 4
@DMA_ATTR_FORCE_CONTIGUOUS = common dso_local global i64 0, align 8
@EXYNOS_BO_WC = common dso_local global i32 0, align 4
@EXYNOS_BO_CACHABLE = common dso_local global i32 0, align 4
@DMA_ATTR_WRITE_COMBINE = common dso_local global i64 0, align 8
@DMA_ATTR_NON_CONSISTENT = common dso_local global i64 0, align 8
@DMA_ATTR_NO_KERNEL_MAPPING = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate pages.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to allocate buffer.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to get sgtable.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"invalid sgtable.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"dma_addr(0x%lx), size(0x%lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_gem*)* @exynos_drm_alloc_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_alloc_buf(%struct.exynos_drm_gem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_drm_gem*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sg_table, align 4
  %8 = alloca i32, align 4
  store %struct.exynos_drm_gem* %0, %struct.exynos_drm_gem** %3, align 8
  %9 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %4, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = call i32 @to_dma_dev(%struct.drm_device* %20)
  %22 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_KMS(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %182

23:                                               ; preds = %1
  %24 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EXYNOS_BO_NONCONTIG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load i64, i64* @DMA_ATTR_FORCE_CONTIGUOUS, align 8
  %34 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %35 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %32, %23
  %39 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %40 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EXYNOS_BO_WC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %47 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EXYNOS_BO_CACHABLE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %38
  %53 = load i64, i64* @DMA_ATTR_WRITE_COMBINE, align 8
  store i64 %53, i64* %5, align 8
  br label %56

54:                                               ; preds = %45
  %55 = load i64, i64* @DMA_ATTR_NON_CONSISTENT, align 8
  store i64 %55, i64* %5, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %59 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* @DMA_ATTR_NO_KERNEL_MAPPING, align 8
  %63 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %64 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %62
  store i64 %66, i64* %64, align 8
  %67 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %68 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PAGE_SHIFT, align 4
  %71 = lshr i32 %69, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = load i32, i32* @__GFP_ZERO, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @kvmalloc_array(i32 %72, i32 8, i32 %75)
  %77 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %78 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %80 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %56
  %84 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %85 = call i32 @to_dma_dev(%struct.drm_device* %84)
  %86 = call i32 @DRM_DEV_ERROR(i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %182

89:                                               ; preds = %56
  %90 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %91 = call i32 @to_dma_dev(%struct.drm_device* %90)
  %92 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %93 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %96 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %95, i32 0, i32 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %99 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @dma_alloc_attrs(i32 %91, i32 %94, i64* %96, i32 %97, i64 %100)
  %102 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %103 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 8
  %104 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %105 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %89
  %109 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %110 = call i32 @to_dma_dev(%struct.drm_device* %109)
  %111 = call i32 @DRM_DEV_ERROR(i32 %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %176

112:                                              ; preds = %89
  %113 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %114 = call i32 @to_dma_dev(%struct.drm_device* %113)
  %115 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %116 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %119 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %122 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @dma_get_sgtable_attrs(i32 %114, %struct.sg_table* %7, i32 %117, i64 %120, i32 %123, i64 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %112
  %131 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %132 = call i32 @to_dma_dev(%struct.drm_device* %131)
  %133 = call i32 @DRM_DEV_ERROR(i32 %132, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %160

134:                                              ; preds = %112
  %135 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %136 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %7, i32 %137, i32* null, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %143 = call i32 @to_dma_dev(%struct.drm_device* %142)
  %144 = call i32 @DRM_DEV_ERROR(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %8, align 4
  br label %158

147:                                              ; preds = %134
  %148 = call i32 @sg_free_table(%struct.sg_table* %7)
  %149 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %150 = call i32 @to_dma_dev(%struct.drm_device* %149)
  %151 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %152 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %155 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @DRM_DEV_DEBUG_KMS(i32 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i64 %153, i32 %156)
  store i32 0, i32* %2, align 4
  br label %182

158:                                              ; preds = %141
  %159 = call i32 @sg_free_table(%struct.sg_table* %7)
  br label %160

160:                                              ; preds = %158, %130
  %161 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %162 = call i32 @to_dma_dev(%struct.drm_device* %161)
  %163 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %164 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %167 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %170 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %173 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @dma_free_attrs(i32 %162, i32 %165, i32 %168, i64 %171, i64 %174)
  br label %176

176:                                              ; preds = %160, %108
  %177 = load %struct.exynos_drm_gem*, %struct.exynos_drm_gem** %3, align 8
  %178 = getelementptr inbounds %struct.exynos_drm_gem, %struct.exynos_drm_gem* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @kvfree(i32 %179)
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %176, %147, %83, %19
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, ...) #1

declare dso_local i32 @to_dma_dev(%struct.drm_device*) #1

declare dso_local i32 @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

declare dso_local i32 @dma_alloc_attrs(i32, i32, i64*, i32, i64) #1

declare dso_local i32 @dma_get_sgtable_attrs(i32, %struct.sg_table*, i32, i64, i32, i64) #1

declare dso_local i64 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, i32, i32*, i32) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i64, i64) #1

declare dso_local i32 @kvfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
