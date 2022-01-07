; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_broadwell_sseu_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_broadwell_sseu_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.sseu_dev_info = type { i32, i32, i32, i32, i32*, i32*, i32, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { %struct.sseu_dev_info }

@GEN8_FUSE2 = common dso_local global i32 0, align 4
@GEN8_F2_S_ENA_MASK = common dso_local global i32 0, align 4
@GEN8_F2_S_ENA_SHIFT = common dso_local global i32 0, align 4
@GEN8_F2_SS_DIS_MASK = common dso_local global i32 0, align 4
@GEN8_F2_SS_DIS_SHIFT = common dso_local global i32 0, align 4
@GEN8_EU_DISABLE0 = common dso_local global i32 0, align 4
@GEN8_EU_DIS0_S0_MASK = common dso_local global i32 0, align 4
@GEN8_EU_DIS0_S1_SHIFT = common dso_local global i32 0, align 4
@GEN8_EU_DISABLE1 = common dso_local global i32 0, align 4
@GEN8_EU_DIS1_S1_MASK = common dso_local global i32 0, align 4
@GEN8_EU_DIS1_S2_SHIFT = common dso_local global i32 0, align 4
@GEN8_EU_DISABLE2 = common dso_local global i32 0, align 4
@GEN8_EU_DIS2_S2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @broadwell_sseu_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @broadwell_sseu_info_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.sseu_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.sseu_dev_info* %13, %struct.sseu_dev_info** %3, align 8
  %14 = load i32, i32* @GEN8_FUSE2, align 4
  %15 = call i32 @I915_READ(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GEN8_F2_S_ENA_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @GEN8_F2_S_ENA_SHIFT, align 4
  %20 = ashr i32 %18, %19
  %21 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %22 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %23, i32 0, i32 1
  store i32 3, i32* %24, align 4
  %25 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %26 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %25, i32 0, i32 2
  store i32 3, i32* %26, align 8
  %27 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %28 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %27, i32 0, i32 3
  store i32 8, i32* %28, align 4
  %29 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %30 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @GENMASK(i32 %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GEN8_F2_SS_DIS_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @GEN8_F2_SS_DIS_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @GEN8_EU_DISABLE0, align 4
  %43 = call i32 @I915_READ(i32 %42)
  %44 = load i32, i32* @GEN8_EU_DIS0_S0_MASK, align 4
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @GEN8_EU_DISABLE0, align 4
  %48 = call i32 @I915_READ(i32 %47)
  %49 = load i32, i32* @GEN8_EU_DIS0_S1_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load i32, i32* @GEN8_EU_DISABLE1, align 4
  %52 = call i32 @I915_READ(i32 %51)
  %53 = load i32, i32* @GEN8_EU_DIS1_S1_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @GEN8_EU_DIS0_S1_SHIFT, align 4
  %56 = sub nsw i32 32, %55
  %57 = shl i32 %54, %56
  %58 = or i32 %50, %57
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @GEN8_EU_DISABLE1, align 4
  %61 = call i32 @I915_READ(i32 %60)
  %62 = load i32, i32* @GEN8_EU_DIS1_S2_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* @GEN8_EU_DISABLE2, align 4
  %65 = call i32 @I915_READ(i32 %64)
  %66 = load i32, i32* @GEN8_EU_DIS2_S2_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @GEN8_EU_DIS1_S2_SHIFT, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 %67, %69
  %71 = or i32 %63, %70
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %156, %1
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %76 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %159

79:                                               ; preds = %73
  %80 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %81 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %156

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %91 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %152, %88
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %99 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %155

102:                                              ; preds = %96
  %103 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %104 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @BIT(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %102
  br label %152

115:                                              ; preds = %102
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %122 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = ashr i32 %119, %124
  store i32 %125, i32* %9, align 4
  %126 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %9, align 4
  %130 = xor i32 %129, -1
  %131 = call i32 @sseu_set_eus(%struct.sseu_dev_info* %126, i32 %127, i32 %128, i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @hweight8(i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %135 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %136, %137
  %139 = icmp eq i32 %138, 7
  br i1 %139, label %140, label %151

140:                                              ; preds = %115
  %141 = load i32, i32* %5, align 4
  %142 = shl i32 1, %141
  %143 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %144 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %140, %115
  br label %152

152:                                              ; preds = %151, %114
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %96

155:                                              ; preds = %96
  br label %156

156:                                              ; preds = %155, %87
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %73

159:                                              ; preds = %73
  %160 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %161 = call i32 @compute_eu_total(%struct.sseu_dev_info* %160)
  %162 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %163 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %162, i32 0, i32 9
  store i32 %161, i32* %163, align 8
  %164 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %165 = call i64 @intel_sseu_subslice_total(%struct.sseu_dev_info* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %159
  %168 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %169 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %172 = call i64 @intel_sseu_subslice_total(%struct.sseu_dev_info* %171)
  %173 = call i32 @DIV_ROUND_UP(i32 %170, i64 %172)
  br label %175

174:                                              ; preds = %159
  br label %175

175:                                              ; preds = %174, %167
  %176 = phi i32 [ %173, %167 ], [ 0, %174 ]
  %177 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %178 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %177, i32 0, i32 10
  store i32 %176, i32* %178, align 4
  %179 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %180 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @hweight8(i32 %181)
  %183 = icmp sgt i32 %182, 1
  %184 = zext i1 %183 to i32
  %185 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %186 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %185, i32 0, i32 6
  store i32 %184, i32* %186, align 8
  %187 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %188 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %187, i32 0, i32 8
  store i64 0, i64* %188, align 8
  %189 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %3, align 8
  %190 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %189, i32 0, i32 7
  store i64 0, i64* %190, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @sseu_set_eus(%struct.sseu_dev_info*, i32, i32, i32) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @compute_eu_total(%struct.sseu_dev_info*) #1

declare dso_local i64 @intel_sseu_subslice_total(%struct.sseu_dev_info*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
