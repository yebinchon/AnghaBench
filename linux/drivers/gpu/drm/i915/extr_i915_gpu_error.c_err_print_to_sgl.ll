; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_to_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_to_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, i32 }
%struct.drm_i915_error_state_buf = type { i64, i64, i32, i64, i32*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gpu_state*)* @err_print_to_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @err_print_to_sgl(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i915_gpu_state*, align 8
  %4 = alloca %struct.drm_i915_error_state_buf, align 8
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %3, align 8
  %5 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %6 = call i64 @IS_ERR(%struct.i915_gpu_state* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %10 = call i32 @PTR_ERR(%struct.i915_gpu_state* %9)
  store i32 %10, i32* %2, align 4
  br label %93

11:                                               ; preds = %1
  %12 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %13 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @READ_ONCE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %93

18:                                               ; preds = %11
  %19 = call i32 @memset(%struct.drm_i915_error_state_buf* %4, i32 0, i32 56)
  %20 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %21 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %25 = call i32 @__err_print_to_sgl(%struct.drm_i915_error_state_buf* %4, %struct.i915_gpu_state* %24)
  %26 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = trunc i64 %31 to i32
  %34 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @__sg_set_buf(i32 %33, i32* %35, i64 %37, i32 %39)
  %41 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 4
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %29, %18
  %44 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %49, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @GEM_BUG_ON(i32 %53)
  %55 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %56, 1
  %58 = call i32 @sg_mark_end(i64 %57)
  br label %59

59:                                               ; preds = %47, %43
  %60 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @GEM_BUG_ON(i32 %70)
  %72 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @err_free_sgl(i64 %77)
  %79 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %2, align 4
  br label %93

81:                                               ; preds = %68
  %82 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %3, align 8
  %83 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @cmpxchg(i32* %83, i32* null, i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.drm_i915_error_state_buf, %struct.drm_i915_error_state_buf* %4, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @err_free_sgl(i64 %90)
  br label %92

92:                                               ; preds = %88, %81
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %75, %17, %8
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @IS_ERR(%struct.i915_gpu_state*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_gpu_state*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @memset(%struct.drm_i915_error_state_buf*, i32, i32) #1

declare dso_local i32 @__err_print_to_sgl(%struct.drm_i915_error_state_buf*, %struct.i915_gpu_state*) #1

declare dso_local i32 @__sg_set_buf(i32, i32*, i64, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @sg_mark_end(i64) #1

declare dso_local i32 @err_free_sgl(i64) #1

declare dso_local i64 @cmpxchg(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
