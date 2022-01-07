; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c___force_fw_fetch_failures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc_fw.c___force_fw_fetch_failures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc_fw = type { i8*, i32, i64, i64 }
%struct.drm_i915_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"<invalid>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uc_fw*, %struct.drm_i915_private*, i32)* @__force_fw_fetch_failures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__force_fw_fetch_failures(%struct.intel_uc_fw* %0, %struct.drm_i915_private* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_uc_fw*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_uc_fw* %0, %struct.intel_uc_fw** %4, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %19 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %22 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %109

23:                                               ; preds = %3
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %30 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %34 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %37 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %108

38:                                               ; preds = %23
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %45 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %50 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %107

51:                                               ; preds = %38
  %52 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %53 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %63 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %67 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %70 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %106

71:                                               ; preds = %56, %51
  %72 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %73 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %83 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %88 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %105

89:                                               ; preds = %76, %71
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @i915_inject_load_error(%struct.drm_i915_private* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %99 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %101 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.intel_uc_fw*, %struct.intel_uc_fw** %4, align 8
  %103 = getelementptr inbounds %struct.intel_uc_fw, %struct.intel_uc_fw* %102, i32 0, i32 1
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %92, %89
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %61
  br label %107

107:                                              ; preds = %106, %43
  br label %108

108:                                              ; preds = %107, %28
  br label %109

109:                                              ; preds = %108, %17
  ret void
}

declare dso_local i64 @i915_inject_load_error(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
