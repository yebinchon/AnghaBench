; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.regulator*, %struct.regulator*, i32, %struct.regulator**, %struct.regulator**, %struct.regulator**, %struct.regulator**, %struct.regulator*, i32, %struct.regulator*, i32, %struct.hdmi_platform_config*, %struct.platform_device* }
%struct.regulator = type { i32 }
%struct.hdmi_platform_config = type { i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.hdmi_platform_config* }
%struct.resource = type { i32 }
%struct.clk = type opaque
%struct.clk.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"HDMI_QFPROM\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"can't find qfprom resource\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to get hpd regulator: %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to get pwr regulator: %s (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to get hpd clk: %s (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to get pwr clk: %s (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"msm_hdmi\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"failed to get i2c: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"failed to get phy\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"failed to init hdcp: disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hdmi* (%struct.platform_device*)* @msm_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hdmi* @msm_hdmi_init(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hdmi_platform_config*, align 8
  %5 = alloca %struct.hdmi*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regulator*, align 8
  %10 = alloca %struct.regulator*, align 8
  %11 = alloca %struct.clk*, align 8
  %12 = alloca %struct.clk.0*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %15, align 8
  store %struct.hdmi_platform_config* %16, %struct.hdmi_platform_config** %4, align 8
  store %struct.hdmi* null, %struct.hdmi** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.hdmi* @devm_kzalloc(%struct.TYPE_8__* %18, i32 104, i32 %19)
  store %struct.hdmi* %20, %struct.hdmi** %5, align 8
  %21 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %22 = icmp ne %struct.hdmi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %401

26:                                               ; preds = %1
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %28, i32 0, i32 12
  store %struct.platform_device* %27, %struct.platform_device** %29, align 8
  %30 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %31 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %32 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %31, i32 0, i32 11
  store %struct.hdmi_platform_config* %30, %struct.hdmi_platform_config** %32, align 8
  %33 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %34 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %33, i32 0, i32 10
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %38 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @msm_ioremap(%struct.platform_device* %36, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = bitcast i8* %40 to %struct.regulator*
  %42 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %43 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %42, i32 0, i32 9
  store %struct.regulator* %41, %struct.regulator** %43, align 8
  %44 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %45 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %44, i32 0, i32 9
  %46 = load %struct.regulator*, %struct.regulator** %45, align 8
  %47 = call i64 @IS_ERR(%struct.regulator* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %26
  %50 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %51 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %50, i32 0, i32 9
  %52 = load %struct.regulator*, %struct.regulator** %51, align 8
  %53 = call i32 @PTR_ERR(%struct.regulator* %52)
  store i32 %53, i32* %8, align 4
  br label %401

54:                                               ; preds = %26
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load i32, i32* @IORESOURCE_MEM, align 4
  %57 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %58 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %55, i32 %56, i32 %59)
  store %struct.resource* %60, %struct.resource** %6, align 8
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %65 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %68 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @msm_ioremap(%struct.platform_device* %66, i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %71 = bitcast i8* %70 to %struct.regulator*
  %72 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %73 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %72, i32 0, i32 7
  store %struct.regulator* %71, %struct.regulator** %73, align 8
  %74 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %75 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %74, i32 0, i32 7
  %76 = load %struct.regulator*, %struct.regulator** %75, align 8
  %77 = call i64 @IS_ERR(%struct.regulator* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %54
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @DRM_DEV_INFO(%struct.TYPE_8__* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %84 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %83, i32 0, i32 7
  store %struct.regulator* null, %struct.regulator** %84, align 8
  br label %85

85:                                               ; preds = %79, %54
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %89 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i8* @devm_kcalloc(%struct.TYPE_8__* %87, i32 %90, i32 8, i32 %91)
  %93 = bitcast i8* %92 to %struct.regulator**
  %94 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %95 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %94, i32 0, i32 6
  store %struct.regulator** %93, %struct.regulator*** %95, align 8
  %96 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %97 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %96, i32 0, i32 6
  %98 = load %struct.regulator**, %struct.regulator*** %97, align 8
  %99 = icmp ne %struct.regulator** %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %85
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %8, align 4
  br label %401

103:                                              ; preds = %85
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %146, %103
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %107 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %149

110:                                              ; preds = %104
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %114 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %113, i32 0, i32 7
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_8__* %112, i32 %119)
  store %struct.regulator* %120, %struct.regulator** %9, align 8
  %121 = load %struct.regulator*, %struct.regulator** %9, align 8
  %122 = call i64 @IS_ERR(%struct.regulator* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %110
  %125 = load %struct.regulator*, %struct.regulator** %9, align 8
  %126 = call i32 @PTR_ERR(%struct.regulator* %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %130 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %129, i32 0, i32 7
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136)
  br label %401

138:                                              ; preds = %110
  %139 = load %struct.regulator*, %struct.regulator** %9, align 8
  %140 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %141 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %140, i32 0, i32 6
  %142 = load %struct.regulator**, %struct.regulator*** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.regulator*, %struct.regulator** %142, i64 %144
  store %struct.regulator* %139, %struct.regulator** %145, align 8
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %104

149:                                              ; preds = %104
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %153 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @devm_kcalloc(%struct.TYPE_8__* %151, i32 %154, i32 8, i32 %155)
  %157 = bitcast i8* %156 to %struct.regulator**
  %158 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %159 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %158, i32 0, i32 5
  store %struct.regulator** %157, %struct.regulator*** %159, align 8
  %160 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %161 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %160, i32 0, i32 5
  %162 = load %struct.regulator**, %struct.regulator*** %161, align 8
  %163 = icmp ne %struct.regulator** %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %149
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %8, align 4
  br label %401

167:                                              ; preds = %149
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %210, %167
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %171 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %213

174:                                              ; preds = %168
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 0
  %177 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %178 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call %struct.regulator* @devm_regulator_get(%struct.TYPE_8__* %176, i32 %183)
  store %struct.regulator* %184, %struct.regulator** %10, align 8
  %185 = load %struct.regulator*, %struct.regulator** %10, align 8
  %186 = call i64 @IS_ERR(%struct.regulator* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %174
  %189 = load %struct.regulator*, %struct.regulator** %10, align 8
  %190 = call i32 @PTR_ERR(%struct.regulator* %189)
  store i32 %190, i32* %8, align 4
  %191 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %192 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %191, i32 0, i32 0
  %193 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %194 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %193, i32 0, i32 6
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %192, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200)
  br label %401

202:                                              ; preds = %174
  %203 = load %struct.regulator*, %struct.regulator** %10, align 8
  %204 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %205 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %204, i32 0, i32 5
  %206 = load %struct.regulator**, %struct.regulator*** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.regulator*, %struct.regulator** %206, i64 %208
  store %struct.regulator* %203, %struct.regulator** %209, align 8
  br label %210

210:                                              ; preds = %202
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %168

213:                                              ; preds = %168
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %217 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call i8* @devm_kcalloc(%struct.TYPE_8__* %215, i32 %218, i32 8, i32 %219)
  %221 = bitcast i8* %220 to %struct.regulator**
  %222 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %223 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %222, i32 0, i32 4
  store %struct.regulator** %221, %struct.regulator*** %223, align 8
  %224 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %225 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %224, i32 0, i32 4
  %226 = load %struct.regulator**, %struct.regulator*** %225, align 8
  %227 = icmp ne %struct.regulator** %226, null
  br i1 %227, label %231, label %228

228:                                              ; preds = %213
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  br label %401

231:                                              ; preds = %213
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %277, %231
  %233 = load i32, i32* %7, align 4
  %234 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %235 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %280

238:                                              ; preds = %232
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %241 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call %struct.regulator* @msm_clk_get(%struct.platform_device* %239, i32 %246)
  %248 = bitcast %struct.regulator* %247 to %struct.clk*
  store %struct.clk* %248, %struct.clk** %11, align 8
  %249 = load %struct.clk*, %struct.clk** %11, align 8
  %250 = bitcast %struct.clk* %249 to %struct.regulator*
  %251 = call i64 @IS_ERR(%struct.regulator* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %238
  %254 = load %struct.clk*, %struct.clk** %11, align 8
  %255 = bitcast %struct.clk* %254 to %struct.regulator*
  %256 = call i32 @PTR_ERR(%struct.regulator* %255)
  store i32 %256, i32* %8, align 4
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %260 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %259, i32 0, i32 5
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* %8, align 4
  %267 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %265, i32 %266)
  br label %401

268:                                              ; preds = %238
  %269 = load %struct.clk*, %struct.clk** %11, align 8
  %270 = bitcast %struct.clk* %269 to %struct.regulator*
  %271 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %272 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %271, i32 0, i32 4
  %273 = load %struct.regulator**, %struct.regulator*** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.regulator*, %struct.regulator** %273, i64 %275
  store %struct.regulator* %270, %struct.regulator** %276, align 8
  br label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %232

280:                                              ; preds = %232
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %284 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @GFP_KERNEL, align 4
  %287 = call i8* @devm_kcalloc(%struct.TYPE_8__* %282, i32 %285, i32 8, i32 %286)
  %288 = bitcast i8* %287 to %struct.regulator**
  %289 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %290 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %289, i32 0, i32 3
  store %struct.regulator** %288, %struct.regulator*** %290, align 8
  %291 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %292 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %291, i32 0, i32 3
  %293 = load %struct.regulator**, %struct.regulator*** %292, align 8
  %294 = icmp ne %struct.regulator** %293, null
  br i1 %294, label %298, label %295

295:                                              ; preds = %280
  %296 = load i32, i32* @ENOMEM, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %8, align 4
  br label %401

298:                                              ; preds = %280
  store i32 0, i32* %7, align 4
  br label %299

299:                                              ; preds = %344, %298
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %302 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = icmp slt i32 %300, %303
  br i1 %304, label %305, label %347

305:                                              ; preds = %299
  %306 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %307 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %308 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %307, i32 0, i32 4
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = call %struct.regulator* @msm_clk_get(%struct.platform_device* %306, i32 %313)
  %315 = bitcast %struct.regulator* %314 to %struct.clk.0*
  store %struct.clk.0* %315, %struct.clk.0** %12, align 8
  %316 = load %struct.clk.0*, %struct.clk.0** %12, align 8
  %317 = bitcast %struct.clk.0* %316 to %struct.regulator*
  %318 = call i64 @IS_ERR(%struct.regulator* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %305
  %321 = load %struct.clk.0*, %struct.clk.0** %12, align 8
  %322 = bitcast %struct.clk.0* %321 to %struct.regulator*
  %323 = call i32 @PTR_ERR(%struct.regulator* %322)
  store i32 %323, i32* %8, align 4
  %324 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %325 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %324, i32 0, i32 0
  %326 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %4, align 8
  %327 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %326, i32 0, i32 4
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %7, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %8, align 4
  %334 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %325, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %332, i32 %333)
  br label %401

335:                                              ; preds = %305
  %336 = load %struct.clk.0*, %struct.clk.0** %12, align 8
  %337 = bitcast %struct.clk.0* %336 to %struct.regulator*
  %338 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %339 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %338, i32 0, i32 3
  %340 = load %struct.regulator**, %struct.regulator*** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.regulator*, %struct.regulator** %340, i64 %342
  store %struct.regulator* %337, %struct.regulator** %343, align 8
  br label %344

344:                                              ; preds = %335
  %345 = load i32, i32* %7, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %7, align 4
  br label %299

347:                                              ; preds = %299
  %348 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %349 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %348, i32 0, i32 0
  %350 = call i32 @pm_runtime_enable(%struct.TYPE_8__* %349)
  %351 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %352 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %353 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 8
  %354 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %355 = call %struct.regulator* @msm_hdmi_i2c_init(%struct.hdmi* %354)
  %356 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %357 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %356, i32 0, i32 1
  store %struct.regulator* %355, %struct.regulator** %357, align 8
  %358 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %359 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %358, i32 0, i32 1
  %360 = load %struct.regulator*, %struct.regulator** %359, align 8
  %361 = call i64 @IS_ERR(%struct.regulator* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %374

363:                                              ; preds = %347
  %364 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %365 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %364, i32 0, i32 1
  %366 = load %struct.regulator*, %struct.regulator** %365, align 8
  %367 = call i32 @PTR_ERR(%struct.regulator* %366)
  store i32 %367, i32* %8, align 4
  %368 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %369 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %368, i32 0, i32 0
  %370 = load i32, i32* %8, align 4
  %371 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %369, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %370)
  %372 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %373 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %372, i32 0, i32 1
  store %struct.regulator* null, %struct.regulator** %373, align 8
  br label %401

374:                                              ; preds = %347
  %375 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %376 = call i32 @msm_hdmi_get_phy(%struct.hdmi* %375)
  store i32 %376, i32* %8, align 4
  %377 = load i32, i32* %8, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %381 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %380, i32 0, i32 0
  %382 = call i32 (%struct.TYPE_8__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_8__* %381, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %401

383:                                              ; preds = %374
  %384 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %385 = call %struct.regulator* @msm_hdmi_hdcp_init(%struct.hdmi* %384)
  %386 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %387 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %386, i32 0, i32 0
  store %struct.regulator* %385, %struct.regulator** %387, align 8
  %388 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %389 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %388, i32 0, i32 0
  %390 = load %struct.regulator*, %struct.regulator** %389, align 8
  %391 = call i64 @IS_ERR(%struct.regulator* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %383
  %394 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %395 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %394, i32 0, i32 0
  %396 = call i32 @dev_warn(%struct.TYPE_8__* %395, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %397 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %398 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %397, i32 0, i32 0
  store %struct.regulator* null, %struct.regulator** %398, align 8
  br label %399

399:                                              ; preds = %393, %383
  %400 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  store %struct.hdmi* %400, %struct.hdmi** %2, align 8
  br label %410

401:                                              ; preds = %379, %363, %320, %295, %253, %228, %188, %164, %124, %100, %49, %23
  %402 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %403 = icmp ne %struct.hdmi* %402, null
  br i1 %403, label %404, label %407

404:                                              ; preds = %401
  %405 = load %struct.hdmi*, %struct.hdmi** %5, align 8
  %406 = call i32 @msm_hdmi_destroy(%struct.hdmi* %405)
  br label %407

407:                                              ; preds = %404, %401
  %408 = load i32, i32* %8, align 4
  %409 = call %struct.hdmi* @ERR_PTR(i32 %408)
  store %struct.hdmi* %409, %struct.hdmi** %2, align 8
  br label %410

410:                                              ; preds = %407, %399
  %411 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  ret %struct.hdmi* %411
}

declare dso_local %struct.hdmi* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @msm_ioremap(%struct.platform_device*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_INFO(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local %struct.regulator* @devm_regulator_get(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.regulator* @msm_clk_get(%struct.platform_device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_8__*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32) #1

declare dso_local %struct.regulator* @msm_hdmi_i2c_init(%struct.hdmi*) #1

declare dso_local i32 @msm_hdmi_get_phy(%struct.hdmi*) #1

declare dso_local %struct.regulator* @msm_hdmi_hdcp_init(%struct.hdmi*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @msm_hdmi_destroy(%struct.hdmi*) #1

declare dso_local %struct.hdmi* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
