; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_alloc_scratch_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_alloc_scratch_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, %struct.TYPE_13__*, %struct.intel_vgpu_gtt }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i8*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (%struct.intel_gvt_gtt_entry.0*, i64)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_vgpu_gtt = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.intel_gvt_gtt_entry.1 = type { i32, i32 }

@I915_GTT_PAGE_SIZE = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PTE_PT = common dso_local global i32 0, align 4
@GTT_TYPE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fail to allocate scratch page\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"fail to dmamap scratch_pt\0A\00", align 1
@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"vgpu%d create scratch_pt: type %d mfn=0x%lx\0A\00", align 1
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_RW = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PDE_PT = common dso_local global i32 0, align 4
@PPAT_CACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, i32)* @alloc_scratch_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_scratch_pages(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu_gtt*, align 8
  %7 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.intel_gvt_gtt_entry.1, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 2
  store %struct.intel_vgpu_gtt* %15, %struct.intel_vgpu_gtt** %6, align 8
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %20, align 8
  store %struct.intel_gvt_gtt_pte_ops* %21, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %22 = load i32, i32* @I915_GTT_PAGE_SIZE, align 4
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %22, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %31 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %30, i32 0, i32 1
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store %struct.device* %38, %struct.device** %11, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GTT_TYPE_PPGTT_PTE_PT, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GTT_TYPE_MAX, align 4
  %45 = icmp uge i32 %43, %44
  br label %46

46:                                               ; preds = %42, %2
  %47 = phi i1 [ true, %2 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @WARN_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %171

54:                                               ; preds = %46
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i64 @get_zeroed_page(i32 %55)
  %57 = inttoptr i64 %56 to i8*
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %171

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @virt_to_page(i8* %66)
  %68 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %69 = call i32 @dma_map_page(%struct.device* %65, i32 %67, i32 0, i32 4096, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.device*, %struct.device** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @dma_mapping_error(%struct.device* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @virt_to_page(i8* %76)
  %78 = call i32 @__free_page(i32 %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %171

81:                                               ; preds = %64
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %6, align 8
  %87 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  store i64 %85, i64* %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @virt_to_page(i8* %93)
  %95 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %6, align 8
  %96 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %95, i32 0, i32 0
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  store i32 %94, i32* %101, align 8
  %102 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %103 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %6, align 8
  %107 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %106, i32 0, i32 0
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @gvt_dbg_mm(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %104, i32 %105, i64 %113)
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @GTT_TYPE_PPGTT_PTE_PT, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %81
  %119 = call i32 @memset(%struct.intel_gvt_gtt_entry.1* %13, i32 0, i32 8)
  %120 = load i32, i32* %5, align 4
  %121 = sub i32 %120, 1
  %122 = call i32 @get_entry_type(i32 %121)
  %123 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %13, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %125 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %124, i32 0, i32 1
  %126 = load i32 (%struct.intel_gvt_gtt_entry.0*, i64)*, i32 (%struct.intel_gvt_gtt_entry.0*, i64)** %125, align 8
  %127 = bitcast %struct.intel_gvt_gtt_entry.1* %13 to %struct.intel_gvt_gtt_entry.0*
  %128 = load %struct.intel_vgpu_gtt*, %struct.intel_vgpu_gtt** %6, align 8
  %129 = getelementptr inbounds %struct.intel_vgpu_gtt, %struct.intel_vgpu_gtt* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sub i32 %131, 1
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 %126(%struct.intel_gvt_gtt_entry.0* %127, i64 %136)
  %138 = load i32, i32* @_PAGE_PRESENT, align 4
  %139 = load i32, i32* @_PAGE_RW, align 4
  %140 = or i32 %138, %139
  %141 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %13, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @GTT_TYPE_PPGTT_PDE_PT, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %118
  %148 = load i32, i32* @PPAT_CACHED, align 4
  %149 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %13, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %118
  store i32 0, i32* %10, align 4
  br label %153

153:                                              ; preds = %166, %152
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %153
  %158 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %159 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %158, i32 0, i32 0
  %160 = load i32 (i8*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)*, i32 (i8*, %struct.intel_gvt_gtt_entry*, i32, i32, i32, %struct.intel_vgpu*)** %159, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = bitcast %struct.intel_gvt_gtt_entry.1* %13 to %struct.intel_gvt_gtt_entry*
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %165 = call i32 %160(i8* %161, %struct.intel_gvt_gtt_entry* %162, i32 %163, i32 0, i32 0, %struct.intel_vgpu* %164)
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %153

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %81
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %74, %60, %51
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @dma_map_page(%struct.device*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @gvt_dbg_mm(i8*, i32, i32, i64) #1

declare dso_local i32 @memset(%struct.intel_gvt_gtt_entry.1*, i32, i32) #1

declare dso_local i32 @get_entry_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
