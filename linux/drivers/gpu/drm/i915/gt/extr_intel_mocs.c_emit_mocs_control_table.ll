; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_emit_mocs_control_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_emit_mocs_control_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_mocs_table = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@I915_MOCS_PTE = common dso_local global i64 0, align 8
@MI_NOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.drm_i915_mocs_table*)* @emit_mocs_control_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_mocs_control_table(%struct.i915_request* %0, %struct.drm_i915_mocs_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i915_request*, align 8
  %5 = alloca %struct.drm_i915_mocs_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %4, align 8
  store %struct.drm_i915_mocs_table* %1, %struct.drm_i915_mocs_table** %5, align 8
  %11 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %12 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %20 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @GEM_WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %110

29:                                               ; preds = %2
  %30 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %31 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* @I915_MOCS_PTE, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %8, align 8
  %37 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %38 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %39 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 2, %41
  %43 = call i8** @intel_ring_begin(%struct.i915_request* %37, i32 %42)
  store i8** %43, i8*** %9, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = call i64 @IS_ERR(i8** %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i8**, i8*** %9, align 8
  %49 = call i32 @PTR_ERR(i8** %48)
  store i32 %49, i32* %3, align 4
  br label %110

50:                                               ; preds = %29
  %51 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %52 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MI_LOAD_REGISTER_IMM(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load i8**, i8*** %9, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %9, align 8
  store i8* %56, i8** %57, align 8
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %78, %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %62 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @get_entry_control(%struct.drm_i915_mocs_table* %66, i32 %67)
  store i8* %68, i8** %10, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @mocs_register(i32 %69, i32 %70)
  %72 = call i8* @i915_mmio_reg_offset(i32 %71)
  %73 = load i8**, i8*** %9, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8**, i8*** %9, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %98, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.drm_i915_mocs_table*, %struct.drm_i915_mocs_table** %5, align 8
  %85 = getelementptr inbounds %struct.drm_i915_mocs_table, %struct.drm_i915_mocs_table* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @mocs_register(i32 %89, i32 %90)
  %92 = call i8* @i915_mmio_reg_offset(i32 %91)
  %93 = load i8**, i8*** %9, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %9, align 8
  store i8* %92, i8** %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load i32, i32* @MI_NOOP, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8**, i8*** %9, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %9, align 8
  store i8* %104, i8** %105, align 8
  %107 = load %struct.i915_request*, %struct.i915_request** %4, align 8
  %108 = load i8**, i8*** %9, align 8
  %109 = call i32 @intel_ring_advance(%struct.i915_request* %107, i8** %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %101, %47, %26
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @GEM_WARN_ON(i32) #1

declare dso_local i8** @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @MI_LOAD_REGISTER_IMM(i32) #1

declare dso_local i8* @get_entry_control(%struct.drm_i915_mocs_table*, i32) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i32 @mocs_register(i32, i32) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
