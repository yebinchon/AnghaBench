; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_ctx_setparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_context.c_ctx_setparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_file_private = type { i32 }
%struct.i915_gem_context = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_gem_context_param = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UCONTEXT_NO_ZEROMAP = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@I915_SCHEDULER_CAP_PRIORITY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I915_CONTEXT_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@I915_CONTEXT_MIN_USER_PRIORITY = common dso_local global i32 0, align 4
@I915_CONTEXT_DEFAULT_PRIORITY = common dso_local global i32 0, align 4
@CAP_SYS_NICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*)* @ctx_setparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctx_setparam(%struct.drm_i915_file_private* %0, %struct.i915_gem_context* %1, %struct.drm_i915_gem_context_param* %2) #0 {
  %4 = alloca %struct.drm_i915_file_private*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.drm_i915_gem_context_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_file_private* %0, %struct.drm_i915_file_private** %4, align 8
  store %struct.i915_gem_context* %1, %struct.i915_gem_context** %5, align 8
  store %struct.drm_i915_gem_context_param* %2, %struct.drm_i915_gem_context_param** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %10 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %183 [
    i32 132, label %12
    i32 133, label %37
    i32 136, label %58
    i32 130, label %92
    i32 131, label %113
    i32 129, label %169
    i32 128, label %173
    i32 134, label %178
    i32 135, label %182
  ]

12:                                               ; preds = %3
  %13 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* @UCONTEXT_NO_ZEROMAP, align 4
  %27 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %28 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %27, i32 0, i32 2
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %35

30:                                               ; preds = %20
  %31 = load i32, i32* @UCONTEXT_NO_ZEROMAP, align 4
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %33 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %32, i32 0, i32 2
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  br label %36

36:                                               ; preds = %35, %17
  br label %186

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %57

45:                                               ; preds = %37
  %46 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %52 = call i32 @i915_gem_context_set_no_error_capture(%struct.i915_gem_context* %51)
  br label %56

53:                                               ; preds = %45
  %54 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %55 = call i32 @i915_gem_context_clear_no_error_capture(%struct.i915_gem_context* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %42
  br label %186

58:                                               ; preds = %3
  %59 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %60 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %91

66:                                               ; preds = %58
  %67 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %68 = call i32 @capable(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %72 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %90

78:                                               ; preds = %70, %66
  %79 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %80 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %85 = call i32 @i915_gem_context_set_bannable(%struct.i915_gem_context* %84)
  br label %89

86:                                               ; preds = %78
  %87 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %88 = call i32 @i915_gem_context_clear_bannable(%struct.i915_gem_context* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %75
  br label %91

91:                                               ; preds = %90, %63
  br label %186

92:                                               ; preds = %3
  %93 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %94 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %112

100:                                              ; preds = %92
  %101 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %102 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %107 = call i32 @i915_gem_context_set_recoverable(%struct.i915_gem_context* %106)
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %110 = call i32 @i915_gem_context_clear_recoverable(%struct.i915_gem_context* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %97
  br label %186

113:                                              ; preds = %3
  %114 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %115 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  %117 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %118 = getelementptr inbounds %struct.drm_i915_gem_context_param, %struct.drm_i915_gem_context_param* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %168

124:                                              ; preds = %113
  %125 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %126 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @I915_SCHEDULER_CAP_PRIORITY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %7, align 4
  br label %167

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @I915_CONTEXT_MAX_USER_PRIORITY, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @I915_CONTEXT_MIN_USER_PRIORITY, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %137
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %7, align 4
  br label %166

148:                                              ; preds = %141
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @I915_CONTEXT_DEFAULT_PRIORITY, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32, i32* @CAP_SYS_NICE, align 4
  %154 = call i32 @capable(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @EPERM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %165

159:                                              ; preds = %152, %148
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @I915_USER_PRIORITY(i32 %160)
  %162 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %163 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  br label %165

165:                                              ; preds = %159, %156
  br label %166

166:                                              ; preds = %165, %145
  br label %167

167:                                              ; preds = %166, %134
  br label %168

168:                                              ; preds = %167, %121
  br label %186

169:                                              ; preds = %3
  %170 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %171 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %172 = call i32 @set_sseu(%struct.i915_gem_context* %170, %struct.drm_i915_gem_context_param* %171)
  store i32 %172, i32* %7, align 4
  br label %186

173:                                              ; preds = %3
  %174 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %4, align 8
  %175 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %176 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %177 = call i32 @set_ppgtt(%struct.drm_i915_file_private* %174, %struct.i915_gem_context* %175, %struct.drm_i915_gem_context_param* %176)
  store i32 %177, i32* %7, align 4
  br label %186

178:                                              ; preds = %3
  %179 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %180 = load %struct.drm_i915_gem_context_param*, %struct.drm_i915_gem_context_param** %6, align 8
  %181 = call i32 @set_engines(%struct.i915_gem_context* %179, %struct.drm_i915_gem_context_param* %180)
  store i32 %181, i32* %7, align 4
  br label %186

182:                                              ; preds = %3
  br label %183

183:                                              ; preds = %3, %182
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %7, align 4
  br label %186

186:                                              ; preds = %183, %178, %173, %169, %168, %112, %91, %57, %36
  %187 = load i32, i32* %7, align 4
  ret i32 %187
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @i915_gem_context_set_no_error_capture(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_clear_no_error_capture(%struct.i915_gem_context*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @i915_gem_context_set_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_clear_bannable(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_set_recoverable(%struct.i915_gem_context*) #1

declare dso_local i32 @i915_gem_context_clear_recoverable(%struct.i915_gem_context*) #1

declare dso_local i32 @I915_USER_PRIORITY(i32) #1

declare dso_local i32 @set_sseu(%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @set_ppgtt(%struct.drm_i915_file_private*, %struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

declare dso_local i32 @set_engines(%struct.i915_gem_context*, %struct.drm_i915_gem_context_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
