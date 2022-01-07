; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_sdvo_device_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_sdvo_device_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sdvo_device_mapping*, %struct.child_device_config* }
%struct.sdvo_device_mapping = type { i32, i32, i64, i32, i32, i32 }
%struct.child_device_config = type { i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Skipping SDVO device mapping\0A\00", align 1
@SLAVE_ADDR1 = common dso_local global i64 0, align 8
@SLAVE_ADDR2 = common dso_local global i64 0, align 8
@DEVICE_PORT_DVOB = common dso_local global i32 0, align 4
@DEVICE_PORT_DVOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Incorrect SDVO port. Skip it\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"the SDVO device with slave addr %2x is found on %s port\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SDVOB\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SDVOC\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"SDVO device: dvo=%x, addr=%x, wiring=%d, ddc_pin=%d, i2c_pin=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Maybe one SDVO port is shared by two SDVO device.\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"there exists the slave2_addr. Maybe this is a SDVO device with multiple inputs.\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"No SDVO device info is found in VBT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @parse_sdvo_device_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_sdvo_device_mapping(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdvo_device_mapping*, align 8
  %6 = alloca %struct.child_device_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call i32 @IS_GEN_RANGE(%struct.drm_i915_private* %9, i32 3, i32 7)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %146

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %138, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %141

22:                                               ; preds = %15
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.child_device_config*, %struct.child_device_config** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %26, i64 %28
  store %struct.child_device_config* %29, %struct.child_device_config** %6, align 8
  %30 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %31 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SLAVE_ADDR1, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %37 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SLAVE_ADDR2, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %138

42:                                               ; preds = %35, %22
  %43 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %44 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DEVICE_PORT_DVOB, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %50 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DEVICE_PORT_DVOC, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %138

56:                                               ; preds = %48, %42
  %57 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %58 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %61 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DEVICE_PORT_DVOB, align 4
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %67 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %59, i8* %66)
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %70, align 8
  %72 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %73 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %71, i64 %76
  store %struct.sdvo_device_mapping* %77, %struct.sdvo_device_mapping** %5, align 8
  %78 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %79 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %126, label %82

82:                                               ; preds = %56
  %83 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %84 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %87 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %89 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %92 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %94 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %97 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %99 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %102 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %104 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %107 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %109 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %111 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %114 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %117 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %120 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sdvo_device_mapping*, %struct.sdvo_device_mapping** %5, align 8
  %123 = getelementptr inbounds %struct.sdvo_device_mapping, %struct.sdvo_device_mapping* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %112, i64 %115, i32 %118, i32 %121, i32 %124)
  br label %128

126:                                              ; preds = %56
  %127 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %82
  %129 = load %struct.child_device_config*, %struct.child_device_config** %6, align 8
  %130 = getelementptr inbounds %struct.child_device_config, %struct.child_device_config* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %128
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %135, %54, %41
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %15

141:                                              ; preds = %15
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %12, %144, %141
  ret void
}

declare dso_local i32 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
