; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_emit_mocs_l3cc_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_emit_mocs_l3cc_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { i32 }
%struct.drm_i915_mocs_table = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@I915_MOCS_PTE = common dso_local global i64 0, align 8
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.drm_i915_mocs_table*)* @emit_mocs_l3cc_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_mocs_l3cc_table(%struct.i915_request* %0, %struct.drm_i915_mocs_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.drm_i915_mocs_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store %struct.drm_i915_mocs_table* %1, %struct.drm_i915_mocs_table** %5, align 8
  %12 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %13 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %16 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @GEM_WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %144

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @I915_MOCS_PTE, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %34 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %35 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 2, %36
  %38 = call i32* @intel_ring_begin(%struct.i915_request* %33, i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @PTR_ERR(i32* %43)
  store i32 %44, i32* %3, align 4
  br label %144

45:                                               ; preds = %25
  %46 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %47 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  %50 = call i32 @MI_LOAD_REGISTER_IMM(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %83, %45
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %56 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 2
  %59 = icmp ult i32 %54, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = mul i32 2, %62
  %64 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %61, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul i32 2, %66
  %68 = add i32 %67, 1
  %69 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %65, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @GEN9_LNCFCMOCS(i32 %70)
  %72 = call i8* @i915_mmio_reg_offset(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %76 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @l3cc_combine(%struct.drm_i915_mocs_table* %76, i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  store i32 %80, i32* %81, align 4
  br label %83

83:                                               ; preds = %60
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %53

86:                                               ; preds = %53
  %87 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %88 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %86
  %93 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = mul i32 2, %94
  %96 = call i32 @get_entry_l3cc(%struct.drm_i915_mocs_table* %93, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @GEN9_LNCFCMOCS(i32 %97)
  %99 = call i8* @i915_mmio_reg_offset(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %103 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i8* @l3cc_combine(%struct.drm_i915_mocs_table* %103, i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load i32*, i32** %8, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %8, align 8
  store i32 %107, i32* %108, align 4
  %110 = load i32, i32* %7, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %92, %86
  br label %113

113:                                              ; preds = %134, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %116 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = icmp ult i32 %114, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @GEN9_LNCFCMOCS(i32 %121)
  %123 = call i8* @i915_mmio_reg_offset(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %127 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i8* @l3cc_combine(%struct.drm_i915_mocs_table* %127, i32 %128, i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %8, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %8, align 8
  store i32 %131, i32* %132, align 4
  br label %134

134:                                              ; preds = %120
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %113

137:                                              ; preds = %113
  %138 = load i32, i32* @MI_NOOP, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %8, align 8
  store i32 %138, i32* %139, align 4
  %141 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @intel_ring_advance(%struct.i915_request* %141, i32* %142)
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %137, %42, %22
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @GEM_WARN_ON(i32) #1

declare dso_local i32* @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i32 @get_entry_l3cc(%struct.drm_i915_mocs_table*, i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @GEN9_LNCFCMOCS(i32) #1

declare dso_local i8* @l3cc_combine(%struct.drm_i915_mocs_table*, i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
