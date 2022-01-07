; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_set_pool_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf.c_vmw_cmdbuf_set_pool_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_cmdbuf_man = type { i32, i32, i64, i32*, i32, i32, i32, i32, i32, %struct.vmw_private* }
%struct.vmw_private = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SVGA_CAP_DX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@vmw_mob_ne_placement = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VMW_CMDBUF_INLINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Using command buffers with %s pool.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MOB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_cmdbuf_set_pool_size(%struct.vmw_cmdbuf_man* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmw_cmdbuf_man*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmw_cmdbuf_man* %0, %struct.vmw_cmdbuf_man** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %12 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %11, i32 0, i32 9
  %13 = load %struct.vmw_private*, %struct.vmw_private** %12, align 8
  store %struct.vmw_private* %13, %struct.vmw_private** %8, align 8
  %14 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %15 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %123

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @PAGE_ALIGN(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %25 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %32 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %31, i32 0, i32 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @dma_alloc_coherent(i32* %29, i64 %30, i32* %32, i32 %33)
  %35 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %36 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %38 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %43 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %87

44:                                               ; preds = %21
  %45 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %46 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SVGA_CAP_DX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %123

54:                                               ; preds = %44
  %55 = load %struct.vmw_private*, %struct.vmw_private** %8, align 8
  %56 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %55, i32 0, i32 1
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @ttm_bo_type_device, align 4
  %59 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %60 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %59, i32 0, i32 3
  %61 = call i32 @ttm_bo_create(i32* %56, i64 %57, i32 %58, i32* @vmw_mob_ne_placement, i32 0, i32 0, i32** %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %123

66:                                               ; preds = %54
  %67 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %68 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %70 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  %75 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %76 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %75, i32 0, i32 6
  %77 = call i32 @ttm_bo_kmap(i32* %71, i32 0, i64 %74, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %109

81:                                               ; preds = %66
  %82 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %83 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %82, i32 0, i32 6
  %84 = call i32 @ttm_kmap_obj_virtual(i32* %83, i32* %9)
  %85 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %86 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %41
  %88 = load i64, i64* %6, align 8
  %89 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %90 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %92 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %91, i32 0, i32 5
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @PAGE_SHIFT, align 8
  %95 = lshr i64 %93, %94
  %96 = call i32 @drm_mm_init(i32* %92, i32 0, i64 %95)
  %97 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %98 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* @VMW_CMDBUF_INLINE_SIZE, align 4
  %100 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %101 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %103 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %108 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %107)
  store i32 0, i32* %4, align 4
  br label %123

109:                                              ; preds = %80
  %110 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %111 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %116 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @ttm_bo_put(i32* %117)
  %119 = load %struct.vmw_cmdbuf_man*, %struct.vmw_cmdbuf_man** %5, align 8
  %120 = getelementptr inbounds %struct.vmw_cmdbuf_man, %struct.vmw_cmdbuf_man* %119, i32 0, i32 3
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %87, %64, %51, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @ttm_bo_create(i32*, i64, i32, i32*, i32, i32, i32**) #1

declare dso_local i32 @ttm_bo_kmap(i32*, i32, i64, i32*) #1

declare dso_local i32 @ttm_kmap_obj_virtual(i32*, i32*) #1

declare dso_local i32 @drm_mm_init(i32*, i32, i64) #1

declare dso_local i32 @DRM_INFO(i8*, i8*) #1

declare dso_local i32 @ttm_bo_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
