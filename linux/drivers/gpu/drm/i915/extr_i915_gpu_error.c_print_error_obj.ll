; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_print_error_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_print_error_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.intel_engine_cs = type { i8* }
%struct.drm_i915_error_object = type { i32, i32**, i64, i32 }

@ASCII85_BUFSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s --- %s = 0x%08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.intel_engine_cs*, i8*, %struct.drm_i915_error_object*)* @print_error_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error_obj(%struct.drm_i915_error_state_buf* %0, %struct.intel_engine_cs* %1, i8* %2, %struct.drm_i915_error_object* %3) #0 {
  %5 = alloca %struct.drm_i915_error_state_buf*, align 8
  %6 = alloca %struct.intel_engine_cs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_i915_error_object*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %5, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.drm_i915_error_object* %3, %struct.drm_i915_error_object** %8, align 8
  %15 = load i32, i32* @ASCII85_BUFSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %20 = icmp ne %struct.drm_i915_error_object* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %103

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %28 = icmp ne %struct.intel_engine_cs* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %6, align 8
  %31 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  br label %34

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %33 ]
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %38 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @upper_32_bits(i32 %39)
  %41 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %42 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @lower_32_bits(i32 %43)
  %45 = call i32 @err_printf(%struct.drm_i915_error_state_buf* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %34, %22
  %47 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %48 = call i32 @err_compression_marker(%struct.drm_i915_error_state_buf* %47)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %97, %46
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %52 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %59 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %57, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %65 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ascii85_encode_len(i32 %72)
  store i32 %73, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %93, %71
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %80 = load %struct.drm_i915_error_object*, %struct.drm_i915_error_object** %8, align 8
  %81 = getelementptr inbounds %struct.drm_i915_error_object, %struct.drm_i915_error_object* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @ascii85_encode(i32 %90, i8* %18)
  %92 = call i32 @err_puts(%struct.drm_i915_error_state_buf* %79, i8* %91)
  br label %93

93:                                               ; preds = %78
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %49

100:                                              ; preds = %49
  %101 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %102 = call i32 @err_puts(%struct.drm_i915_error_state_buf* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %21
  %104 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %12, align 4
  switch i32 %105, label %107 [
    i32 0, label %106
    i32 1, label %106
  ]

106:                                              ; preds = %103, %103
  ret void

107:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @err_printf(%struct.drm_i915_error_state_buf*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i32 @upper_32_bits(i32) #2

declare dso_local i32 @lower_32_bits(i32) #2

declare dso_local i32 @err_compression_marker(%struct.drm_i915_error_state_buf*) #2

declare dso_local i32 @ascii85_encode_len(i32) #2

declare dso_local i32 @err_puts(%struct.drm_i915_error_state_buf*, i8*) #2

declare dso_local i8* @ascii85_encode(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
