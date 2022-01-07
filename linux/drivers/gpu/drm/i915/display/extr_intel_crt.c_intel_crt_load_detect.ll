; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_load_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_load_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.intel_uncore }
%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"starting load-detect on CRT\0A\00", align 1
@PIPECONF_FORCE_BORDER = common dso_local global i32 0, align 4
@_VGA_MSR_WRITE = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crt*, i32)* @intel_crt_load_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_load_detect(%struct.intel_crt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_uncore*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.intel_crt* %0, %struct.intel_crt** %3, align 8
  store i32 %1, i32* %4, align 4
  %31 = load %struct.intel_crt*, %struct.intel_crt** %3, align 8
  %32 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %34, align 8
  store %struct.drm_device* %35, %struct.drm_device** %5, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %36)
  store %struct.drm_i915_private* %37, %struct.drm_i915_private** %6, align 8
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  store %struct.intel_uncore* %39, %struct.intel_uncore** %7, align 8
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @BCLRPAT(i32 %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @VTOTAL(i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @VBLANK(i32 %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @VSYNC(i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @PIPECONF(i32 %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @PIPEDSL(i32 %51)
  store i32 %52, i32* %22, align 4
  %53 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @intel_uncore_read(%struct.intel_uncore* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %57 = load i32, i32* %18, align 4
  %58 = call i32 @intel_uncore_read(%struct.intel_uncore* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @intel_uncore_read(%struct.intel_uncore* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 4095
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 2047
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %13, align 4
  %70 = and i32 %69, 4095
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %13, align 4
  %73 = ashr i32 %72, 16
  %74 = and i32 %73, 4095
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @intel_uncore_write(%struct.intel_uncore* %76, i32 %77, i32 5242960)
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %80 = call i32 @IS_GEN(%struct.drm_i915_private* %79, i32 2)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %114, label %82

82:                                               ; preds = %2
  %83 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %84 = load i32, i32* %21, align 4
  %85 = call i32 @intel_uncore_read(%struct.intel_uncore* %83, i32 %84)
  store i32 %85, i32* %25, align 4
  %86 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* @PIPECONF_FORCE_BORDER, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @intel_uncore_write(%struct.intel_uncore* %86, i32 %87, i32 %90)
  %92 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %93 = load i32, i32* %21, align 4
  %94 = call i32 @intel_uncore_posting_read(%struct.intel_uncore* %92, i32 %93)
  %95 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @intel_wait_for_vblank(%struct.drm_i915_private* %95, i32 %96)
  %98 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %99 = load i32, i32* @_VGA_MSR_WRITE, align 4
  %100 = call i32 @intel_uncore_read8(%struct.intel_uncore* %98, i32 %99)
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %23, align 4
  %102 = and i32 %101, 16
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %82
  %105 = load i32, i32* @connector_status_connected, align 4
  br label %108

106:                                              ; preds = %82
  %107 = load i32, i32* @connector_status_disconnected, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %24, align 4
  %110 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %25, align 4
  %113 = call i32 @intel_uncore_write(%struct.intel_uncore* %110, i32 %111, i32 %112)
  br label %212

114:                                              ; preds = %2
  store i32 0, i32* %26, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp sge i32 %119, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @I915_READ(i32 %123)
  store i32 %124, i32* %29, align 4
  %125 = load i32, i32* %29, align 4
  %126 = and i32 %125, 65535
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %30, align 4
  %128 = load i32, i32* %30, align 4
  store i32 %128, i32* %14, align 4
  %129 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %15, align 4
  %134 = sub nsw i32 %133, 1
  %135 = shl i32 %134, 16
  %136 = or i32 %132, %135
  %137 = call i32 @intel_uncore_write(%struct.intel_uncore* %129, i32 %130, i32 %136)
  store i32 1, i32* %26, align 4
  br label %138

138:                                              ; preds = %122, %118, %114
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %15, align 4
  %144 = sub nsw i32 %142, %143
  %145 = icmp sge i32 %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %138
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = ashr i32 %149, 1
  store i32 %150, i32* %12, align 4
  br label %156

151:                                              ; preds = %138
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %152, %153
  %155 = ashr i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %151, %146
  br label %157

157:                                              ; preds = %163, %156
  %158 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @intel_uncore_read(%struct.intel_uncore* %158, i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = icmp sge i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %157

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %171, %164
  %166 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @intel_uncore_read(%struct.intel_uncore* %166, i32 %167)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %12, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %165

172:                                              ; preds = %165
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %173

173:                                              ; preds = %186, %172
  %174 = load i32, i32* %27, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %27, align 4
  %176 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %177 = load i32, i32* @_VGA_MSR_WRITE, align 4
  %178 = call i32 @intel_uncore_read8(%struct.intel_uncore* %176, i32 %177)
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %23, align 4
  %180 = and i32 %179, 16
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  %183 = load i32, i32* %28, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %28, align 4
  br label %185

185:                                              ; preds = %182, %173
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %188 = load i32, i32* %22, align 4
  %189 = call i32 @intel_uncore_read(%struct.intel_uncore* %187, i32 %188)
  %190 = load i32, i32* %16, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %173, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* %26, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %197 = load i32, i32* %19, align 4
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @intel_uncore_write(%struct.intel_uncore* %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %192
  %201 = load i32, i32* %28, align 4
  %202 = mul nsw i32 %201, 4
  %203 = load i32, i32* %27, align 4
  %204 = mul nsw i32 %203, 3
  %205 = icmp sgt i32 %202, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i32, i32* @connector_status_connected, align 4
  br label %210

208:                                              ; preds = %200
  %209 = load i32, i32* @connector_status_disconnected, align 4
  br label %210

210:                                              ; preds = %208, %206
  %211 = phi i32 [ %207, %206 ], [ %209, %208 ]
  store i32 %211, i32* %24, align 4
  br label %212

212:                                              ; preds = %210, %108
  %213 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @intel_uncore_write(%struct.intel_uncore* %213, i32 %214, i32 %215)
  %217 = load i32, i32* %24, align 4
  ret i32 %217
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @BCLRPAT(i32) #1

declare dso_local i32 @VTOTAL(i32) #1

declare dso_local i32 @VBLANK(i32) #1

declare dso_local i32 @VSYNC(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

declare dso_local i32 @PIPEDSL(i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_posting_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_wait_for_vblank(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_uncore_read8(%struct.intel_uncore*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
