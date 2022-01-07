; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_getparam_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_i915_gem_context_getparam_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i32, i32, i32 }
%struct.i915_gem_context = type { %struct.TYPE_13__, %struct.TYPE_8__*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@UCONTEXT_NO_ZEROMAP = common dso_local global i32 0, align 4
@I915_USER_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_context_getparam_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_file_private*, align 8
  %9 = alloca %struct.drm_i915_gem_context_param*, align 8
  %10 = alloca %struct.i915_gem_context*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %13 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %13, align 8
  store %struct.drm_i915_file_private* %14, %struct.drm_i915_file_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_i915_gem_context_param*
  store %struct.drm_i915_gem_context_param* %16, %struct.drm_i915_gem_context_param** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %18 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private* %17, i32 %20)
  store %struct.i915_gem_context* %21, %struct.i915_gem_context** %10, align 8
  %22 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %23 = icmp ne %struct.i915_gem_context* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %137

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %29 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %130 [
    i32 132, label %31
    i32 134, label %40
    i32 133, label %84
    i32 137, label %91
    i32 130, label %98
    i32 131, label %105
    i32 129, label %116
    i32 128, label %120
    i32 135, label %125
    i32 136, label %129
  ]

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %32, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @UCONTEXT_NO_ZEROMAP, align 4
  %35 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %36 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %35, i32 0, i32 2
  %37 = call i32 @test_bit(i32 %34, i32* %36)
  %38 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %133

40:                                               ; preds = %27
  %41 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %44 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %49 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %54 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %83

55:                                               ; preds = %40
  %56 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %57 = call %struct.TYPE_14__* @to_i915(%struct.drm_device* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = icmp ne %struct.TYPE_10__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call %struct.TYPE_14__* @to_i915(%struct.drm_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %82

73:                                               ; preds = %55
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = call %struct.TYPE_14__* @to_i915(%struct.drm_device* %74)
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %81 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %62
  br label %83

83:                                               ; preds = %82, %47
  br label %133

84:                                               ; preds = %27
  %85 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %86 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %85, i32 0, i32 2
  store i32 0, i32* %86, align 4
  %87 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %88 = call i32 @i915_gem_context_no_error_capture(%struct.i915_gem_context* %87)
  %89 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  br label %133

91:                                               ; preds = %27
  %92 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %93 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %92, i32 0, i32 2
  store i32 0, i32* %93, align 4
  %94 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %95 = call i32 @i915_gem_context_is_bannable(%struct.i915_gem_context* %94)
  %96 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %133

98:                                               ; preds = %27
  %99 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %100 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %99, i32 0, i32 2
  store i32 0, i32* %100, align 4
  %101 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %102 = call i32 @i915_gem_context_is_recoverable(%struct.i915_gem_context* %101)
  %103 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %104 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %133

105:                                              ; preds = %27
  %106 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %107 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %106, i32 0, i32 2
  store i32 0, i32* %107, align 4
  %108 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %109 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @I915_USER_PRIORITY_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %115 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %133

116:                                              ; preds = %27
  %117 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %118 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %119 = call i32 @get_sseu(%struct.i915_gem_context* %117, %struct.drm_i915_gem_context_param* %118)
  store i32 %119, i32* %11, align 4
  br label %133

120:                                              ; preds = %27
  %121 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %8, align 8
  %122 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %123 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %124 = call i32 @get_ppgtt(%struct.drm_i915_file_private* %121, %struct.i915_gem_context* %122, %struct.drm_i915_gem_context_param* %123)
  store i32 %124, i32* %11, align 4
  br label %133

125:                                              ; preds = %27
  %126 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %127 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %9, align 8
  %128 = call i32 @get_engines(%struct.i915_gem_context* %126, %struct.drm_i915_gem_context_param* %127)
  store i32 %128, i32* %11, align 4
  br label %133

129:                                              ; preds = %27
  br label %130

130:                                              ; preds = %27, %129
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %130, %125, %120, %116, %105, %98, %91, %84, %83, %31
  %134 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %135 = call i32 @i915_gem_context_put(%struct.i915_gem_context* %134)
  %136 = load i32, i32* %11, align 4
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %133, %24
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

declare dso_local %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_14__* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @i915_gem_context_no_error_capture(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_is_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_is_recoverable(%struct.i915_gem_context*) #1

declare dso_local i32 @get_sseu(%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @get_ppgtt(%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @get_engines(%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @i915_gem_context_put(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
