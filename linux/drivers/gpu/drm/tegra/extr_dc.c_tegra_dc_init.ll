; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32, i32 }
%struct.drm_device = type { %struct.tegra_drm* }
%struct.tegra_drm = type { i64 }
%struct.tegra_dc = type { i32, %struct.drm_plane*, i32, i32, %struct.TYPE_2__*, i32 }
%struct.drm_plane = type { i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@HOST1X_SYNCPT_CLIENT_MANAGED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate syncpoint\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to attach to domain: %d\0A\00", align 1
@tegra_crtc_funcs = common dso_local global i32 0, align 4
@tegra_crtc_helper_funcs = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to initialize RGB output: %d\0A\00", align 1
@tegra_dc_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_dc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_init(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tegra_dc*, align 8
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %11 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %12 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_device* @dev_get_drvdata(i32 %13)
  store %struct.drm_device* %14, %struct.drm_device** %4, align 8
  %15 = load i64, i64* @HOST1X_SYNCPT_CLIENT_MANAGED, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %17 = call %struct.tegra_dc* @host1x_client_to_dc(%struct.host1x_client* %16)
  store %struct.tegra_dc* %17, %struct.tegra_dc** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load %struct.tegra_drm*, %struct.tegra_drm** %19, align 8
  store %struct.tegra_drm* %20, %struct.tegra_drm** %7, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %8, align 8
  store %struct.drm_plane* null, %struct.drm_plane** %9, align 8
  %21 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %22 = call i32 @tegra_dc_has_window_groups(%struct.tegra_dc* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %211

25:                                               ; preds = %1
  %26 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @host1x_syncpt_request(%struct.host1x_client* %26, i64 %27)
  %29 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %32 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25
  %36 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %37 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %25
  %41 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %42 = call %struct.drm_plane* @host1x_client_iommu_attach(%struct.host1x_client* %41, i32 1)
  %43 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %43, i32 0, i32 1
  store %struct.drm_plane* %42, %struct.drm_plane** %44, align 8
  %45 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %46 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %45, i32 0, i32 1
  %47 = load %struct.drm_plane*, %struct.drm_plane** %46, align 8
  %48 = call i64 @IS_ERR(%struct.drm_plane* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %52 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %51, i32 0, i32 1
  %53 = load %struct.drm_plane*, %struct.drm_plane** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.drm_plane* %53)
  store i32 %54, i32* %10, align 4
  %55 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %56 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %2, align 4
  br label %211

61:                                               ; preds = %40
  %62 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %63 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %70 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %71 = call %struct.drm_plane* @tegra_dc_add_shared_planes(%struct.drm_device* %69, %struct.tegra_dc* %70)
  store %struct.drm_plane* %71, %struct.drm_plane** %8, align 8
  br label %76

72:                                               ; preds = %61
  %73 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %74 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %75 = call %struct.drm_plane* @tegra_dc_add_planes(%struct.drm_device* %73, %struct.tegra_dc* %74)
  store %struct.drm_plane* %75, %struct.drm_plane** %8, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %78 = call i64 @IS_ERR(%struct.drm_plane* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %82 = call i32 @PTR_ERR(%struct.drm_plane* %81)
  store i32 %82, i32* %10, align 4
  br label %186

83:                                               ; preds = %76
  %84 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %85 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %84, i32 0, i32 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %83
  %91 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %92 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %93 = call %struct.drm_plane* @tegra_dc_cursor_plane_create(%struct.drm_device* %91, %struct.tegra_dc* %92)
  store %struct.drm_plane* %93, %struct.drm_plane** %9, align 8
  %94 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %95 = call i64 @IS_ERR(%struct.drm_plane* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %99 = call i32 @PTR_ERR(%struct.drm_plane* %98)
  store i32 %99, i32* %10, align 4
  br label %186

100:                                              ; preds = %90
  br label %112

101:                                              ; preds = %83
  %102 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %103 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %104 = call %struct.drm_plane* @tegra_dc_overlay_plane_create(%struct.drm_device* %102, %struct.tegra_dc* %103, i32 2, i32 1)
  store %struct.drm_plane* %104, %struct.drm_plane** %9, align 8
  %105 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %106 = call i64 @IS_ERR(%struct.drm_plane* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %110 = call i32 @PTR_ERR(%struct.drm_plane* %109)
  store i32 %110, i32* %10, align 4
  br label %186

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %114 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %115 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %114, i32 0, i32 5
  %116 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %117 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %118 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %113, i32* %115, %struct.drm_plane* %116, %struct.drm_plane* %117, i32* @tegra_crtc_funcs, i32* null)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %186

122:                                              ; preds = %112
  %123 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %124 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %123, i32 0, i32 5
  %125 = call i32 @drm_crtc_helper_add(i32* %124, i32* @tegra_crtc_helper_funcs)
  %126 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %127 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %126, i32 0, i32 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %132 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp sgt i64 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %122
  %136 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %137 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %136, i32 0, i32 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %142 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %135, %122
  %144 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %145 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %146 = call i32 @tegra_dc_rgb_init(%struct.drm_device* %144, %struct.tegra_dc* %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp ne i32 %150, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %156 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  br label %186

160:                                              ; preds = %149, %143
  %161 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %162 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %165 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @tegra_dc_irq, align 4
  %168 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %169 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_name(i32 %170)
  %172 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %173 = call i32 @devm_request_irq(i32 %163, i32 %166, i32 %167, i32 0, i32 %171, %struct.tegra_dc* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %160
  %177 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %178 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %181 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %179, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %182, i32 %183)
  br label %186

185:                                              ; preds = %160
  store i32 0, i32* %2, align 4
  br label %211

186:                                              ; preds = %176, %154, %121, %108, %97, %80
  %187 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %188 = call i32 @IS_ERR_OR_NULL(%struct.drm_plane* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %192 = call i32 @drm_plane_cleanup(%struct.drm_plane* %191)
  br label %193

193:                                              ; preds = %190, %186
  %194 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %195 = call i64 @IS_ERR(%struct.drm_plane* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %199 = call i32 @drm_plane_cleanup(%struct.drm_plane* %198)
  br label %200

200:                                              ; preds = %197, %193
  %201 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %202 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %203 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %202, i32 0, i32 1
  %204 = load %struct.drm_plane*, %struct.drm_plane** %203, align 8
  %205 = call i32 @host1x_client_iommu_detach(%struct.host1x_client* %201, %struct.drm_plane* %204)
  %206 = load %struct.tegra_dc*, %struct.tegra_dc** %6, align 8
  %207 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @host1x_syncpt_free(i32 %208)
  %210 = load i32, i32* %10, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %200, %185, %50, %24
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.tegra_dc* @host1x_client_to_dc(%struct.host1x_client*) #1

declare dso_local i32 @tegra_dc_has_window_groups(%struct.tegra_dc*) #1

declare dso_local i32 @host1x_syncpt_request(%struct.host1x_client*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.drm_plane* @host1x_client_iommu_attach(%struct.host1x_client*, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_plane*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_plane*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.drm_plane* @tegra_dc_add_shared_planes(%struct.drm_device*, %struct.tegra_dc*) #1

declare dso_local %struct.drm_plane* @tegra_dc_add_planes(%struct.drm_device*, %struct.tegra_dc*) #1

declare dso_local %struct.drm_plane* @tegra_dc_cursor_plane_create(%struct.drm_device*, %struct.tegra_dc*) #1

declare dso_local %struct.drm_plane* @tegra_dc_overlay_plane_create(%struct.drm_device*, %struct.tegra_dc*, i32, i32) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, %struct.drm_plane*, %struct.drm_plane*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @tegra_dc_rgb_init(%struct.drm_device*, %struct.tegra_dc*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.tegra_dc*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.drm_plane*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.drm_plane*) #1

declare dso_local i32 @host1x_client_iommu_detach(%struct.host1x_client*, %struct.drm_plane*) #1

declare dso_local i32 @host1x_syncpt_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
