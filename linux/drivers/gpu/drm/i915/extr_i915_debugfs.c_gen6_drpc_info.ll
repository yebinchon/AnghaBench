; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_gen6_drpc_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_gen6_drpc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32 }

@GEN6_GT_CORE_STATUS = common dso_local global i32 0, align 4
@GEN6_RC_CONTROL = common dso_local global i32 0, align 4
@GEN9_PG_ENABLE = common dso_local global i32 0, align 4
@GEN9_PWRGT_DOMAIN_STATUS = common dso_local global i32 0, align 4
@GEN6_PCODE_READ_RC6VIDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"RC1e Enabled: %s\0A\00", align 1
@GEN6_RC_CTL_RC1e_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"RC6 Enabled: %s\0A\00", align 1
@GEN6_RC_CTL_RC6_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Render Well Gating Enabled: %s\0A\00", align 1
@GEN9_RENDER_PG_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Media Well Gating Enabled: %s\0A\00", align 1
@GEN9_MEDIA_PG_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Deep RC6 Enabled: %s\0A\00", align 1
@GEN6_RC_CTL_RC6p_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Deepest RC6 Enabled: %s\0A\00", align 1
@GEN6_RC_CTL_RC6pp_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Current RC state: \00", align 1
@GEN6_RCn_MASK = common dso_local global i32 0, align 4
@GEN6_CORE_CPD_STATE_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"Core Power Down\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"on\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"RC3\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"RC6\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"RC7\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Core Power Down: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Render Power Well: %s\0A\00", align 1
@GEN9_PWRGT_RENDER_STATUS_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Media Power Well: %s\0A\00", align 1
@GEN9_PWRGT_MEDIA_STATUS_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"RC6 \22Locked to RPn\22 residency since boot:\00", align 1
@GEN6_GT_GFX_RC6_LOCKED = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [26 x i8] c"RC6 residency since boot:\00", align 1
@GEN6_GT_GFX_RC6 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [27 x i8] c"RC6+ residency since boot:\00", align 1
@GEN6_GT_GFX_RC6p = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"RC6++ residency since boot:\00", align 1
@GEN6_GT_GFX_RC6pp = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"RC6   voltage: %dmV\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"RC6+  voltage: %dmV\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"RC6++ voltage: %dmV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*)* @gen6_drpc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen6_drpc_info(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.drm_i915_private* @node_to_i915(i32 %11)
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @GEN6_GT_CORE_STATUS, align 4
  %14 = call i32 @I915_READ_FW(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @GEN6_GT_CORE_STATUS, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @trace_i915_reg_rw(i32 0, i32 %15, i32 %16, i32 4, i32 1)
  %18 = load i32, i32* @GEN6_RC_CONTROL, align 4
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i32 @INTEL_GEN(%struct.drm_i915_private* %20)
  %22 = icmp sge i32 %21, 9
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @GEN9_PG_ENABLE, align 4
  %25 = call i32 @I915_READ(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @GEN9_PWRGT_DOMAIN_STATUS, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %30 = call i32 @INTEL_GEN(%struct.drm_i915_private* %29)
  %31 = icmp sle i32 %30, 7
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %34 = load i32, i32* @GEN6_PCODE_READ_RC6VIDS, align 4
  %35 = call i32 @sandybridge_pcode_read(%struct.drm_i915_private* %33, i32 %34, i32* %6, i32* null)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GEN6_RC_CTL_RC1e_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = call i8* @yesno(i32 %40)
  %42 = call i32 @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @GEN6_RC_CTL_RC6_ENABLE, align 4
  %46 = and i32 %44, %45
  %47 = call i8* @yesno(i32 %46)
  %48 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = call i32 @INTEL_GEN(%struct.drm_i915_private* %49)
  %51 = icmp sge i32 %50, 9
  br i1 %51, label %52, label %65

52:                                               ; preds = %36
  %53 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @GEN9_RENDER_PG_ENABLE, align 4
  %56 = and i32 %54, %55
  %57 = call i8* @yesno(i32 %56)
  %58 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GEN9_MEDIA_PG_ENABLE, align 4
  %62 = and i32 %60, %61
  %63 = call i8* @yesno(i32 %62)
  %64 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %52, %36
  %66 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @GEN6_RC_CTL_RC6p_ENABLE, align 4
  %69 = and i32 %67, %68
  %70 = call i8* @yesno(i32 %69)
  %71 = call i32 @seq_printf(%struct.seq_file* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %70)
  %72 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @GEN6_RC_CTL_RC6pp_ENABLE, align 4
  %75 = and i32 %73, %74
  %76 = call i8* @yesno(i32 %75)
  %77 = call i32 @seq_printf(%struct.seq_file* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %79 = call i32 @seq_puts(%struct.seq_file* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @GEN6_RCn_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %104 [
    i32 131, label %83
    i32 130, label %95
    i32 129, label %98
    i32 128, label %101
  ]

83:                                               ; preds = %65
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @GEN6_CORE_CPD_STATE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %90 = call i32 @seq_puts(%struct.seq_file* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %94

91:                                               ; preds = %83
  %92 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  br label %107

95:                                               ; preds = %65
  %96 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %107

98:                                               ; preds = %65
  %99 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %100 = call i32 @seq_puts(%struct.seq_file* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %107

101:                                              ; preds = %65
  %102 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %103 = call i32 @seq_puts(%struct.seq_file* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %107

104:                                              ; preds = %65
  %105 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %106 = call i32 @seq_puts(%struct.seq_file* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101, %98, %95, %94
  %108 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @GEN6_CORE_CPD_STATE_MASK, align 4
  %111 = and i32 %109, %110
  %112 = call i8* @yesno(i32 %111)
  %113 = call i32 @seq_printf(%struct.seq_file* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %115 = call i32 @INTEL_GEN(%struct.drm_i915_private* %114)
  %116 = icmp sge i32 %115, 9
  br i1 %116, label %117, label %134

117:                                              ; preds = %107
  %118 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @GEN9_PWRGT_RENDER_STATUS_MASK, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %125 = call i32 @seq_printf(%struct.seq_file* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %124)
  %126 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @GEN9_PWRGT_MEDIA_STATUS_MASK, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)
  %133 = call i32 @seq_printf(%struct.seq_file* %126, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %117, %107
  %135 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %136 = load i32, i32* @GEN6_GT_GFX_RC6_LOCKED, align 4
  %137 = call i32 @print_rc6_res(%struct.seq_file* %135, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %139 = load i32, i32* @GEN6_GT_GFX_RC6, align 4
  %140 = call i32 @print_rc6_res(%struct.seq_file* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %139)
  %141 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %142 = load i32, i32* @GEN6_GT_GFX_RC6p, align 4
  %143 = call i32 @print_rc6_res(%struct.seq_file* %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %142)
  %144 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %145 = load i32, i32* @GEN6_GT_GFX_RC6pp, align 4
  %146 = call i32 @print_rc6_res(%struct.seq_file* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %145)
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %148 = call i32 @INTEL_GEN(%struct.drm_i915_private* %147)
  %149 = icmp sle i32 %148, 7
  br i1 %149, label %150, label %169

150:                                              ; preds = %134
  %151 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %152 = load i32, i32* %6, align 4
  %153 = ashr i32 %152, 0
  %154 = and i32 %153, 255
  %155 = call i8* @GEN6_DECODE_RC6_VID(i32 %154)
  %156 = call i32 @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* %155)
  %157 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %158 = load i32, i32* %6, align 4
  %159 = ashr i32 %158, 8
  %160 = and i32 %159, 255
  %161 = call i8* @GEN6_DECODE_RC6_VID(i32 %160)
  %162 = call i32 @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* %161)
  %163 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %164 = load i32, i32* %6, align 4
  %165 = ashr i32 %164, 16
  %166 = and i32 %165, 255
  %167 = call i8* @GEN6_DECODE_RC6_VID(i32 %166)
  %168 = call i32 @seq_printf(%struct.seq_file* %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %150, %134
  %170 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %171 = call i32 @i915_forcewake_domains(%struct.seq_file* %170, i32* null)
  ret i32 %171
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local i32 @I915_READ_FW(i32) #1

declare dso_local i32 @trace_i915_reg_rw(i32, i32, i32, i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @sandybridge_pcode_read(%struct.drm_i915_private*, i32, i32*, i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

declare dso_local i8* @yesno(i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @print_rc6_res(%struct.seq_file*, i8*, i32) #1

declare dso_local i8* @GEN6_DECODE_RC6_VID(i32) #1

declare dso_local i32 @i915_forcewake_domains(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
