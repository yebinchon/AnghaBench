; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_igt_ppgtt_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_gem_gtt.c_igt_ppgtt_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_ppgtt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"[1] Ran out of memory for va_range [0 + %llx] [bit %d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"[2] Ran out of memory for va_range [%llx + %llx] [bit %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_ppgtt_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_ppgtt_alloc(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_ppgtt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = call i32 @HAS_PPGTT(%struct.drm_i915_private* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %126

16:                                               ; preds = %1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call %struct.i915_ppgtt* @__ppgtt_create(%struct.drm_i915_private* %17)
  store %struct.i915_ppgtt* %18, %struct.i915_ppgtt** %5, align 8
  %19 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %20 = call i64 @IS_ERR(%struct.i915_ppgtt* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.i915_ppgtt* %23)
  store i32 %24, i32* %2, align 4
  br label %126

25:                                               ; preds = %16
  %26 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %27 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_5__*, i32, i32)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %121

32:                                               ; preds = %25
  %33 = call i32 (...) @totalram_pages()
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = shl i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %37 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @min(i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  store i32 4096, i32* %6, align 4
  br label %42

42:                                               ; preds = %78, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %81

46:                                               ; preds = %42
  %47 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %48 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %49, align 8
  %51 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %52 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = call i32 %50(%struct.TYPE_5__* %52, i32 0, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ilog2(i32 %64)
  %66 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %62, %57
  br label %121

68:                                               ; preds = %46
  %69 = call i32 (...) @cond_resched()
  %70 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %71 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %72, align 8
  %74 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %75 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 %73(%struct.TYPE_5__* %75, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %6, align 4
  %80 = shl i32 %79, 2
  store i32 %80, i32* %6, align 4
  br label %42

81:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  store i32 4096, i32* %6, align 4
  br label %82

82:                                               ; preds = %116, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %120

86:                                               ; preds = %82
  %87 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %88 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_5__*, i32, i32)*, i32 (%struct.TYPE_5__*, i32, i32)** %89, align 8
  %91 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %92 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 %90(%struct.TYPE_5__* %92, i32 %93, i32 %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %86
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @ilog2(i32 %110)
  %112 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %109, i32 %111)
  store i32 0, i32* %9, align 4
  br label %113

113:                                              ; preds = %105, %100
  br label %121

114:                                              ; preds = %86
  %115 = call i32 (...) @cond_resched()
  br label %116

116:                                              ; preds = %114
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 %118, 2
  store i32 %119, i32* %6, align 4
  br label %82

120:                                              ; preds = %82
  br label %121

121:                                              ; preds = %120, %113, %67, %31
  %122 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %5, align 8
  %123 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %122, i32 0, i32 0
  %124 = call i32 @i915_vm_put(%struct.TYPE_5__* %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %121, %22, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @HAS_PPGTT(%struct.drm_i915_private*) #1

declare dso_local %struct.i915_ppgtt* @__ppgtt_create(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @totalram_pages(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @i915_vm_put(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
