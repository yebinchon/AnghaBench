; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_restore_gunit_s0ix_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_restore_gunit_s0ix_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.vlv_s0ix_state* }
%struct.vlv_s0ix_state = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GEN7_WR_WATERMARK = common dso_local global i32 0, align 4
@GEN7_GFX_PRIO_CTRL = common dso_local global i32 0, align 4
@ARB_MODE = common dso_local global i32 0, align 4
@GEN7_GFX_PEND_TLB0 = common dso_local global i32 0, align 4
@GEN7_GFX_PEND_TLB1 = common dso_local global i32 0, align 4
@GEN7_MEDIA_MAX_REQ_COUNT = common dso_local global i32 0, align 4
@GEN7_GFX_MAX_REQ_COUNT = common dso_local global i32 0, align 4
@RENDER_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@GAM_ECOCHK = common dso_local global i32 0, align 4
@BSD_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@BLT_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@GEN7_TLB_RD_ADDR = common dso_local global i32 0, align 4
@VLV_G3DCTL = common dso_local global i32 0, align 4
@VLV_GSCKGCTL = common dso_local global i32 0, align 4
@GEN6_MBCTL = common dso_local global i32 0, align 4
@GEN6_UCGCTL1 = common dso_local global i32 0, align 4
@GEN6_UCGCTL3 = common dso_local global i32 0, align 4
@GEN6_RCGCTL1 = common dso_local global i32 0, align 4
@GEN6_RCGCTL2 = common dso_local global i32 0, align 4
@GEN6_RSTCTL = common dso_local global i32 0, align 4
@GEN7_MISCCPCTL = common dso_local global i32 0, align 4
@GEN6_GFXPAUSE = common dso_local global i32 0, align 4
@GEN6_RPDEUHWTC = common dso_local global i32 0, align 4
@GEN6_RPDEUC = common dso_local global i32 0, align 4
@ECOBUS = common dso_local global i32 0, align 4
@VLV_PWRDWNUPCTL = common dso_local global i32 0, align 4
@GEN6_RP_DOWN_TIMEOUT = common dso_local global i32 0, align 4
@GEN6_RPDEUCSW = common dso_local global i32 0, align 4
@GEN6_RCUBMABDTMR = common dso_local global i32 0, align 4
@VLV_RCEDATA = common dso_local global i32 0, align 4
@VLV_SPAREG2H = common dso_local global i32 0, align 4
@GTIMR = common dso_local global i32 0, align 4
@GTIER = common dso_local global i32 0, align 4
@GEN6_PMIMR = common dso_local global i32 0, align 4
@GEN6_PMIER = common dso_local global i32 0, align 4
@TILECTL = common dso_local global i32 0, align 4
@GTFIFOCTL = common dso_local global i32 0, align 4
@VLV_GTLC_WAKE_CTRL = common dso_local global i32 0, align 4
@VLV_GTLC_ALLOWWAKEREQ = common dso_local global i32 0, align 4
@VLV_GTLC_SURVIVABILITY_REG = common dso_local global i32 0, align 4
@VLV_GFX_CLK_FORCE_ON_BIT = common dso_local global i32 0, align 4
@VLV_PMWGICZ = common dso_local global i32 0, align 4
@VLV_GU_CTL0 = common dso_local global i32 0, align 4
@VLV_GU_CTL1 = common dso_local global i32 0, align 4
@VLV_PCBR = common dso_local global i32 0, align 4
@VLV_GUNIT_CLOCK_GATE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_restore_gunit_s0ix_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_restore_gunit_s0ix_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.vlv_s0ix_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %7, align 8
  store %struct.vlv_s0ix_state* %8, %struct.vlv_s0ix_state** %3, align 8
  %9 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %10 = icmp ne %struct.vlv_s0ix_state* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %300

12:                                               ; preds = %1
  %13 = load i32, i32* @GEN7_WR_WATERMARK, align 4
  %14 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %15 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @I915_WRITE(i32 %13, i32 %16)
  %18 = load i32, i32* @GEN7_GFX_PRIO_CTRL, align 4
  %19 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %20 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @I915_WRITE(i32 %18, i32 %21)
  %23 = load i32, i32* @ARB_MODE, align 4
  %24 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %25 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, -65536
  %28 = call i32 @I915_WRITE(i32 %23, i32 %27)
  %29 = load i32, i32* @GEN7_GFX_PEND_TLB0, align 4
  %30 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %31 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @I915_WRITE(i32 %29, i32 %32)
  %34 = load i32, i32* @GEN7_GFX_PEND_TLB1, align 4
  %35 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %36 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @I915_WRITE(i32 %34, i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %57, %12
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %42 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @GEN7_LRA_LIMITS(i32 %47)
  %49 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %50 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @I915_WRITE(i32 %48, i32 %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %39

60:                                               ; preds = %39
  %61 = load i32, i32* @GEN7_MEDIA_MAX_REQ_COUNT, align 4
  %62 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %63 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @I915_WRITE(i32 %61, i32 %64)
  %66 = load i32, i32* @GEN7_GFX_MAX_REQ_COUNT, align 4
  %67 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %68 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @I915_WRITE(i32 %66, i32 %69)
  %71 = load i32, i32* @RENDER_HWS_PGA_GEN7, align 4
  %72 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %73 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @I915_WRITE(i32 %71, i32 %74)
  %76 = load i32, i32* @GAM_ECOCHK, align 4
  %77 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %78 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @I915_WRITE(i32 %76, i32 %79)
  %81 = load i32, i32* @BSD_HWS_PGA_GEN7, align 4
  %82 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %83 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @I915_WRITE(i32 %81, i32 %84)
  %86 = load i32, i32* @BLT_HWS_PGA_GEN7, align 4
  %87 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %88 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @I915_WRITE(i32 %86, i32 %89)
  %91 = load i32, i32* @GEN7_TLB_RD_ADDR, align 4
  %92 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %93 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @I915_WRITE(i32 %91, i32 %94)
  %96 = load i32, i32* @VLV_G3DCTL, align 4
  %97 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %98 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @I915_WRITE(i32 %96, i32 %99)
  %101 = load i32, i32* @VLV_GSCKGCTL, align 4
  %102 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %103 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %102, i32 0, i32 14
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @I915_WRITE(i32 %101, i32 %104)
  %106 = load i32, i32* @GEN6_MBCTL, align 4
  %107 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %108 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %107, i32 0, i32 15
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @I915_WRITE(i32 %106, i32 %109)
  %111 = load i32, i32* @GEN6_UCGCTL1, align 4
  %112 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %113 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %112, i32 0, i32 16
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @I915_WRITE(i32 %111, i32 %114)
  %116 = load i32, i32* @GEN6_UCGCTL3, align 4
  %117 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %118 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %117, i32 0, i32 17
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @I915_WRITE(i32 %116, i32 %119)
  %121 = load i32, i32* @GEN6_RCGCTL1, align 4
  %122 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %123 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %122, i32 0, i32 18
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @I915_WRITE(i32 %121, i32 %124)
  %126 = load i32, i32* @GEN6_RCGCTL2, align 4
  %127 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %128 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %127, i32 0, i32 19
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @I915_WRITE(i32 %126, i32 %129)
  %131 = load i32, i32* @GEN6_RSTCTL, align 4
  %132 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %133 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %132, i32 0, i32 20
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @I915_WRITE(i32 %131, i32 %134)
  %136 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %137 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %138 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %137, i32 0, i32 21
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @I915_WRITE(i32 %136, i32 %139)
  %141 = load i32, i32* @GEN6_GFXPAUSE, align 4
  %142 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %143 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %142, i32 0, i32 22
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @I915_WRITE(i32 %141, i32 %144)
  %146 = load i32, i32* @GEN6_RPDEUHWTC, align 4
  %147 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %148 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %147, i32 0, i32 23
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @I915_WRITE(i32 %146, i32 %149)
  %151 = load i32, i32* @GEN6_RPDEUC, align 4
  %152 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %153 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %152, i32 0, i32 24
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @I915_WRITE(i32 %151, i32 %154)
  %156 = load i32, i32* @ECOBUS, align 4
  %157 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %158 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %157, i32 0, i32 25
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @I915_WRITE(i32 %156, i32 %159)
  %161 = load i32, i32* @VLV_PWRDWNUPCTL, align 4
  %162 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %163 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %162, i32 0, i32 26
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @I915_WRITE(i32 %161, i32 %164)
  %166 = load i32, i32* @GEN6_RP_DOWN_TIMEOUT, align 4
  %167 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %168 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %167, i32 0, i32 27
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @I915_WRITE(i32 %166, i32 %169)
  %171 = load i32, i32* @GEN6_RPDEUCSW, align 4
  %172 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %173 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %172, i32 0, i32 28
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @I915_WRITE(i32 %171, i32 %174)
  %176 = load i32, i32* @GEN6_RCUBMABDTMR, align 4
  %177 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %178 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %177, i32 0, i32 29
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @I915_WRITE(i32 %176, i32 %179)
  %181 = load i32, i32* @VLV_RCEDATA, align 4
  %182 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %183 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %182, i32 0, i32 30
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @I915_WRITE(i32 %181, i32 %184)
  %186 = load i32, i32* @VLV_SPAREG2H, align 4
  %187 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %188 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %187, i32 0, i32 31
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @I915_WRITE(i32 %186, i32 %189)
  %191 = load i32, i32* @GTIMR, align 4
  %192 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %193 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %192, i32 0, i32 32
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @I915_WRITE(i32 %191, i32 %194)
  %196 = load i32, i32* @GTIER, align 4
  %197 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %198 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %197, i32 0, i32 33
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @I915_WRITE(i32 %196, i32 %199)
  %201 = load i32, i32* @GEN6_PMIMR, align 4
  %202 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %203 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %202, i32 0, i32 34
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @I915_WRITE(i32 %201, i32 %204)
  %206 = load i32, i32* @GEN6_PMIER, align 4
  %207 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %208 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %207, i32 0, i32 35
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @I915_WRITE(i32 %206, i32 %209)
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %229, %60
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %214 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %213, i32 0, i32 36
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @ARRAY_SIZE(i32* %215)
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %211
  %219 = load i32, i32* %5, align 4
  %220 = call i32 @GEN7_GT_SCRATCH(i32 %219)
  %221 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %222 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %221, i32 0, i32 36
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @I915_WRITE(i32 %220, i32 %227)
  br label %229

229:                                              ; preds = %218
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %211

232:                                              ; preds = %211
  %233 = load i32, i32* @TILECTL, align 4
  %234 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %235 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %234, i32 0, i32 37
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @I915_WRITE(i32 %233, i32 %236)
  %238 = load i32, i32* @GTFIFOCTL, align 4
  %239 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %240 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %239, i32 0, i32 38
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @I915_WRITE(i32 %238, i32 %241)
  %243 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %244 = call i32 @I915_READ(i32 %243)
  store i32 %244, i32* %4, align 4
  %245 = load i32, i32* @VLV_GTLC_ALLOWWAKEREQ, align 4
  %246 = load i32, i32* %4, align 4
  %247 = and i32 %246, %245
  store i32 %247, i32* %4, align 4
  %248 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %249 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %248, i32 0, i32 39
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @VLV_GTLC_ALLOWWAKEREQ, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %250, %252
  %254 = load i32, i32* %4, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %4, align 4
  %256 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %257 = load i32, i32* %4, align 4
  %258 = call i32 @I915_WRITE(i32 %256, i32 %257)
  %259 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %260 = call i32 @I915_READ(i32 %259)
  store i32 %260, i32* %4, align 4
  %261 = load i32, i32* @VLV_GFX_CLK_FORCE_ON_BIT, align 4
  %262 = load i32, i32* %4, align 4
  %263 = and i32 %262, %261
  store i32 %263, i32* %4, align 4
  %264 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %265 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %264, i32 0, i32 40
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @VLV_GFX_CLK_FORCE_ON_BIT, align 4
  %268 = xor i32 %267, -1
  %269 = and i32 %266, %268
  %270 = load i32, i32* %4, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %273 = load i32, i32* %4, align 4
  %274 = call i32 @I915_WRITE(i32 %272, i32 %273)
  %275 = load i32, i32* @VLV_PMWGICZ, align 4
  %276 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %277 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %276, i32 0, i32 41
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @I915_WRITE(i32 %275, i32 %278)
  %280 = load i32, i32* @VLV_GU_CTL0, align 4
  %281 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %282 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %281, i32 0, i32 42
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @I915_WRITE(i32 %280, i32 %283)
  %285 = load i32, i32* @VLV_GU_CTL1, align 4
  %286 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %287 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %286, i32 0, i32 43
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @I915_WRITE(i32 %285, i32 %288)
  %290 = load i32, i32* @VLV_PCBR, align 4
  %291 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %292 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %291, i32 0, i32 44
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @I915_WRITE(i32 %290, i32 %293)
  %295 = load i32, i32* @VLV_GUNIT_CLOCK_GATE2, align 4
  %296 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %297 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %296, i32 0, i32 45
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @I915_WRITE(i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %232, %11
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @GEN7_LRA_LIMITS(i32) #1

declare dso_local i32 @GEN7_GT_SCRATCH(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
