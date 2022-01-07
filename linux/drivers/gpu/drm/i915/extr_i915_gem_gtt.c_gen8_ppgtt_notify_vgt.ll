; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_notify_vgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen8_ppgtt_notify_vgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.i915_ppgtt = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@pdp = common dso_local global %struct.TYPE_5__* null, align 8
@VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE = common dso_local global i32 0, align 4
@VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY = common dso_local global i32 0, align 4
@GEN8_3LVL_PDPES = common dso_local global i32 0, align 4
@VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE = common dso_local global i32 0, align 4
@VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY = common dso_local global i32 0, align 4
@g2v_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_ppgtt*, i32)* @gen8_ppgtt_notify_vgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen8_ppgtt_notify_vgt(%struct.i915_ppgtt* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_ppgtt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i915_ppgtt* %0, %struct.i915_ppgtt** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %11 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %18 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @px_used(i32 %19)
  %21 = call i32 @atomic_inc(i32 %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %24 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @px_used(i32 %25)
  %27 = call i32 @atomic_dec(i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %34 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %33, i32 0, i32 1
  %35 = call i64 @i915_vm_is_4lvl(%struct.TYPE_6__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %28
  %38 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %39 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @px_dma(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdp, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vgtif_reg(i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = call i32 @I915_WRITE(i32 %46, i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdp, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vgtif_reg(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @upper_32_bits(i32 %55)
  %57 = call i32 @I915_WRITE(i32 %54, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %37
  %61 = load i32, i32* @VGT_G2V_PPGTT_L4_PAGE_TABLE_CREATE, align 4
  br label %64

62:                                               ; preds = %37
  %63 = load i32, i32* @VGT_G2V_PPGTT_L4_PAGE_TABLE_DESTROY, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, i32* %6, align 4
  br label %107

66:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %95, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @GEN8_3LVL_PDPES, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %98

71:                                               ; preds = %67
  %72 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdp, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @vgtif_reg(i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = call i32 @I915_WRITE(i32 %81, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @pdp, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @vgtif_reg(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @upper_32_bits(i32 %92)
  %94 = call i32 @I915_WRITE(i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %71
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %67

98:                                               ; preds = %67
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* @VGT_G2V_PPGTT_L3_PAGE_TABLE_CREATE, align 4
  br label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @VGT_G2V_PPGTT_L3_PAGE_TABLE_DESTROY, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %64
  %108 = load i32, i32* @g2v_notify, align 4
  %109 = call i32 @vgtif_reg(i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @I915_WRITE(i32 %109, i32 %110)
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  ret void
}

declare dso_local i32 @atomic_inc(i32) #1

declare dso_local i32 @px_used(i32) #1

declare dso_local i32 @atomic_dec(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @i915_vm_is_4lvl(%struct.TYPE_6__*) #1

declare dso_local i32 @px_dma(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @vgtif_reg(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @i915_page_dir_dma_addr(%struct.i915_ppgtt*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
