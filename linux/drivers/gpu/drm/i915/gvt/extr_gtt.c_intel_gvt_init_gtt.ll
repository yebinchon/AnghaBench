; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_init_gtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_gvt_init_gtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gvt = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"init gtt\0A\00", align 1
@gen8_gtt_pte_ops = common dso_local global i32 0, align 4
@gen8_gtt_gma_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"fail to allocate scratch ggtt page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"fail to dmamap scratch ggtt page\0A\00", align 1
@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@enable_out_of_sync = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"fail to initialize SPT oos\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_init_gtt(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %8 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %9 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %17 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  store i32* @gen8_gtt_pte_ops, i32** %18, align 8
  %19 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %20 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 4
  store i32* @gen8_gtt_gma_ops, i32** %21, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @get_zeroed_page(i32 %22)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %1
  %28 = call i32 @gvt_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %90

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @virt_to_page(i8* %33)
  %35 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %36 = call i32 @dma_map_page(%struct.device* %32, i32 %34, i32 0, i32 4096, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @dma_mapping_error(%struct.device* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = call i32 @gvt_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @virt_to_page(i8* %43)
  %45 = call i32 @__free_page(i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %90

48:                                               ; preds = %31
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @virt_to_page(i8* %49)
  %51 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %52 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %59 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* @enable_out_of_sync, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %48
  %64 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %65 = call i32 @setup_spt_oos(%struct.intel_gvt* %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = call i32 @gvt_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.device*, %struct.device** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %73 = call i32 @dma_unmap_page(%struct.device* %70, i32 %71, i32 4096, i32 %72)
  %74 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %75 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @__free_page(i32 %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %90

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %83 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %87 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = call i32 @mutex_init(i32* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %81, %68, %41, %27
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @gvt_dbg_core(i8*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @gvt_err(i8*) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @setup_spt_oos(%struct.intel_gvt*) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
