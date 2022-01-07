; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_fixup_mipi_sequences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_fixup_mipi_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64**, i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MIPI_SEQ_INIT_OTP = common dso_local global i64 0, align 8
@MIPI_SEQ_ASSERT_RESET = common dso_local global i64 0, align 8
@MIPI_SEQ_DEASSERT_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Using init OTP fragment to deassert reset\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MIPI_SEQ_ELEM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @fixup_mipi_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_mipi_sequences(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i32 @IS_VALLEYVIEW(%struct.drm_i915_private* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %136

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %9
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %9
  br label %136

26:                                               ; preds = %18
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i64**, i64*** %30, align 8
  %32 = load i64, i64* @MIPI_SEQ_INIT_OTP, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64**, i64*** %40, align 8
  %42 = load i64, i64* @MIPI_SEQ_ASSERT_RESET, align 8
  %43 = getelementptr inbounds i64*, i64** %41, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64**, i64*** %50, align 8
  %52 = load i64, i64* @MIPI_SEQ_DEASSERT_RESET, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36, %26
  br label %136

57:                                               ; preds = %46
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %59 = call i32 @get_init_otp_deassert_fragment_len(%struct.drm_i915_private* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %136

63:                                               ; preds = %57
  %64 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64**, i64*** %68, align 8
  %70 = load i64, i64* @MIPI_SEQ_INIT_OTP, align 8
  %71 = getelementptr inbounds i64*, i64** %69, i64 %70
  %72 = load i64*, i64** %71, align 8
  store i64* %72, i64** %3, align 8
  %73 = load i64*, i64** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i64* @kmemdup(i64* %73, i32 %75, i32 %76)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i64* %77, i64** %81, align 8
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = icmp ne i64* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %63
  br label %136

89:                                               ; preds = %63
  %90 = load i64, i64* @MIPI_SEQ_DEASSERT_RESET, align 8
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %90, i64* %96, align 8
  %97 = load i64, i64* @MIPI_SEQ_ELEM_END, align 8
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %97, i64* %105, align 8
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %107 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %112 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64**, i64*** %114, align 8
  %116 = load i64, i64* @MIPI_SEQ_DEASSERT_RESET, align 8
  %117 = getelementptr inbounds i64*, i64** %115, i64 %116
  store i64* %110, i64** %117, align 8
  %118 = load i64, i64* @MIPI_SEQ_INIT_OTP, align 8
  %119 = load i64*, i64** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  store i64 %118, i64* %123, align 8
  %124 = load i64*, i64** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = getelementptr inbounds i64, i64* %127, i64 -1
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %130 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  %133 = load i64**, i64*** %132, align 8
  %134 = load i64, i64* @MIPI_SEQ_INIT_OTP, align 8
  %135 = getelementptr inbounds i64*, i64** %133, i64 %134
  store i64* %128, i64** %135, align 8
  br label %136

136:                                              ; preds = %89, %88, %62, %56, %25, %8
  ret void
}

declare dso_local i32 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @get_init_otp_deassert_fragment_len(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i64* @kmemdup(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
