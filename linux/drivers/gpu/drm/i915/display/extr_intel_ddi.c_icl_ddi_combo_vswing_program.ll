; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_ddi_combo_vswing_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_ddi_combo_vswing_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.cnl_ddi_buf_trans = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"DDI translation not found for level %d. Using %d instead.\00", align 1
@SCALING_MODE_SEL_MASK = common dso_local global i64 0, align 8
@RTERM_SELECT_MASK = common dso_local global i64 0, align 8
@TAP2_DISABLE = common dso_local global i64 0, align 8
@TAP3_DISABLE = common dso_local global i64 0, align 8
@SWING_SEL_LOWER_MASK = common dso_local global i64 0, align 8
@SWING_SEL_UPPER_MASK = common dso_local global i64 0, align 8
@RCOMP_SCALAR_MASK = common dso_local global i64 0, align 8
@POST_CURSOR_1_MASK = common dso_local global i64 0, align 8
@POST_CURSOR_2_MASK = common dso_local global i64 0, align 8
@CURSOR_COEFF_MASK = common dso_local global i64 0, align 8
@N_SCALAR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i64, i32, i32, i32)* @icl_ddi_combo_vswing_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_ddi_combo_vswing_program(%struct.drm_i915_private* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cnl_ddi_buf_trans*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.cnl_ddi_buf_trans* null, %struct.cnl_ddi_buf_trans** %11, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call %struct.cnl_ddi_buf_trans* @icl_get_combo_buf_trans(%struct.drm_i915_private* %15, i32 %16, i32 %17, i64* %12)
  store %struct.cnl_ddi_buf_trans* %18, %struct.cnl_ddi_buf_trans** %11, align 8
  %19 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %20 = icmp ne %struct.cnl_ddi_buf_trans* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %162

22:                                               ; preds = %5
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub i64 %28, 1
  %30 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29)
  %31 = load i64, i64* %12, align 8
  %32 = sub i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ICL_PORT_TX_DW5_LN0(i32 %34)
  %36 = call i64 @I915_READ(i32 %35)
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* @SCALING_MODE_SEL_MASK, align 8
  %38 = load i64, i64* @RTERM_SELECT_MASK, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* @TAP2_DISABLE, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @TAP3_DISABLE, align 8
  %43 = or i64 %41, %42
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %13, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = call i64 @SCALING_MODE_SEL(i32 2)
  %48 = load i64, i64* %13, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %13, align 8
  %50 = call i64 @RTERM_SELECT(i32 6)
  %51 = load i64, i64* %13, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %13, align 8
  %53 = load i64, i64* @TAP3_DISABLE, align 8
  %54 = load i64, i64* %13, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ICL_PORT_TX_DW5_GRP(i32 %56)
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @I915_WRITE(i32 %57, i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ICL_PORT_TX_DW2_LN0(i32 %60)
  %62 = call i64 @I915_READ(i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* @SWING_SEL_LOWER_MASK, align 8
  %64 = load i64, i64* @SWING_SEL_UPPER_MASK, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @RCOMP_SCALAR_MASK, align 8
  %67 = or i64 %65, %66
  %68 = xor i64 %67, -1
  %69 = load i64, i64* %13, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %13, align 8
  %71 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %71, i64 %72
  %74 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @SWING_SEL_UPPER(i32 %75)
  %77 = load i64, i64* %13, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %13, align 8
  %79 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %79, i64 %80
  %82 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @SWING_SEL_LOWER(i32 %83)
  %85 = load i64, i64* %13, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %13, align 8
  %87 = call i64 @RCOMP_SCALAR(i32 152)
  %88 = load i64, i64* %13, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %13, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ICL_PORT_TX_DW2_GRP(i32 %90)
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @I915_WRITE(i32 %91, i64 %92)
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %139, %33
  %95 = load i32, i32* %14, align 4
  %96 = icmp sle i32 %95, 3
  br i1 %96, label %97, label %142

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @ICL_PORT_TX_DW4_LN(i32 %98, i32 %99)
  %101 = call i64 @I915_READ(i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* @POST_CURSOR_1_MASK, align 8
  %103 = load i64, i64* @POST_CURSOR_2_MASK, align 8
  %104 = or i64 %102, %103
  %105 = load i64, i64* @CURSOR_COEFF_MASK, align 8
  %106 = or i64 %104, %105
  %107 = xor i64 %106, -1
  %108 = load i64, i64* %13, align 8
  %109 = and i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %110, i64 %111
  %113 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @POST_CURSOR_1(i32 %114)
  %116 = load i64, i64* %13, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %13, align 8
  %118 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %118, i64 %119
  %121 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @POST_CURSOR_2(i32 %122)
  %124 = load i64, i64* %13, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %13, align 8
  %126 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %127 = load i64, i64* %7, align 8
  %128 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %126, i64 %127
  %129 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @CURSOR_COEFF(i32 %130)
  %132 = load i64, i64* %13, align 8
  %133 = or i64 %132, %131
  store i64 %133, i64* %13, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @ICL_PORT_TX_DW4_LN(i32 %134, i32 %135)
  %137 = load i64, i64* %13, align 8
  %138 = call i32 @I915_WRITE(i32 %136, i64 %137)
  br label %139

139:                                              ; preds = %97
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %94

142:                                              ; preds = %94
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @ICL_PORT_TX_DW7_LN0(i32 %143)
  %145 = call i64 @I915_READ(i32 %144)
  store i64 %145, i64* %13, align 8
  %146 = load i64, i64* @N_SCALAR_MASK, align 8
  %147 = xor i64 %146, -1
  %148 = load i64, i64* %13, align 8
  %149 = and i64 %148, %147
  store i64 %149, i64* %13, align 8
  %150 = load %struct.cnl_ddi_buf_trans*, %struct.cnl_ddi_buf_trans** %11, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %150, i64 %151
  %153 = getelementptr inbounds %struct.cnl_ddi_buf_trans, %struct.cnl_ddi_buf_trans* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @N_SCALAR(i32 %154)
  %156 = load i64, i64* %13, align 8
  %157 = or i64 %156, %155
  store i64 %157, i64* %13, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @ICL_PORT_TX_DW7_GRP(i32 %158)
  %160 = load i64, i64* %13, align 8
  %161 = call i32 @I915_WRITE(i32 %159, i64 %160)
  br label %162

162:                                              ; preds = %142, %21
  ret void
}

declare dso_local %struct.cnl_ddi_buf_trans* @icl_get_combo_buf_trans(%struct.drm_i915_private*, i32, i32, i64*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i64) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW5_LN0(i32) #1

declare dso_local i64 @SCALING_MODE_SEL(i32) #1

declare dso_local i64 @RTERM_SELECT(i32) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

declare dso_local i32 @ICL_PORT_TX_DW5_GRP(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW2_LN0(i32) #1

declare dso_local i64 @SWING_SEL_UPPER(i32) #1

declare dso_local i64 @SWING_SEL_LOWER(i32) #1

declare dso_local i64 @RCOMP_SCALAR(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW2_GRP(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW4_LN(i32, i32) #1

declare dso_local i64 @POST_CURSOR_1(i32) #1

declare dso_local i64 @POST_CURSOR_2(i32) #1

declare dso_local i64 @CURSOR_COEFF(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW7_LN0(i32) #1

declare dso_local i64 @N_SCALAR(i32) #1

declare dso_local i32 @ICL_PORT_TX_DW7_GRP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
