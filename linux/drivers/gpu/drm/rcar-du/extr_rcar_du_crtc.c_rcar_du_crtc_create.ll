; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { %struct.TYPE_7__*, %struct.rcar_du_device* }
%struct.TYPE_7__ = type { %struct.drm_plane }
%struct.drm_plane = type { i32 }
%struct.rcar_du_device = type { i32, %struct.TYPE_8__*, i32, %struct.rcar_du_crtc* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.rcar_du_crtc = type { i32, i32, i32, i64, %struct.TYPE_6__*, %struct.rcar_du_group*, %struct.rcar_du_device*, i32, i32, i32, %struct.clk*, %struct.clk*, %struct.drm_crtc }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_plane }
%struct.clk = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.platform_device = type { i32 }

@rcar_du_crtc_create.mmio_offsets = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@RCAR_DU_FEATURE_CRTC_IRQ_CLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"du.%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no clock for DU channel %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dclkin.%u\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"can't get dclkin.%u: %d\0A\00", align 1
@DSYSR_DRES = common dso_local global i32 0, align 4
@DSYSR_TVM_TVSYNC = common dso_local global i32 0, align 4
@RCAR_DU_FEATURE_VSP1_SOURCE = common dso_local global i32 0, align 4
@crtc_funcs_gen2 = common dso_local global i32 0, align 4
@crtc_funcs_gen3 = common dso_local global i32 0, align 4
@crtc_helper_funcs = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"no IRQ for CRTC %u\0A\00", align 1
@rcar_du_crtc_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to register IRQ for CRTC %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcar_du_crtc_create(%struct.rcar_du_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rcar_du_device*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca %struct.rcar_du_crtc*, align 8
  %11 = alloca %struct.drm_crtc*, align 8
  %12 = alloca %struct.drm_plane*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.clk*, align 8
  %15 = alloca [9 x i8], align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load %struct.rcar_du_group*, %struct.rcar_du_group** %5, align 8
  %20 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %19, i32 0, i32 1
  %21 = load %struct.rcar_du_device*, %struct.rcar_du_device** %20, align 8
  store %struct.rcar_du_device* %21, %struct.rcar_du_device** %8, align 8
  %22 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %23 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.platform_device* @to_platform_device(i32 %24)
  store %struct.platform_device* %25, %struct.platform_device** %9, align 8
  %26 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %27 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %26, i32 0, i32 3
  %28 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %28, i64 %30
  store %struct.rcar_du_crtc* %31, %struct.rcar_du_crtc** %10, align 8
  %32 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %33 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %32, i32 0, i32 12
  store %struct.drm_crtc* %33, %struct.drm_crtc** %11, align 8
  %34 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %35 = load i32, i32* @RCAR_DU_FEATURE_CRTC_IRQ_CLOCK, align 4
  %36 = call i64 @rcar_du_has(%struct.rcar_du_device* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  store i8* %42, i8** %16, align 8
  br label %44

43:                                               ; preds = %3
  store i8* null, i8** %16, align 8
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %46 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = call i8* @devm_clk_get(i32 %47, i8* %48)
  %50 = bitcast i8* %49 to %struct.clk*
  %51 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %52 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %51, i32 0, i32 11
  store %struct.clk* %50, %struct.clk** %52, align 8
  %53 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %54 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %53, i32 0, i32 11
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i64 @IS_ERR(%struct.clk* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %44
  %59 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %60 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %65 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %64, i32 0, i32 11
  %66 = load %struct.clk*, %struct.clk** %65, align 8
  %67 = call i32 @PTR_ERR(%struct.clk* %66)
  store i32 %67, i32* %4, align 4
  br label %250

68:                                               ; preds = %44
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %73 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [9 x i8], [9 x i8]* %15, i64 0, i64 0
  %76 = call i8* @devm_clk_get(i32 %74, i8* %75)
  %77 = bitcast i8* %76 to %struct.clk*
  store %struct.clk* %77, %struct.clk** %14, align 8
  %78 = load %struct.clk*, %struct.clk** %14, align 8
  %79 = call i64 @IS_ERR(%struct.clk* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %68
  %82 = load %struct.clk*, %struct.clk** %14, align 8
  %83 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %84 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %83, i32 0, i32 10
  store %struct.clk* %82, %struct.clk** %84, align 8
  br label %116

85:                                               ; preds = %68
  %86 = load %struct.clk*, %struct.clk** %14, align 8
  %87 = call i32 @PTR_ERR(%struct.clk* %86)
  %88 = load i32, i32* @EPROBE_DEFER, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @EPROBE_DEFER, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %250

94:                                               ; preds = %85
  %95 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %96 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %94
  %105 = load %struct.clk*, %struct.clk** %14, align 8
  %106 = call i32 @PTR_ERR(%struct.clk* %105)
  store i32 %106, i32* %18, align 4
  %107 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %108 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %4, align 4
  br label %250

114:                                              ; preds = %94
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %81
  %117 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %118 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %117, i32 0, i32 9
  %119 = call i32 @init_waitqueue_head(i32* %118)
  %120 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %121 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %120, i32 0, i32 8
  %122 = call i32 @init_waitqueue_head(i32* %121)
  %123 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %124 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %123, i32 0, i32 7
  %125 = call i32 @spin_lock_init(i32* %124)
  %126 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %127 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %128 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %127, i32 0, i32 6
  store %struct.rcar_du_device* %126, %struct.rcar_du_device** %128, align 8
  %129 = load %struct.rcar_du_group*, %struct.rcar_du_group** %5, align 8
  %130 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %131 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %130, i32 0, i32 5
  store %struct.rcar_du_group* %129, %struct.rcar_du_group** %131, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* @rcar_du_crtc_create.mmio_offsets, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %137 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %140 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %142 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = urem i32 %143, 2
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %116
  br label %149

147:                                              ; preds = %116
  %148 = load i32, i32* @DSYSR_DRES, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i32 [ 0, %146 ], [ %148, %147 ]
  %151 = load i32, i32* @DSYSR_TVM_TVSYNC, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %154 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %156 = load i32, i32* @RCAR_DU_FEATURE_VSP1_SOURCE, align 4
  %157 = call i64 @rcar_du_has(%struct.rcar_du_device* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %161 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %160, i32 0, i32 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %166 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store %struct.drm_plane* %169, %struct.drm_plane** %12, align 8
  br label %179

170:                                              ; preds = %149
  %171 = load %struct.rcar_du_group*, %struct.rcar_du_group** %5, align 8
  %172 = getelementptr inbounds %struct.rcar_du_group, %struct.rcar_du_group* %171, i32 0, i32 0
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = urem i32 %174, 2
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  store %struct.drm_plane* %178, %struct.drm_plane** %12, align 8
  br label %179

179:                                              ; preds = %170, %159
  %180 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %181 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %184 = load %struct.drm_plane*, %struct.drm_plane** %12, align 8
  %185 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %186 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %185, i32 0, i32 1
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %189, 2
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i32* @crtc_funcs_gen2, i32* @crtc_funcs_gen3
  %193 = call i32 @drm_crtc_init_with_planes(i32 %182, %struct.drm_crtc* %183, %struct.drm_plane* %184, i32* null, i32* %192, i32* null)
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %179
  %197 = load i32, i32* %18, align 4
  store i32 %197, i32* %4, align 4
  br label %250

198:                                              ; preds = %179
  %199 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %200 = call i32 @drm_crtc_helper_add(%struct.drm_crtc* %199, i32* @crtc_helper_funcs)
  %201 = load %struct.drm_crtc*, %struct.drm_crtc** %11, align 8
  %202 = call i32 @drm_crtc_vblank_off(%struct.drm_crtc* %201)
  %203 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %204 = load i32, i32* @RCAR_DU_FEATURE_CRTC_IRQ_CLOCK, align 4
  %205 = call i64 @rcar_du_has(%struct.rcar_du_device* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %198
  %208 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32 @platform_get_irq(%struct.platform_device* %208, i32 %209)
  store i32 %210, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %215

211:                                              ; preds = %198
  %212 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %213 = call i32 @platform_get_irq(%struct.platform_device* %212, i32 0)
  store i32 %213, i32* %17, align 4
  %214 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %214, i32* %13, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = load i32, i32* %17, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %215
  %219 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %220 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %4, align 4
  br label %250

225:                                              ; preds = %215
  %226 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %227 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %17, align 4
  %230 = load i32, i32* @rcar_du_crtc_irq, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %233 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @dev_name(i32 %234)
  %236 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %237 = call i32 @devm_request_irq(i32 %228, i32 %229, i32 %230, i32 %231, i32 %235, %struct.rcar_du_crtc* %236)
  store i32 %237, i32* %18, align 4
  %238 = load i32, i32* %18, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %225
  %241 = load %struct.rcar_du_device*, %struct.rcar_du_device** %8, align 8
  %242 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %244)
  %246 = load i32, i32* %18, align 4
  store i32 %246, i32* %4, align 4
  br label %250

247:                                              ; preds = %225
  %248 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %10, align 8
  %249 = call i32 @rcar_du_crtc_crc_init(%struct.rcar_du_crtc* %248)
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %247, %240, %218, %196, %104, %91, %58
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i64 @rcar_du_has(%struct.rcar_du_device*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @drm_crtc_init_with_planes(i32, %struct.drm_crtc*, %struct.drm_plane*, i32*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(%struct.drm_crtc*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_off(%struct.drm_crtc*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.rcar_du_crtc*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @rcar_du_crtc_crc_init(%struct.rcar_du_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
