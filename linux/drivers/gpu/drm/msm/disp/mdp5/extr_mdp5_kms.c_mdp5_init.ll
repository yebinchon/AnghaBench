; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32* }
%struct.mdp5_kms = type { i32, i32, %struct.TYPE_6__, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, %struct.platform_device*, %struct.drm_device*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mdp5_cfg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mdp_phys\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"MDP5\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lut\00", align 1
@MDP_CAP_SMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.drm_device*)* @mdp5_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_init(%struct.platform_device* %0, %struct.drm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.mdp5_kms*, align 8
  %8 = alloca %struct.mdp5_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.drm_device* %1, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %13, align 8
  store %struct.msm_drm_private* %14, %struct.msm_drm_private** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mdp5_kms* @devm_kzalloc(i32* %16, i32 96, i32 %17)
  store %struct.mdp5_kms* %18, %struct.mdp5_kms** %7, align 8
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %20 = icmp ne %struct.mdp5_kms* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %220

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.mdp5_kms* %26)
  %28 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %29 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %28, i32 0, i32 14
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %33 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %32, i32 0, i32 13
  store %struct.drm_device* %31, %struct.drm_device** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %36 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %35, i32 0, i32 12
  store %struct.platform_device* %34, %struct.platform_device** %36, align 8
  %37 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %38 = call i32 @mdp5_global_obj_init(%struct.mdp5_kms* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %220

42:                                               ; preds = %24
  %43 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %44 = call i32* @msm_ioremap(%struct.platform_device* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %46 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %45, i32 0, i32 5
  store i32* %44, i32** %46, align 8
  %47 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %48 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %54 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @PTR_ERR(i32* %55)
  store i32 %56, i32* %11, align 4
  br label %220

57:                                               ; preds = %42
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %60 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %59, i32 0, i32 11
  %61 = call i32 @get_clk(%struct.platform_device* %58, i32* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %220

65:                                               ; preds = %57
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %68 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %67, i32 0, i32 10
  %69 = call i32 @get_clk(%struct.platform_device* %66, i32* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %220

73:                                               ; preds = %65
  %74 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %75 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %76 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %75, i32 0, i32 7
  %77 = call i32 @get_clk(%struct.platform_device* %74, i32* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %220

81:                                               ; preds = %73
  %82 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %83 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %84 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %83, i32 0, i32 9
  %85 = call i32 @get_clk(%struct.platform_device* %82, i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %220

89:                                               ; preds = %81
  %90 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %91 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %92 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %91, i32 0, i32 8
  %93 = call i32 @get_clk(%struct.platform_device* %90, i32* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %94 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %95 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clk_set_rate(i32 %96, i32 200000000)
  %98 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 @pm_runtime_enable(i32* %99)
  %101 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %102 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %104 = call i32 @read_mdp_hw_revision(%struct.mdp5_kms* %103, i32* %9, i32* %10)
  %105 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32* @mdp5_cfg_init(%struct.mdp5_kms* %105, i32 %106, i32 %107)
  %109 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %110 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %109, i32 0, i32 4
  store i32* %108, i32** %110, align 8
  %111 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %112 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @IS_ERR(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %89
  %117 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %118 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @PTR_ERR(i32* %119)
  store i32 %120, i32* %11, align 4
  %121 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %122 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %121, i32 0, i32 4
  store i32* null, i32** %122, align 8
  br label %220

123:                                              ; preds = %89
  %124 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %125 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = call %struct.mdp5_cfg* @mdp5_cfg_get_config(i32* %126)
  store %struct.mdp5_cfg* %127, %struct.mdp5_cfg** %8, align 8
  %128 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %8, align 8
  %129 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %135 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %137 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %8, align 8
  %140 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %139, i32 0, i32 0
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @clk_set_rate(i32 %138, i32 %143)
  %145 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %146 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MDP_CAP_SMP, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %123
  %152 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %153 = load %struct.mdp5_cfg*, %struct.mdp5_cfg** %8, align 8
  %154 = getelementptr inbounds %struct.mdp5_cfg, %struct.mdp5_cfg* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = call i32* @mdp5_smp_init(%struct.mdp5_kms* %152, i32* %156)
  %158 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %159 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %158, i32 0, i32 6
  store i32* %157, i32** %159, align 8
  %160 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %161 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %160, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = call i64 @IS_ERR(i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %151
  %166 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %167 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @PTR_ERR(i32* %168)
  store i32 %169, i32* %11, align 4
  %170 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %171 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %170, i32 0, i32 6
  store i32* null, i32** %171, align 8
  br label %220

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %172, %123
  %174 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %175 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %176 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %179 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = call i32* @mdp5_ctlm_init(%struct.drm_device* %174, i32* %177, i32* %180)
  %182 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %183 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %182, i32 0, i32 3
  store i32* %181, i32** %183, align 8
  %184 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %185 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @IS_ERR(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %173
  %190 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %191 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @PTR_ERR(i32* %192)
  store i32 %193, i32* %11, align 4
  %194 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %195 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %194, i32 0, i32 3
  store i32* null, i32** %195, align 8
  br label %220

196:                                              ; preds = %173
  %197 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %198 = call i32 @hwpipe_init(%struct.mdp5_kms* %197)
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %220

202:                                              ; preds = %196
  %203 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %204 = call i32 @hwmixer_init(%struct.mdp5_kms* %203)
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %220

208:                                              ; preds = %202
  %209 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %210 = call i32 @interface_init(%struct.mdp5_kms* %209)
  store i32 %210, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %208
  br label %220

214:                                              ; preds = %208
  %215 = load %struct.mdp5_kms*, %struct.mdp5_kms** %7, align 8
  %216 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %219 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %218, i32 0, i32 0
  store i32* %217, i32** %219, align 8
  store i32 0, i32* %3, align 4
  br label %224

220:                                              ; preds = %213, %207, %201, %189, %165, %116, %88, %80, %72, %64, %52, %41, %21
  %221 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %222 = call i32 @mdp5_destroy(%struct.platform_device* %221)
  %223 = load i32, i32* %11, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %220, %214
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.mdp5_kms* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mdp5_kms*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mdp5_global_obj_init(%struct.mdp5_kms*) #1

declare dso_local i32* @msm_ioremap(%struct.platform_device*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @get_clk(%struct.platform_device*, i32*, i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @read_mdp_hw_revision(%struct.mdp5_kms*, i32*, i32*) #1

declare dso_local i32* @mdp5_cfg_init(%struct.mdp5_kms*, i32, i32) #1

declare dso_local %struct.mdp5_cfg* @mdp5_cfg_get_config(i32*) #1

declare dso_local i32* @mdp5_smp_init(%struct.mdp5_kms*, i32*) #1

declare dso_local i32* @mdp5_ctlm_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @hwpipe_init(%struct.mdp5_kms*) #1

declare dso_local i32 @hwmixer_init(%struct.mdp5_kms*) #1

declare dso_local i32 @interface_init(%struct.mdp5_kms*) #1

declare dso_local i32 @mdp5_destroy(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
