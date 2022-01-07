; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_vswing_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_cnl_ddi_vswing_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.cnl_ddi_buf_trans = type { i32, i32, i32, i32, i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@SCALING_MODE_SEL_MASK = common dso_local global i32 0, align 4
@SWING_SEL_LOWER_MASK = common dso_local global i32 0, align 4
@SWING_SEL_UPPER_MASK = common dso_local global i32 0, align 4
@RCOMP_SCALAR_MASK = common dso_local global i32 0, align 4
@POST_CURSOR_1_MASK = common dso_local global i32 0, align 4
@POST_CURSOR_2_MASK = common dso_local global i32 0, align 4
@CURSOR_COEFF_MASK = common dso_local global i32 0, align 4
@RTERM_SELECT_MASK = common dso_local global i32 0, align 4
@TAP3_DISABLE = common dso_local global i32 0, align 4
@N_SCALAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @cnl_ddi_vswing_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_ddi_vswing_program(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.cnl_ddi_buf_trans*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.drm_i915_private* @to_i915(i32 %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %19 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %26 = call %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_hdmi(%struct.drm_i915_private* %25, i32* %10)
  store %struct.cnl_ddi_buf_trans* %26, %struct.cnl_ddi_buf_trans** %8, align 8
  br label %38

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %33 = call %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_edp(%struct.drm_i915_private* %32, i32* %10)
  store %struct.cnl_ddi_buf_trans* %33, %struct.cnl_ddi_buf_trans** %8, align 8
  br label %37

34:                                               ; preds = %27
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %36 = call %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_dp(%struct.drm_i915_private* %35, i32* %10)
  store %struct.cnl_ddi_buf_trans* %36, %struct.cnl_ddi_buf_trans** %8, align 8
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %40 = icmp ne %struct.cnl_ddi_buf_trans* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON_ONCE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %196

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sge i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON_ONCE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @CNL_PORT_TX_DW5_LN0(i32 %57)
  %59 = call i32 @I915_READ(i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @SCALING_MODE_SEL_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = call i32 @SCALING_MODE_SEL(i32 2)
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CNL_PORT_TX_DW5_GRP(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @I915_WRITE(i32 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @CNL_PORT_TX_DW2_LN0(i32 %71)
  %73 = call i32 @I915_READ(i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* @SWING_SEL_LOWER_MASK, align 4
  %75 = load i32, i32* @SWING_SEL_UPPER_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RCOMP_SCALAR_MASK, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %82, i64 %84
  %86 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @SWING_SEL_UPPER(i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %91, i64 %93
  %95 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @SWING_SEL_LOWER(i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  %100 = call i32 @RCOMP_SCALAR(i32 152)
  %101 = load i32, i32* %12, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @CNL_PORT_TX_DW2_GRP(i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @I915_WRITE(i32 %104, i32 %105)
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %155, %56
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %158

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @CNL_PORT_TX_DW4_LN(i32 %111, i32 %112)
  %114 = call i32 @I915_READ(i32 %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* @POST_CURSOR_1_MASK, align 4
  %116 = load i32, i32* @POST_CURSOR_2_MASK, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CURSOR_COEFF_MASK, align 4
  %119 = or i32 %117, %118
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %12, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %12, align 4
  %123 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %123, i64 %125
  %127 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @POST_CURSOR_1(i32 %128)
  %130 = load i32, i32* %12, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %12, align 4
  %132 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %132, i64 %134
  %136 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @POST_CURSOR_2(i32 %137)
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %141, i64 %143
  %145 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @CURSOR_COEFF(i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @CNL_PORT_TX_DW4_LN(i32 %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @I915_WRITE(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %110
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %107

158:                                              ; preds = %107
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @CNL_PORT_TX_DW5_LN0(i32 %159)
  %161 = call i32 @I915_READ(i32 %160)
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @RTERM_SELECT_MASK, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %12, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %12, align 4
  %166 = call i32 @RTERM_SELECT(i32 6)
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* @TAP3_DISABLE, align 4
  %170 = load i32, i32* %12, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @CNL_PORT_TX_DW5_GRP(i32 %172)
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @I915_WRITE(i32 %173, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @CNL_PORT_TX_DW7_LN0(i32 %176)
  %178 = call i32 @I915_READ(i32 %177)
  store i32 %178, i32* %12, align 4
  %179 = load i32, i32* @N_SCALAR_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %12, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %8, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %183, i64 %185
  %187 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @N_SCALAR(i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @CNL_PORT_TX_DW7_GRP(i32 %192)
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @I915_WRITE(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %158, %45
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_edp(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.cnl_ddi_buf_trans* @cnl_get_buf_trans_dp(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW5_LN0(i32) #1

declare dso_local i32 @SCALING_MODE_SEL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @CNL_PORT_TX_DW5_GRP(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW2_LN0(i32) #1

declare dso_local i32 @SWING_SEL_UPPER(i32) #1

declare dso_local i32 @SWING_SEL_LOWER(i32) #1

declare dso_local i32 @RCOMP_SCALAR(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW2_GRP(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW4_LN(i32, i32) #1

declare dso_local i32 @POST_CURSOR_1(i32) #1

declare dso_local i32 @POST_CURSOR_2(i32) #1

declare dso_local i32 @CURSOR_COEFF(i32) #1

declare dso_local i32 @RTERM_SELECT(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW7_LN0(i32) #1

declare dso_local i32 @N_SCALAR(i32) #1

declare dso_local i32 @CNL_PORT_TX_DW7_GRP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
