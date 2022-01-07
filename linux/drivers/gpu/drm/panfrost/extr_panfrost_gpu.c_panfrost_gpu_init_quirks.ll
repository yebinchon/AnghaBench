; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panfrost/extr_panfrost_gpu.c_panfrost_gpu_init_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panfrost_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HW_ISSUE_8443 = common dso_local global i32 0, align 4
@HW_ISSUE_11035 = common dso_local global i32 0, align 4
@SC_LS_PAUSEBUFFER_DISABLE = common dso_local global i32 0, align 4
@HW_ISSUE_10327 = common dso_local global i32 0, align 4
@SC_SDC_DISABLE_OQ_DISCARD = common dso_local global i32 0, align 4
@HW_ISSUE_10797 = common dso_local global i32 0, align 4
@SC_ENABLE_TEXGRD_FLAGS = common dso_local global i32 0, align 4
@GPUCORE_1619 = common dso_local global i32 0, align 4
@SC_LS_ATTR_CHECK_DISABLE = common dso_local global i32 0, align 4
@SC_LS_ALLOW_ATTR_TYPES = common dso_local global i32 0, align 4
@HW_FEATURE_TLS_HASHING = common dso_local global i32 0, align 4
@SC_TLS_HASH_ENABLE = common dso_local global i32 0, align 4
@GPU_SHADER_CONFIG = common dso_local global i32 0, align 4
@GPU_TILER_CONFIG = common dso_local global i32 0, align 4
@HW_ISSUE_T76X_3953 = common dso_local global i32 0, align 4
@TC_CLOCK_GATE_OVERRIDE = common dso_local global i32 0, align 4
@GPU_L2_MMU_CONFIG = common dso_local global i32 0, align 4
@HW_FEATURE_3BIT_EXT_RW_L2_MMU_CONFIG = common dso_local global i32 0, align 4
@L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_READS = common dso_local global i32 0, align 4
@L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_WRITES = common dso_local global i32 0, align 4
@L2_MMU_CONFIG_LIMIT_EXTERNAL_READS = common dso_local global i32 0, align 4
@L2_MMU_CONFIG_LIMIT_EXTERNAL_WRITES = common dso_local global i32 0, align 4
@JM_MAX_JOB_THROTTLE_LIMIT = common dso_local global i32 0, align 4
@JM_JOB_THROTTLE_LIMIT_SHIFT = common dso_local global i32 0, align 4
@COHERENCY_ACE = common dso_local global i32 0, align 4
@COHERENCY_ACE_LITE = common dso_local global i32 0, align 4
@JM_FORCE_COHERENCY_FEATURES_SHIFT = common dso_local global i32 0, align 4
@GPU_JM_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.panfrost_device*)* @panfrost_gpu_init_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panfrost_gpu_init_quirks(%struct.panfrost_device* %0) #0 {
  %2 = alloca %struct.panfrost_device*, align 8
  %3 = alloca i32, align 4
  store %struct.panfrost_device* %0, %struct.panfrost_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %5 = load i32, i32* @HW_ISSUE_8443, align 4
  %6 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %10 = load i32, i32* @HW_ISSUE_11035, align 4
  %11 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @SC_LS_PAUSEBUFFER_DISABLE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %8
  %18 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %19 = load i32, i32* @HW_ISSUE_10327, align 4
  %20 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @SC_SDC_DISABLE_OQ_DISCARD, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %28 = load i32, i32* @HW_ISSUE_10797, align 4
  %29 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @SC_ENABLE_TEXGRD_FLAGS, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %37 = load i32, i32* @GPUCORE_1619, align 4
  %38 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %42 = call i64 @panfrost_model_cmp(%struct.panfrost_device* %41, i32 1872)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @SC_LS_ATTR_CHECK_DISABLE, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %50 = call i64 @panfrost_model_cmp(%struct.panfrost_device* %49, i32 2176)
  %51 = icmp sle i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @SC_LS_ALLOW_ATTR_TYPES, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %60 = load i32, i32* @HW_FEATURE_TLS_HASHING, align 4
  %61 = call i64 @panfrost_has_hw_feature(%struct.panfrost_device* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @SC_TLS_HASH_ENABLE, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %72 = load i32, i32* @GPU_SHADER_CONFIG, align 4
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @gpu_write(%struct.panfrost_device* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %77 = load i32, i32* @GPU_TILER_CONFIG, align 4
  %78 = call i32 @gpu_read(%struct.panfrost_device* %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %80 = load i32, i32* @HW_ISSUE_T76X_3953, align 4
  %81 = call i64 @panfrost_has_hw_issue(%struct.panfrost_device* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %75
  %84 = load i32, i32* @TC_CLOCK_GATE_OVERRIDE, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %89 = load i32, i32* @GPU_TILER_CONFIG, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @gpu_write(%struct.panfrost_device* %88, i32 %89, i32 %90)
  %92 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %93 = load i32, i32* @GPU_L2_MMU_CONFIG, align 4
  %94 = call i32 @gpu_read(%struct.panfrost_device* %92, i32 %93)
  store i32 %94, i32* %3, align 4
  %95 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %96 = load i32, i32* @HW_FEATURE_3BIT_EXT_RW_L2_MMU_CONFIG, align 4
  %97 = call i64 @panfrost_has_hw_feature(%struct.panfrost_device* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %87
  %100 = load i32, i32* @L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_READS, align 4
  %101 = load i32, i32* @L2_MMU_CONFIG_3BIT_LIMIT_EXTERNAL_WRITES, align 4
  %102 = or i32 %100, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %3, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %113

106:                                              ; preds = %87
  %107 = load i32, i32* @L2_MMU_CONFIG_LIMIT_EXTERNAL_READS, align 4
  %108 = load i32, i32* @L2_MMU_CONFIG_LIMIT_EXTERNAL_WRITES, align 4
  %109 = or i32 %107, %108
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %106, %99
  %114 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %115 = load i32, i32* @GPU_L2_MMU_CONFIG, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @gpu_write(%struct.panfrost_device* %114, i32 %115, i32 %116)
  store i32 0, i32* %3, align 4
  %118 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %119 = call i64 @panfrost_model_eq(%struct.panfrost_device* %118, i32 2144)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %123 = call i64 @panfrost_model_eq(%struct.panfrost_device* %122, i32 2176)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %121, %113
  %126 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %127 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 8192
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* @JM_MAX_JOB_THROTTLE_LIMIT, align 4
  %133 = load i32, i32* @JM_JOB_THROTTLE_LIMIT_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  br label %157

137:                                              ; preds = %125, %121
  %138 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %139 = call i64 @panfrost_model_eq(%struct.panfrost_device* %138, i32 24576)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %143 = getelementptr inbounds %struct.panfrost_device, %struct.panfrost_device* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @COHERENCY_ACE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %141
  %149 = load i32, i32* @COHERENCY_ACE_LITE, align 4
  %150 = load i32, i32* @COHERENCY_ACE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @JM_FORCE_COHERENCY_FEATURES_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %148, %141, %137
  br label %157

157:                                              ; preds = %156, %131
  %158 = load i32, i32* %3, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.panfrost_device*, %struct.panfrost_device** %2, align 8
  %162 = load i32, i32* @GPU_JM_CONFIG, align 4
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @gpu_write(%struct.panfrost_device* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %160, %157
  ret void
}

declare dso_local i64 @panfrost_has_hw_issue(%struct.panfrost_device*, i32) #1

declare dso_local i64 @panfrost_model_cmp(%struct.panfrost_device*, i32) #1

declare dso_local i64 @panfrost_has_hw_feature(%struct.panfrost_device*, i32) #1

declare dso_local i32 @gpu_write(%struct.panfrost_device*, i32, i32) #1

declare dso_local i32 @gpu_read(%struct.panfrost_device*, i32) #1

declare dso_local i64 @panfrost_model_eq(%struct.panfrost_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
