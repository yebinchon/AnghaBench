; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_save_gunit_s0ix_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_vlv_save_gunit_s0ix_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.vlv_s0ix_state* }
%struct.vlv_s0ix_state = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8*, i8*, i8*, i8*, i8* }

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
@VLV_GTLC_SURVIVABILITY_REG = common dso_local global i32 0, align 4
@VLV_PMWGICZ = common dso_local global i32 0, align 4
@VLV_GU_CTL0 = common dso_local global i32 0, align 4
@VLV_GU_CTL1 = common dso_local global i32 0, align 4
@VLV_PCBR = common dso_local global i32 0, align 4
@VLV_GUNIT_CLOCK_GATE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_save_gunit_s0ix_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_save_gunit_s0ix_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.vlv_s0ix_state*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %6, align 8
  store %struct.vlv_s0ix_state* %7, %struct.vlv_s0ix_state** %3, align 8
  %8 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %9 = icmp ne %struct.vlv_s0ix_state* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %230

11:                                               ; preds = %1
  %12 = load i32, i32* @GEN7_WR_WATERMARK, align 4
  %13 = call i8* @I915_READ(i32 %12)
  %14 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %15 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %14, i32 0, i32 45
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @GEN7_GFX_PRIO_CTRL, align 4
  %17 = call i8* @I915_READ(i32 %16)
  %18 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %19 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %18, i32 0, i32 44
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @ARB_MODE, align 4
  %21 = call i8* @I915_READ(i32 %20)
  %22 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %23 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %22, i32 0, i32 43
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @GEN7_GFX_PEND_TLB0, align 4
  %25 = call i8* @I915_READ(i32 %24)
  %26 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %27 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %26, i32 0, i32 42
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @GEN7_GFX_PEND_TLB1, align 4
  %29 = call i8* @I915_READ(i32 %28)
  %30 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %31 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %30, i32 0, i32 41
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %49, %11
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %35 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %34, i32 0, i32 40
  %36 = load i8**, i8*** %35, align 8
  %37 = call i32 @ARRAY_SIZE(i8** %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @GEN7_LRA_LIMITS(i32 %40)
  %42 = call i8* @I915_READ(i32 %41)
  %43 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %44 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %43, i32 0, i32 40
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %42, i8** %48, align 8
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load i32, i32* @GEN7_MEDIA_MAX_REQ_COUNT, align 4
  %54 = call i8* @I915_READ(i32 %53)
  %55 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %56 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %55, i32 0, i32 39
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @GEN7_GFX_MAX_REQ_COUNT, align 4
  %58 = call i8* @I915_READ(i32 %57)
  %59 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %60 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %59, i32 0, i32 38
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @RENDER_HWS_PGA_GEN7, align 4
  %62 = call i8* @I915_READ(i32 %61)
  %63 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %64 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %63, i32 0, i32 37
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @GAM_ECOCHK, align 4
  %66 = call i8* @I915_READ(i32 %65)
  %67 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %68 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %67, i32 0, i32 36
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* @BSD_HWS_PGA_GEN7, align 4
  %70 = call i8* @I915_READ(i32 %69)
  %71 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %72 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %71, i32 0, i32 35
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @BLT_HWS_PGA_GEN7, align 4
  %74 = call i8* @I915_READ(i32 %73)
  %75 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %76 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %75, i32 0, i32 34
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @GEN7_TLB_RD_ADDR, align 4
  %78 = call i8* @I915_READ(i32 %77)
  %79 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %80 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %79, i32 0, i32 33
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @VLV_G3DCTL, align 4
  %82 = call i8* @I915_READ(i32 %81)
  %83 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %84 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %83, i32 0, i32 32
  store i8* %82, i8** %84, align 8
  %85 = load i32, i32* @VLV_GSCKGCTL, align 4
  %86 = call i8* @I915_READ(i32 %85)
  %87 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %88 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %87, i32 0, i32 31
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @GEN6_MBCTL, align 4
  %90 = call i8* @I915_READ(i32 %89)
  %91 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %92 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %91, i32 0, i32 30
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* @GEN6_UCGCTL1, align 4
  %94 = call i8* @I915_READ(i32 %93)
  %95 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %96 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %95, i32 0, i32 29
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @GEN6_UCGCTL3, align 4
  %98 = call i8* @I915_READ(i32 %97)
  %99 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %100 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %99, i32 0, i32 28
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @GEN6_RCGCTL1, align 4
  %102 = call i8* @I915_READ(i32 %101)
  %103 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %104 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %103, i32 0, i32 27
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* @GEN6_RCGCTL2, align 4
  %106 = call i8* @I915_READ(i32 %105)
  %107 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %108 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %107, i32 0, i32 26
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @GEN6_RSTCTL, align 4
  %110 = call i8* @I915_READ(i32 %109)
  %111 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %112 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %111, i32 0, i32 25
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %114 = call i8* @I915_READ(i32 %113)
  %115 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %116 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %115, i32 0, i32 24
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @GEN6_GFXPAUSE, align 4
  %118 = call i8* @I915_READ(i32 %117)
  %119 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %120 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %119, i32 0, i32 23
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* @GEN6_RPDEUHWTC, align 4
  %122 = call i8* @I915_READ(i32 %121)
  %123 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %124 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %123, i32 0, i32 22
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @GEN6_RPDEUC, align 4
  %126 = call i8* @I915_READ(i32 %125)
  %127 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %128 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %127, i32 0, i32 21
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* @ECOBUS, align 4
  %130 = call i8* @I915_READ(i32 %129)
  %131 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %132 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %131, i32 0, i32 20
  store i8* %130, i8** %132, align 8
  %133 = load i32, i32* @VLV_PWRDWNUPCTL, align 4
  %134 = call i8* @I915_READ(i32 %133)
  %135 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %136 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %135, i32 0, i32 19
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @GEN6_RP_DOWN_TIMEOUT, align 4
  %138 = call i8* @I915_READ(i32 %137)
  %139 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %140 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %139, i32 0, i32 18
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @GEN6_RPDEUCSW, align 4
  %142 = call i8* @I915_READ(i32 %141)
  %143 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %144 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %143, i32 0, i32 17
  store i8* %142, i8** %144, align 8
  %145 = load i32, i32* @GEN6_RCUBMABDTMR, align 4
  %146 = call i8* @I915_READ(i32 %145)
  %147 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %148 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %147, i32 0, i32 16
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @VLV_RCEDATA, align 4
  %150 = call i8* @I915_READ(i32 %149)
  %151 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %152 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %151, i32 0, i32 15
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @VLV_SPAREG2H, align 4
  %154 = call i8* @I915_READ(i32 %153)
  %155 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %156 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %155, i32 0, i32 14
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* @GTIMR, align 4
  %158 = call i8* @I915_READ(i32 %157)
  %159 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %160 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %159, i32 0, i32 13
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @GTIER, align 4
  %162 = call i8* @I915_READ(i32 %161)
  %163 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %164 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %163, i32 0, i32 12
  store i8* %162, i8** %164, align 8
  %165 = load i32, i32* @GEN6_PMIMR, align 4
  %166 = call i8* @I915_READ(i32 %165)
  %167 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %168 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %167, i32 0, i32 11
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* @GEN6_PMIER, align 4
  %170 = call i8* @I915_READ(i32 %169)
  %171 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %172 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %171, i32 0, i32 10
  store i8* %170, i8** %172, align 8
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %190, %52
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %176 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %175, i32 0, i32 9
  %177 = load i8**, i8*** %176, align 8
  %178 = call i32 @ARRAY_SIZE(i8** %177)
  %179 = icmp slt i32 %174, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %173
  %181 = load i32, i32* %4, align 4
  %182 = call i32 @GEN7_GT_SCRATCH(i32 %181)
  %183 = call i8* @I915_READ(i32 %182)
  %184 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %185 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %184, i32 0, i32 9
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  store i8* %183, i8** %189, align 8
  br label %190

190:                                              ; preds = %180
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %4, align 4
  br label %173

193:                                              ; preds = %173
  %194 = load i32, i32* @TILECTL, align 4
  %195 = call i8* @I915_READ(i32 %194)
  %196 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %197 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %196, i32 0, i32 8
  store i8* %195, i8** %197, align 8
  %198 = load i32, i32* @GTFIFOCTL, align 4
  %199 = call i8* @I915_READ(i32 %198)
  %200 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %201 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %200, i32 0, i32 7
  store i8* %199, i8** %201, align 8
  %202 = load i32, i32* @VLV_GTLC_WAKE_CTRL, align 4
  %203 = call i8* @I915_READ(i32 %202)
  %204 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %205 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %204, i32 0, i32 6
  store i8* %203, i8** %205, align 8
  %206 = load i32, i32* @VLV_GTLC_SURVIVABILITY_REG, align 4
  %207 = call i8* @I915_READ(i32 %206)
  %208 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %209 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* @VLV_PMWGICZ, align 4
  %211 = call i8* @I915_READ(i32 %210)
  %212 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %213 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %212, i32 0, i32 4
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @VLV_GU_CTL0, align 4
  %215 = call i8* @I915_READ(i32 %214)
  %216 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %217 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* @VLV_GU_CTL1, align 4
  %219 = call i8* @I915_READ(i32 %218)
  %220 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %221 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  %222 = load i32, i32* @VLV_PCBR, align 4
  %223 = call i8* @I915_READ(i32 %222)
  %224 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %225 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %224, i32 0, i32 1
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* @VLV_GUNIT_CLOCK_GATE2, align 4
  %227 = call i8* @I915_READ(i32 %226)
  %228 = load %struct.vlv_s0ix_state*, %struct.vlv_s0ix_state** %3, align 8
  %229 = getelementptr inbounds %struct.vlv_s0ix_state, %struct.vlv_s0ix_state* %228, i32 0, i32 0
  store i8* %227, i8** %229, align 8
  br label %230

230:                                              ; preds = %193, %10
  ret void
}

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @GEN7_LRA_LIMITS(i32) #1

declare dso_local i32 @GEN7_GT_SCRATCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
