; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_srm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_workarounds.c_wa_list_srm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_request = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.i915_wa_list = type { i32, %struct.i915_wa* }
%struct.i915_wa = type { i32 }
%struct.i915_vma = type { i32 }

@MI_STORE_REGISTER_MEM = common dso_local global i32 0, align 4
@MI_SRM_LRM_GLOBAL_GTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_request*, %struct.i915_wa_list*, %struct.i915_vma*)* @wa_list_srm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wa_list_srm(%struct.i915_request* %0, %struct.i915_wa_list* %1, %struct.i915_vma* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca %struct.i915_wa_list*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i915_wa*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  store %struct.i915_request* %0, %struct.i915_request** %5, align 8
  store %struct.i915_wa_list* %1, %struct.i915_wa_list** %6, align 8
  store %struct.i915_vma* %2, %struct.i915_vma** %7, align 8
  %15 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %16 = getelementptr inbounds %struct.i915_request, %struct.i915_request* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @MI_STORE_REGISTER_MEM, align 4
  %19 = load i32, i32* @MI_SRM_LRM_GLOBAL_GTT, align 4
  %20 = or i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %12, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %24 = call i32 @INTEL_GEN(%struct.drm_i915_private* %23)
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %26, %3
  store i32 0, i32* %9, align 4
  %30 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %31 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %30, i32 0, i32 1
  %32 = load %struct.i915_wa*, %struct.i915_wa** %31, align 8
  store %struct.i915_wa* %32, %struct.i915_wa** %11, align 8
  br label %33

33:                                               ; preds = %51, %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %36 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %41 = load %struct.i915_wa*, %struct.i915_wa** %11, align 8
  %42 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @i915_mmio_reg_offset(i32 %43)
  %45 = call i64 @mcr_range(%struct.drm_i915_private* %40, i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = load %struct.i915_wa*, %struct.i915_wa** %11, align 8
  %55 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %54, i32 1
  store %struct.i915_wa* %55, %struct.i915_wa** %11, align 8
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = mul i32 4, %58
  %60 = call i8** @intel_ring_begin(%struct.i915_request* %57, i32 %59)
  store i8** %60, i8*** %13, align 8
  %61 = load i8**, i8*** %13, align 8
  %62 = call i64 @IS_ERR(i8** %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i8**, i8*** %13, align 8
  %66 = call i32 @PTR_ERR(i8** %65)
  store i32 %66, i32* %4, align 4
  br label %115

67:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  %68 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %69 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %68, i32 0, i32 1
  %70 = load %struct.i915_wa*, %struct.i915_wa** %69, align 8
  store %struct.i915_wa* %70, %struct.i915_wa** %11, align 8
  br label %71

71:                                               ; preds = %106, %67
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.i915_wa_list*, %struct.i915_wa_list** %6, align 8
  %74 = getelementptr inbounds %struct.i915_wa_list, %struct.i915_wa_list* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %71
  %78 = load %struct.i915_wa*, %struct.i915_wa** %11, align 8
  %79 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @i915_mmio_reg_offset(i32 %80)
  store i8* %81, i8** %14, align 8
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @mcr_range(%struct.drm_i915_private* %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %106

87:                                               ; preds = %77
  %88 = load i8*, i8** %12, align 8
  %89 = load i8**, i8*** %13, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %13, align 8
  store i8* %88, i8** %89, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i8**, i8*** %13, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %13, align 8
  store i8* %91, i8** %92, align 8
  %94 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %95 = call i32 @i915_ggtt_offset(%struct.i915_vma* %94)
  %96 = sext i32 %95 to i64
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = mul i64 8, %98
  %100 = add i64 %96, %99
  %101 = inttoptr i64 %100 to i8*
  %102 = load i8**, i8*** %13, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i32 1
  store i8** %103, i8*** %13, align 8
  store i8* %101, i8** %102, align 8
  %104 = load i8**, i8*** %13, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %13, align 8
  store i8* null, i8** %104, align 8
  br label %106

106:                                              ; preds = %87, %86
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = load %struct.i915_wa*, %struct.i915_wa** %11, align 8
  %110 = getelementptr inbounds %struct.i915_wa, %struct.i915_wa* %109, i32 1
  store %struct.i915_wa* %110, %struct.i915_wa** %11, align 8
  br label %71

111:                                              ; preds = %71
  %112 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %113 = load i8**, i8*** %13, align 8
  %114 = call i32 @intel_ring_advance(%struct.i915_request* %112, i8** %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %64
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @mcr_range(%struct.drm_i915_private*, i8*) #1

declare dso_local i8* @i915_mmio_reg_offset(i32) #1

declare dso_local i8** @intel_ring_begin(%struct.i915_request*, i32) #1

declare dso_local i64 @IS_ERR(i8**) #1

declare dso_local i32 @PTR_ERR(i8**) #1

declare dso_local i32 @i915_ggtt_offset(%struct.i915_vma*) #1

declare dso_local i32 @intel_ring_advance(%struct.i915_request*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
