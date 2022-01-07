; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_intel_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.drm_device }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32**, i32 }
%struct.TYPE_6__ = type { %struct.intel_rps }
%struct.intel_rps = type { i32, i32 }
%struct.drm_device = type { i32 }

@gen6_pm_rps_work = common dso_local global i32 0, align 4
@ivybridge_parity_work = common dso_local global i32 0, align 4
@MAX_L3_SLICES = common dso_local global i32 0, align 4
@GUC_INTR_GUC2HOST = common dso_local global i32 0, align 4
@GEN6_PM_RP_UP_EI_EXPIRED = common dso_local global i32 0, align 4
@GEN6_PM_RP_UP_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_PM_RP_DOWN_THRESHOLD = common dso_local global i32 0, align 4
@GEN6_PM_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC = common dso_local global i32 0, align 4
@HPD_STORM_DEFAULT_THRESHOLD = common dso_local global i32 0, align 4
@i915_hpd_irq_setup = common dso_local global i32 0, align 4
@mcc_hpd_irq_setup = common dso_local global i32 0, align 4
@gen11_hpd_irq_setup = common dso_local global i32 0, align 4
@bxt_hpd_irq_setup = common dso_local global i32 0, align 4
@PCH_SPT = common dso_local global i64 0, align 8
@spt_hpd_irq_setup = common dso_local global i32 0, align 4
@ilk_hpd_irq_setup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_irq_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.intel_rps*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 7
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.intel_rps* %10, %struct.intel_rps** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i64 @IS_I945GM(%struct.drm_i915_private* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i32 @i945gm_vblank_work_init(%struct.drm_i915_private* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i32 @intel_hpd_init_work(%struct.drm_i915_private* %18)
  %20 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %21 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %20, i32 0, i32 1
  %22 = load i32, i32* @gen6_pm_rps_work, align 4
  %23 = call i32 @INIT_WORK(i32* %21, i32 %22)
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* @ivybridge_parity_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %41, %17
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @MAX_L3_SLICES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = call i64 @HAS_GT_UC(%struct.drm_i915_private* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %50 = call i32 @INTEL_GEN(%struct.drm_i915_private* %49)
  %51 = icmp slt i32 %50, 11
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @GUC_INTR_GUC2HOST, align 4
  %54 = shl i32 %53, 16
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %48, %44
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %60 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %74

66:                                               ; preds = %58
  %67 = load i32, i32* @GEN6_PM_RP_UP_THRESHOLD, align 4
  %68 = load i32, i32* @GEN6_PM_RP_DOWN_THRESHOLD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @GEN6_PM_RP_DOWN_TIMEOUT, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %62
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = call i32 @INTEL_GEN(%struct.drm_i915_private* %75)
  %77 = icmp sgt i32 %76, 9
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, -65536
  %83 = call i32 @GEM_WARN_ON(i32 %82)
  br label %84

84:                                               ; preds = %78, %74
  %85 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %86 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %88 = call i32 @INTEL_GEN(%struct.drm_i915_private* %87)
  %89 = icmp sle i32 %88, 7
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @GEN6_PM_RP_UP_EI_EXPIRED, align 4
  %92 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %93 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %84
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = call i32 @INTEL_GEN(%struct.drm_i915_private* %97)
  %99 = icmp sge i32 %98, 8
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* @GEN8_PMINTR_DISABLE_REDIRECT_TO_GUC, align 4
  %102 = load %struct.intel_rps*, %struct.intel_rps** %4, align 8
  %103 = getelementptr inbounds %struct.intel_rps, %struct.intel_rps* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %96
  %107 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %108 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %107, i32 0, i32 0
  store i32 1, i32* %108, align 4
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %110 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %112 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %116 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114, %106
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %120 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %119, i32 0, i32 1
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %114
  %122 = load i32, i32* @HPD_STORM_DEFAULT_THRESHOLD, align 4
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %127 = call i32 @HAS_DP_MST(%struct.drm_i915_private* %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %135 = call i64 @HAS_GMCH(%struct.drm_i915_private* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %121
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %139 = call i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load i32, i32* @i915_hpd_irq_setup, align 4
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %141, %137
  br label %193

147:                                              ; preds = %121
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %149 = call i64 @HAS_PCH_MCC(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* @mcc_hpd_irq_setup, align 4
  %153 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %154 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  br label %192

156:                                              ; preds = %147
  %157 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %158 = call i32 @INTEL_GEN(%struct.drm_i915_private* %157)
  %159 = icmp sge i32 %158, 11
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @gen11_hpd_irq_setup, align 4
  %162 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %163 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  br label %191

165:                                              ; preds = %156
  %166 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %167 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* @bxt_hpd_irq_setup, align 4
  %171 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %172 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 8
  br label %190

174:                                              ; preds = %165
  %175 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %176 = call i64 @INTEL_PCH_TYPE(%struct.drm_i915_private* %175)
  %177 = load i64, i64* @PCH_SPT, align 8
  %178 = icmp sge i64 %176, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load i32, i32* @spt_hpd_irq_setup, align 4
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %182 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  br label %189

184:                                              ; preds = %174
  %185 = load i32, i32* @ilk_hpd_irq_setup, align 4
  %186 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %187 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  br label %189

189:                                              ; preds = %184, %179
  br label %190

190:                                              ; preds = %189, %169
  br label %191

191:                                              ; preds = %190, %160
  br label %192

192:                                              ; preds = %191, %151
  br label %193

193:                                              ; preds = %192, %146
  ret void
}

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i32 @i945gm_vblank_work_init(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_hpd_init_work(%struct.drm_i915_private*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i64 @HAS_GT_UC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @GEM_WARN_ON(i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @HAS_DP_MST(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @I915_HAS_HOTPLUG(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_MCC(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
