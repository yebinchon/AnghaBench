; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_open_ioctl_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_open_ioctl_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_perf_open_param = type { i32 }
%struct.perf_open_properties = type { i64, i32, i64 }
%struct.drm_file = type { %struct.drm_i915_file_private* }
%struct.drm_i915_file_private = type { i32 }
%struct.i915_gem_context = type { i32 }
%struct.i915_perf_stream = type { i64, %struct.TYPE_4__*, i32, %struct.i915_gem_context*, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32 (%struct.i915_perf_stream*)* }

@.str = private unnamed_addr constant [62 x i8] c"Failed to look up context with ID %u for opening perf stream\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@i915_perf_stream_paranoid = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Insufficient privileges to open system-wide i915 perf stream\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@I915_PERF_FLAG_FD_CLOEXEC = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i64 0, align 8
@I915_PERF_FLAG_FD_NONBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"[i915_perf]\00", align 1
@fops = common dso_local global i32 0, align 4
@I915_PERF_FLAG_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_i915_perf_open_param*, %struct.perf_open_properties*, %struct.drm_file*)* @i915_perf_open_ioctl_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_perf_open_ioctl_locked(%struct.drm_i915_private* %0, %struct.drm_i915_perf_open_param* %1, %struct.perf_open_properties* %2, %struct.drm_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.drm_i915_perf_open_param*, align 8
  %8 = alloca %struct.perf_open_properties*, align 8
  %9 = alloca %struct.drm_file*, align 8
  %10 = alloca %struct.i915_gem_context*, align 8
  %11 = alloca %struct.i915_perf_stream*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.drm_i915_file_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_perf_open_param* %1, %struct.drm_i915_perf_open_param** %7, align 8
  store %struct.perf_open_properties* %2, %struct.perf_open_properties** %8, align 8
  store %struct.drm_file* %3, %struct.drm_file** %9, align 8
  store %struct.i915_gem_context* null, %struct.i915_gem_context** %10, align 8
  store %struct.i915_perf_stream* null, %struct.i915_perf_stream** %11, align 8
  store i64 0, i64* %12, align 8
  store i32 1, i32* %13, align 4
  %18 = load %struct.perf_open_properties*, %struct.perf_open_properties** %8, align 8
  %19 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.perf_open_properties*, %struct.perf_open_properties** %8, align 8
  %24 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %16, align 4
  %26 = load %struct.drm_file*, %struct.drm_file** %9, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 0
  %28 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %27, align 8
  store %struct.drm_i915_file_private* %28, %struct.drm_i915_file_private** %17, align 8
  %29 = load %struct.drm_i915_file_private*, %struct.drm_i915_file_private** %17, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private* %29, i32 %30)
  store %struct.i915_gem_context* %31, %struct.i915_gem_context** %10, align 8
  %32 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %33 = icmp ne %struct.i915_gem_context* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %16, align 4
  %36 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %15, align 4
  br label %179

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %42 = call i64 @IS_HASWELL(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %46 = icmp ne %struct.i915_gem_context* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %44, %40
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i64, i64* @i915_perf_stream_paranoid, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %56 = call i32 @capable(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %172

62:                                               ; preds = %54, %51, %48
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.i915_perf_stream* @kzalloc(i32 40, i32 %63)
  store %struct.i915_perf_stream* %64, %struct.i915_perf_stream** %11, align 8
  %65 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %66 = icmp ne %struct.i915_perf_stream* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %15, align 4
  br label %172

70:                                               ; preds = %62
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %72 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %73 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %72, i32 0, i32 4
  store %struct.drm_i915_private* %71, %struct.drm_i915_private** %73, align 8
  %74 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %75 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %76 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %75, i32 0, i32 3
  store %struct.i915_gem_context* %74, %struct.i915_gem_context** %76, align 8
  %77 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %78 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %7, align 8
  %79 = load %struct.perf_open_properties*, %struct.perf_open_properties** %8, align 8
  %80 = call i32 @i915_oa_stream_init(%struct.i915_perf_stream* %77, %struct.drm_i915_perf_open_param* %78, %struct.perf_open_properties* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %169

84:                                               ; preds = %70
  %85 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %86 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.perf_open_properties*, %struct.perf_open_properties** %8, align 8
  %89 = getelementptr inbounds %struct.perf_open_properties, %struct.perf_open_properties* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  %92 = zext i1 %91 to i32
  %93 = call i64 @WARN_ON(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %15, align 4
  br label %153

98:                                               ; preds = %84
  %99 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %100 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %99, i32 0, i32 2
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = call i32 @list_add(i32* %100, i32* %103)
  %105 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %7, align 8
  %106 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @I915_PERF_FLAG_FD_CLOEXEC, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i64, i64* @O_CLOEXEC, align 8
  %113 = load i64, i64* %12, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %12, align 8
  br label %115

115:                                              ; preds = %111, %98
  %116 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %7, align 8
  %117 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @I915_PERF_FLAG_FD_NONBLOCK, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i64, i64* @O_NONBLOCK, align 8
  %124 = load i64, i64* %12, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %122, %115
  %127 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i32 @anon_inode_getfd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* @fops, %struct.i915_perf_stream* %127, i64 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %15, align 4
  br label %149

134:                                              ; preds = %126
  %135 = load %struct.drm_i915_perf_open_param*, %struct.drm_i915_perf_open_param** %7, align 8
  %136 = getelementptr inbounds %struct.drm_i915_perf_open_param, %struct.drm_i915_perf_open_param* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @I915_PERF_FLAG_DISABLED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %134
  %142 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %143 = call i32 @i915_perf_enable_locked(%struct.i915_perf_stream* %142)
  br label %144

144:                                              ; preds = %141, %134
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %146 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %145, i32 0, i32 0
  %147 = call i32 @drm_dev_get(i32* %146)
  %148 = load i32, i32* %14, align 4
  store i32 %148, i32* %5, align 4
  br label %181

149:                                              ; preds = %132
  %150 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %151 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %150, i32 0, i32 2
  %152 = call i32 @list_del(i32* %151)
  br label %153

153:                                              ; preds = %149, %95
  %154 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %155 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %157, align 8
  %159 = icmp ne i32 (%struct.i915_perf_stream*)* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %153
  %161 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %162 = getelementptr inbounds %struct.i915_perf_stream, %struct.i915_perf_stream* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32 (%struct.i915_perf_stream*)*, i32 (%struct.i915_perf_stream*)** %164, align 8
  %166 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %167 = call i32 %165(%struct.i915_perf_stream* %166)
  br label %168

168:                                              ; preds = %160, %153
  br label %169

169:                                              ; preds = %168, %83
  %170 = load %struct.i915_perf_stream*, %struct.i915_perf_stream** %11, align 8
  %171 = call i32 @kfree(%struct.i915_perf_stream* %170)
  br label %172

172:                                              ; preds = %169, %67, %58
  %173 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %174 = icmp ne %struct.i915_gem_context* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct.i915_gem_context*, %struct.i915_gem_context** %10, align 8
  %177 = call i32 @i915_gem_context_put(%struct.i915_gem_context* %176)
  br label %178

178:                                              ; preds = %175, %172
  br label %179

179:                                              ; preds = %178, %34
  %180 = load i32, i32* %15, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %179, %144
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local %struct.i915_gem_context* @i915_gem_context_lookup(%struct.drm_i915_file_private*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.i915_perf_stream* @kzalloc(i32, i32) #1

declare dso_local i32 @i915_oa_stream_init(%struct.i915_perf_stream*, %struct.drm_i915_perf_open_param*, %struct.perf_open_properties*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @anon_inode_getfd(i8*, i32*, %struct.i915_perf_stream*, i64) #1

declare dso_local i32 @i915_perf_enable_locked(%struct.i915_perf_stream*) #1

declare dso_local i32 @drm_dev_get(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.i915_perf_stream*) #1

declare dso_local i32 @i915_gem_context_put(%struct.i915_gem_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
