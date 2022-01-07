; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_connector_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_get_connector_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector_state = type { i64, %struct.drm_atomic_state* }
%struct.drm_atomic_state = type { i32, %struct.__drm_connnectors_state*, i32 }
%struct.__drm_connnectors_state = type { %struct.drm_connector*, %struct.drm_connector_state*, i32, %struct.drm_connector_state* }
%struct.drm_connector = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.drm_connector_state* (%struct.drm_connector*)* }
%struct.TYPE_4__ = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32 }
%struct.drm_crtc_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Added [CONNECTOR:%d:%s] %p state to %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_connector_state* @drm_atomic_get_connector_state(%struct.drm_atomic_state* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_connector_state*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_mode_config*, align 8
  %9 = alloca %struct.drm_connector_state*, align 8
  %10 = alloca %struct.__drm_connnectors_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.drm_mode_config* %16, %struct.drm_mode_config** %8, align 8
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %25 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %24, i32 0, i32 1
  %26 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %27 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @drm_modeset_lock(i32* %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.drm_connector_state* @ERR_PTR(i32 %33)
  store %struct.drm_connector_state* %34, %struct.drm_connector_state** %3, align 8
  br label %191

35:                                               ; preds = %2
  %36 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %37 = call i32 @drm_connector_index(%struct.drm_connector* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %40 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.drm_mode_config*, %struct.drm_mode_config** %8, align 8
  %47 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @max(i32 %45, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %51 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %50, i32 0, i32 1
  %52 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 32
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.__drm_connnectors_state* @krealloc(%struct.__drm_connnectors_state* %52, i32 %56, i32 %57)
  store %struct.__drm_connnectors_state* %58, %struct.__drm_connnectors_state** %10, align 8
  %59 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %10, align 8
  %60 = icmp ne %struct.__drm_connnectors_state* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %43
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.drm_connector_state* @ERR_PTR(i32 %63)
  store %struct.drm_connector_state* %64, %struct.drm_connector_state** %3, align 8
  br label %191

65:                                               ; preds = %43
  %66 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %10, align 8
  %67 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %68 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %67, i32 0, i32 1
  store %struct.__drm_connnectors_state* %66, %struct.__drm_connnectors_state** %68, align 8
  %69 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %70 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %69, i32 0, i32 1
  %71 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %70, align 8
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %73 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %71, i64 %75
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %79 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = mul i64 32, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memset(%struct.__drm_connnectors_state* %76, i32 0, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %88 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %65, %35
  %90 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %91 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %90, i32 0, i32 1
  %92 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %92, i64 %94
  %96 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %95, i32 0, i32 3
  %97 = load %struct.drm_connector_state*, %struct.drm_connector_state** %96, align 8
  %98 = icmp ne %struct.drm_connector_state* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %89
  %100 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %101 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %100, i32 0, i32 1
  %102 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %102, i64 %104
  %106 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %105, i32 0, i32 3
  %107 = load %struct.drm_connector_state*, %struct.drm_connector_state** %106, align 8
  store %struct.drm_connector_state* %107, %struct.drm_connector_state** %3, align 8
  br label %191

108:                                              ; preds = %89
  %109 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %110 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.drm_connector_state* (%struct.drm_connector*)*, %struct.drm_connector_state* (%struct.drm_connector*)** %112, align 8
  %114 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %115 = call %struct.drm_connector_state* %113(%struct.drm_connector* %114)
  store %struct.drm_connector_state* %115, %struct.drm_connector_state** %9, align 8
  %116 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %117 = icmp ne %struct.drm_connector_state* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %108
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  %121 = call %struct.drm_connector_state* @ERR_PTR(i32 %120)
  store %struct.drm_connector_state* %121, %struct.drm_connector_state** %3, align 8
  br label %191

122:                                              ; preds = %108
  %123 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %124 = call i32 @drm_connector_get(%struct.drm_connector* %123)
  %125 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %126 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %127 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %126, i32 0, i32 1
  %128 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %128, i64 %130
  %132 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %131, i32 0, i32 3
  store %struct.drm_connector_state* %125, %struct.drm_connector_state** %132, align 8
  %133 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %134 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %137 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %136, i32 0, i32 1
  %138 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %138, i64 %140
  %142 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %141, i32 0, i32 2
  store i32 %135, i32* %142, align 8
  %143 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %144 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %145 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %144, i32 0, i32 1
  %146 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %146, i64 %148
  %150 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %149, i32 0, i32 1
  store %struct.drm_connector_state* %143, %struct.drm_connector_state** %150, align 8
  %151 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %152 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %153 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %152, i32 0, i32 1
  %154 = load %struct.__drm_connnectors_state*, %struct.__drm_connnectors_state** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %154, i64 %156
  %158 = getelementptr inbounds %struct.__drm_connnectors_state, %struct.__drm_connnectors_state* %157, i32 0, i32 0
  store %struct.drm_connector* %151, %struct.drm_connector** %158, align 8
  %159 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %160 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %161 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %160, i32 0, i32 1
  store %struct.drm_atomic_state* %159, %struct.drm_atomic_state** %161, align 8
  %162 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %163 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %167 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %170 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %171 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %165, i32 %168, %struct.drm_connector_state* %169, %struct.drm_atomic_state* %170)
  %172 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %173 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %122
  %177 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %178 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  %179 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state* %177, i64 %180)
  store %struct.drm_crtc_state* %181, %struct.drm_crtc_state** %12, align 8
  %182 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %12, align 8
  %183 = call i64 @IS_ERR(%struct.drm_crtc_state* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %12, align 8
  %187 = call %struct.drm_connector_state* @ERR_CAST(%struct.drm_crtc_state* %186)
  store %struct.drm_connector_state* %187, %struct.drm_connector_state** %3, align 8
  br label %191

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %122
  %190 = load %struct.drm_connector_state*, %struct.drm_connector_state** %9, align 8
  store %struct.drm_connector_state* %190, %struct.drm_connector_state** %3, align 8
  br label %191

191:                                              ; preds = %189, %185, %118, %99, %61, %32
  %192 = load %struct.drm_connector_state*, %struct.drm_connector_state** %3, align 8
  ret %struct.drm_connector_state* %192
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32) #1

declare dso_local %struct.drm_connector_state* @ERR_PTR(i32) #1

declare dso_local i32 @drm_connector_index(%struct.drm_connector*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.__drm_connnectors_state* @krealloc(%struct.__drm_connnectors_state*, i32, i32) #1

declare dso_local i32 @memset(%struct.__drm_connnectors_state*, i32, i32) #1

declare dso_local i32 @drm_connector_get(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, %struct.drm_connector_state*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(%struct.drm_atomic_state*, i64) #1

declare dso_local i64 @IS_ERR(%struct.drm_crtc_state*) #1

declare dso_local %struct.drm_connector_state* @ERR_CAST(%struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
