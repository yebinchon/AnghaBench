; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_init_workaround_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_lrc.c_intel_init_workaround_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i32, %struct.i915_ctx_workarounds }
%struct.i915_ctx_workarounds = type { %struct.TYPE_2__*, %struct.i915_wa_ctx_bb, %struct.i915_wa_ctx_bb }
%struct.TYPE_2__ = type { i32 }
%struct.i915_wa_ctx_bb = type { i32, i32 }
%struct.intel_engine_cs.0 = type opaque
%struct.page = type { i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Failed to setup context WA page: %d\0A\00", align 1
@CACHELINE_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CTX_WA_BB_OBJ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @intel_init_workaround_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_init_workaround_bb(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca %struct.i915_ctx_workarounds*, align 8
  %5 = alloca [2 x %struct.i915_wa_ctx_bb*], align 16
  %6 = alloca [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], align 16
  %7 = alloca %struct.page*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 2
  store %struct.i915_ctx_workarounds* %13, %struct.i915_ctx_workarounds** %4, align 8
  %14 = getelementptr inbounds [2 x %struct.i915_wa_ctx_bb*], [2 x %struct.i915_wa_ctx_bb*]* %5, i64 0, i64 0
  %15 = load %struct.i915_ctx_workarounds*, %struct.i915_ctx_workarounds** %4, align 8
  %16 = getelementptr inbounds %struct.i915_ctx_workarounds, %struct.i915_ctx_workarounds* %15, i32 0, i32 2
  store %struct.i915_wa_ctx_bb* %16, %struct.i915_wa_ctx_bb** %14, align 8
  %17 = getelementptr inbounds %struct.i915_wa_ctx_bb*, %struct.i915_wa_ctx_bb** %14, i64 1
  %18 = load %struct.i915_ctx_workarounds*, %struct.i915_ctx_workarounds** %4, align 8
  %19 = getelementptr inbounds %struct.i915_ctx_workarounds, %struct.i915_ctx_workarounds* %18, i32 0, i32 1
  store %struct.i915_wa_ctx_bb* %19, %struct.i915_wa_ctx_bb** %17, align 8
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RENDER_CLASS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

26:                                               ; preds = %1
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @INTEL_GEN(i32 %29)
  switch i32 %30, label %41 [
    i32 12, label %31
    i32 11, label %31
    i32 10, label %32
    i32 9, label %35
    i32 8, label %38
  ]

31:                                               ; preds = %26, %26
  store i32 0, i32* %2, align 4
  br label %157

32:                                               ; preds = %26
  %33 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 0
  store i8* (%struct.intel_engine_cs.0*, i8*)* bitcast (i8* (%struct.intel_engine_cs*, i8*)* @gen10_init_indirectctx_bb to i8* (%struct.intel_engine_cs.0*, i8*)*), i8* (%struct.intel_engine_cs.0*, i8*)** %33, align 16
  %34 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 1
  store i8* (%struct.intel_engine_cs.0*, i8*)* null, i8* (%struct.intel_engine_cs.0*, i8*)** %34, align 8
  br label %47

35:                                               ; preds = %26
  %36 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 0
  store i8* (%struct.intel_engine_cs.0*, i8*)* bitcast (i8* (%struct.intel_engine_cs*, i8*)* @gen9_init_indirectctx_bb to i8* (%struct.intel_engine_cs.0*, i8*)*), i8* (%struct.intel_engine_cs.0*, i8*)** %36, align 16
  %37 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 1
  store i8* (%struct.intel_engine_cs.0*, i8*)* null, i8* (%struct.intel_engine_cs.0*, i8*)** %37, align 8
  br label %47

38:                                               ; preds = %26
  %39 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 0
  store i8* (%struct.intel_engine_cs.0*, i8*)* bitcast (i8* (%struct.intel_engine_cs*, i8*)* @gen8_init_indirectctx_bb to i8* (%struct.intel_engine_cs.0*, i8*)*), i8* (%struct.intel_engine_cs.0*, i8*)** %39, align 16
  %40 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 1
  store i8* (%struct.intel_engine_cs.0*, i8*)* null, i8* (%struct.intel_engine_cs.0*, i8*)** %40, align 8
  br label %47

41:                                               ; preds = %26
  %42 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %43 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @INTEL_GEN(i32 %44)
  %46 = call i32 @MISSING_CASE(i32 %45)
  store i32 0, i32* %2, align 4
  br label %157

47:                                               ; preds = %38, %35, %32
  %48 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %49 = call i32 @lrc_setup_wa_ctx(%struct.intel_engine_cs* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %2, align 4
  br label %157

56:                                               ; preds = %47
  %57 = load %struct.i915_ctx_workarounds*, %struct.i915_ctx_workarounds** %4, align 8
  %58 = getelementptr inbounds %struct.i915_ctx_workarounds, %struct.i915_ctx_workarounds* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.page* @i915_gem_object_get_dirty_page(i32 %61, i32 0)
  store %struct.page* %62, %struct.page** %7, align 8
  %63 = load %struct.page*, %struct.page** %7, align 8
  %64 = call i8* @kmap_atomic(%struct.page* %63)
  store i8* %64, i8** %9, align 8
  store i8* %64, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %134, %56
  %66 = load i32, i32* %10, align 4
  %67 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 0
  %68 = bitcast i8* (%struct.intel_engine_cs.0*, i8*)** %67 to i8* (%struct.intel_engine_cs*, i8*)*
  %69 = call i32 @ARRAY_SIZE(i8* (%struct.intel_engine_cs*, i8*)* %68)
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %137

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [2 x %struct.i915_wa_ctx_bb*], [2 x %struct.i915_wa_ctx_bb*]* %5, i64 0, i64 %79
  %81 = load %struct.i915_wa_ctx_bb*, %struct.i915_wa_ctx_bb** %80, align 8
  %82 = getelementptr inbounds %struct.i915_wa_ctx_bb, %struct.i915_wa_ctx_bb* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 4
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [2 x %struct.i915_wa_ctx_bb*], [2 x %struct.i915_wa_ctx_bb*]* %5, i64 0, i64 %84
  %86 = load %struct.i915_wa_ctx_bb*, %struct.i915_wa_ctx_bb** %85, align 8
  %87 = getelementptr inbounds %struct.i915_wa_ctx_bb, %struct.i915_wa_ctx_bb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CACHELINE_BYTES, align 4
  %90 = call i32 @IS_ALIGNED(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i64 @GEM_DEBUG_WARN_ON(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %71
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %11, align 4
  br label %137

99:                                               ; preds = %71
  %100 = load i32, i32* %10, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 %101
  %103 = load i8* (%struct.intel_engine_cs.0*, i8*)*, i8* (%struct.intel_engine_cs.0*, i8*)** %102, align 8
  %104 = icmp ne i8* (%struct.intel_engine_cs.0*, i8*)* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i8* (%struct.intel_engine_cs.0*, i8*)*], [2 x i8* (%struct.intel_engine_cs.0*, i8*)*]* %6, i64 0, i64 %107
  %109 = load i8* (%struct.intel_engine_cs.0*, i8*)*, i8* (%struct.intel_engine_cs.0*, i8*)** %108, align 8
  %110 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %111 = bitcast %struct.intel_engine_cs* %110 to %struct.intel_engine_cs.0*
  %112 = load i8*, i8** %9, align 8
  %113 = call i8* %109(%struct.intel_engine_cs.0* %111, i8* %112)
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %105, %99
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [2 x %struct.i915_wa_ctx_bb*], [2 x %struct.i915_wa_ctx_bb*]* %5, i64 0, i64 %118
  %120 = load %struct.i915_wa_ctx_bb*, %struct.i915_wa_ctx_bb** %119, align 8
  %121 = getelementptr inbounds %struct.i915_wa_ctx_bb, %struct.i915_wa_ctx_bb* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr i8, i8* %116, i64 %123
  %125 = ptrtoint i8* %115 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [2 x %struct.i915_wa_ctx_bb*], [2 x %struct.i915_wa_ctx_bb*]* %5, i64 0, i64 %130
  %132 = load %struct.i915_wa_ctx_bb*, %struct.i915_wa_ctx_bb** %131, align 8
  %133 = getelementptr inbounds %struct.i915_wa_ctx_bb, %struct.i915_wa_ctx_bb* %132, i32 0, i32 1
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %114
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %65

137:                                              ; preds = %96, %65
  %138 = load i8*, i8** %9, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  %143 = load i32, i32* @CTX_WA_BB_OBJ_SIZE, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp sgt i64 %142, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 @kunmap_atomic(i8* %148)
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %137
  %153 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %154 = call i32 @lrc_destroy_wa_ctx(%struct.intel_engine_cs* %153)
  br label %155

155:                                              ; preds = %152, %137
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %52, %41, %31, %25
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i8* @gen10_init_indirectctx_bb(%struct.intel_engine_cs*, i8*) #1

declare dso_local i8* @gen9_init_indirectctx_bb(%struct.intel_engine_cs*, i8*) #1

declare dso_local i8* @gen8_init_indirectctx_bb(%struct.intel_engine_cs*, i8*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @lrc_setup_wa_ctx(%struct.intel_engine_cs*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #1

declare dso_local %struct.page* @i915_gem_object_get_dirty_page(i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @ARRAY_SIZE(i8* (%struct.intel_engine_cs*, i8*)*) #1

declare dso_local i64 @GEM_DEBUG_WARN_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @lrc_destroy_wa_ctx(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
