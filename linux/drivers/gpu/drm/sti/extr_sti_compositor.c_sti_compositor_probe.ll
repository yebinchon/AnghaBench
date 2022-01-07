; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_compositor.c_sti_compositor_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sti_compositor = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate compositor context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@STI_MAX_MIXER = common dso_local global i32 0, align 4
@sti_crtc_vblank_cb = common dso_local global i32 0, align 4
@compositor_of_match = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Get memory resource failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Register mapping failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compo_main\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Cannot get compo_main clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"compo_aux\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot get compo_aux clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pix_main\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Cannot get pix_main clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pix_aux\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Cannot get pix_aux clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"compo-main\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"compo-aux\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"st,vtg\00", align 1
@STI_MIXER_MAIN = common dso_local global i64 0, align 8
@STI_MIXER_AUX = common dso_local global i64 0, align 8
@sti_compositor_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_compositor_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_compositor_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sti_compositor*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sti_compositor* @devm_kzalloc(%struct.device* %15, i32 88, i32 %16)
  store %struct.sti_compositor* %17, %struct.sti_compositor** %7, align 8
  %18 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %19 = icmp ne %struct.sti_compositor* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %226

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %27 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %26, i32 0, i32 10
  store %struct.device* %25, %struct.device** %27, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %41, %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @STI_MAX_MIXER, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* @sti_crtc_vblank_cb, align 4
  %34 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %35 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %34, i32 0, i32 9
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* @compositor_of_match, align 4
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call %struct.TYPE_4__* @of_match_node(i32 %45, %struct.device_node* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %55 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %54, i32 0, i32 8
  %56 = load i32, i32* @compositor_of_match, align 4
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call %struct.TYPE_4__* @of_match_node(i32 %56, %struct.device_node* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32* %55, i32 %60, i32 4)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 0)
  store %struct.resource* %64, %struct.resource** %8, align 8
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = icmp eq %struct.resource* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %44
  %68 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %226

71:                                               ; preds = %44
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.resource*, %struct.resource** %8, align 8
  %77 = call i32 @resource_size(%struct.resource* %76)
  %78 = call i32* @devm_ioremap(%struct.device* %72, i32 %75, i32 %77)
  %79 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %80 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %79, i32 0, i32 7
  store i32* %78, i32** %80, align 8
  %81 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %82 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %81, i32 0, i32 7
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %226

89:                                               ; preds = %71
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = call i8* @devm_clk_get(%struct.device* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %93 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %95 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %94, i32 0, i32 6
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %89
  %100 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %101 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %102 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %101, i32 0, i32 6
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %2, align 4
  br label %226

105:                                              ; preds = %89
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i8* @devm_clk_get(%struct.device* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %109 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  %110 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %111 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %110, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %118 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %117, i32 0, i32 5
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %226

121:                                              ; preds = %105
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i8* @devm_clk_get(%struct.device* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %125 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %127 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @IS_ERR(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %121
  %132 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %133 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %134 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %133, i32 0, i32 4
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @PTR_ERR(i8* %135)
  store i32 %136, i32* %2, align 4
  br label %226

137:                                              ; preds = %121
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = call i8* @devm_clk_get(%struct.device* %138, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %140 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %141 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %143 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %142, i32 0, i32 3
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @IS_ERR(i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %137
  %148 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %149 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %150 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %149, i32 0, i32 3
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  store i32 %152, i32* %2, align 4
  br label %226

153:                                              ; preds = %137
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = call i8* @devm_reset_control_get_shared(%struct.device* %154, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %156 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %157 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %159 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @IS_ERR(i8* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %153
  %164 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %165 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @reset_control_deassert(i8* %166)
  br label %168

168:                                              ; preds = %163, %153
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = call i8* @devm_reset_control_get_shared(%struct.device* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %171 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %172 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %171, i32 0, i32 1
  store i8* %170, i8** %172, align 8
  %173 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %174 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i64 @IS_ERR(i8* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %168
  %179 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %180 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @reset_control_deassert(i8* %181)
  br label %183

183:                                              ; preds = %178, %168
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.device, %struct.device* %185, i32 0, i32 0
  %187 = load %struct.device_node*, %struct.device_node** %186, align 8
  %188 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %187, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 0)
  store %struct.device_node* %188, %struct.device_node** %6, align 8
  %189 = load %struct.device_node*, %struct.device_node** %6, align 8
  %190 = icmp ne %struct.device_node* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.device_node*, %struct.device_node** %6, align 8
  %193 = call i8* @of_vtg_find(%struct.device_node* %192)
  %194 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %195 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %194, i32 0, i32 0
  %196 = load i8**, i8*** %195, align 8
  %197 = load i64, i64* @STI_MIXER_MAIN, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  store i8* %193, i8** %198, align 8
  br label %199

199:                                              ; preds = %191, %183
  %200 = load %struct.device_node*, %struct.device_node** %6, align 8
  %201 = call i32 @of_node_put(%struct.device_node* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.device, %struct.device* %203, i32 0, i32 0
  %205 = load %struct.device_node*, %struct.device_node** %204, align 8
  %206 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %205, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 1)
  store %struct.device_node* %206, %struct.device_node** %6, align 8
  %207 = load %struct.device_node*, %struct.device_node** %6, align 8
  %208 = icmp ne %struct.device_node* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %199
  %210 = load %struct.device_node*, %struct.device_node** %6, align 8
  %211 = call i8* @of_vtg_find(%struct.device_node* %210)
  %212 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %213 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %212, i32 0, i32 0
  %214 = load i8**, i8*** %213, align 8
  %215 = load i64, i64* @STI_MIXER_AUX, align 8
  %216 = getelementptr inbounds i8*, i8** %214, i64 %215
  store i8* %211, i8** %216, align 8
  br label %217

217:                                              ; preds = %209, %199
  %218 = load %struct.device_node*, %struct.device_node** %6, align 8
  %219 = call i32 @of_node_put(%struct.device_node* %218)
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %222 = call i32 @platform_set_drvdata(%struct.platform_device* %220, %struct.sti_compositor* %221)
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = call i32 @component_add(%struct.device* %224, i32* @sti_compositor_ops)
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %217, %147, %131, %115, %99, %85, %67, %20
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.sti_compositor* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i32 @reset_control_deassert(i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i8* @of_vtg_find(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sti_compositor*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
