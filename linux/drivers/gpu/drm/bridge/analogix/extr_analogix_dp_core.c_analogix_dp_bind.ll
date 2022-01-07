; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, %struct.TYPE_2__, %struct.analogix_dp_plat_data*, i32, %struct.drm_device*, i32, i32*, i32, i32*, i32*, i32*, %struct.device*, i32, i32 }
%struct.TYPE_2__ = type { i8*, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.drm_device = type { i32 }
%struct.analogix_dp_plat_data = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalided input plat_data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"no DP phy configured\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"force-hpd\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hpd\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"samsung,hpd\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"error getting HDP GPIO: %ld\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@analogix_dp_hardirq = common dso_local global i32 0, align 4
@analogix_dp_irq_thread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"analogix-dp\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"DP-AUX\00", align 1
@analogix_dpaux_transfer = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"failed to create bridge (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.analogix_dp_device* @analogix_dp_bind(%struct.device* %0, %struct.drm_device* %1, %struct.analogix_dp_plat_data* %2) #0 {
  %4 = alloca %struct.analogix_dp_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.analogix_dp_plat_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.analogix_dp_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.analogix_dp_plat_data* %2, %struct.analogix_dp_plat_data** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.platform_device* @to_platform_device(%struct.device* %13)
  store %struct.platform_device* %14, %struct.platform_device** %8, align 8
  %15 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %7, align 8
  %16 = icmp ne %struct.analogix_dp_plat_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.analogix_dp_device* @ERR_PTR(i32 %21)
  store %struct.analogix_dp_device* %22, %struct.analogix_dp_device** %4, align 8
  br label %285

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.analogix_dp_device* @devm_kzalloc(%struct.device* %24, i32 120, i32 %25)
  store %struct.analogix_dp_device* %26, %struct.analogix_dp_device** %9, align 8
  %27 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %28 = icmp ne %struct.analogix_dp_device* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.analogix_dp_device* @ERR_PTR(i32 %31)
  store %struct.analogix_dp_device* %32, %struct.analogix_dp_device** %4, align 8
  br label %285

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 11
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %39 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %40 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %39, i32 0, i32 13
  store i32 %38, i32* %40, align 4
  %41 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %42 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %41, i32 0, i32 12
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %45 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %7, align 8
  %47 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %48 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %47, i32 0, i32 2
  store %struct.analogix_dp_plat_data* %46, %struct.analogix_dp_plat_data** %48, align 8
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %50 = call i32 @analogix_dp_dt_parse_pdata(%struct.analogix_dp_device* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load i32, i32* %12, align 4
  %55 = call %struct.analogix_dp_device* @ERR_PTR(i32 %54)
  store %struct.analogix_dp_device* %55, %struct.analogix_dp_device** %4, align 8
  br label %285

56:                                               ; preds = %33
  %57 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %58 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %57, i32 0, i32 11
  %59 = load %struct.device*, %struct.device** %58, align 8
  %60 = call i32* @devm_phy_get(%struct.device* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %62 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %61, i32 0, i32 10
  store i32* %60, i32** %62, align 8
  %63 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %64 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %63, i32 0, i32 10
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @IS_ERR(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %56
  %69 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %70 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %69, i32 0, i32 11
  %71 = load %struct.device*, %struct.device** %70, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %74 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %73, i32 0, i32 10
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @PTR_ERR(i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %68
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @ENOSYS, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79
  %90 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %91 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %90, i32 0, i32 10
  store i32* null, i32** %91, align 8
  br label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = call %struct.analogix_dp_device* @ERR_PTR(i32 %93)
  store %struct.analogix_dp_device* %94, %struct.analogix_dp_device** %4, align 8
  br label %285

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %68
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32* @devm_clk_get(%struct.device* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %102 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %101, i32 0, i32 9
  store i32* %100, i32** %102, align 8
  %103 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %104 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %103, i32 0, i32 9
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @IS_ERR(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 0
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %113 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %112, i32 0, i32 9
  %114 = load i32*, i32** %113, align 8
  %115 = call %struct.analogix_dp_device* @ERR_CAST(i32* %114)
  store %struct.analogix_dp_device* %115, %struct.analogix_dp_device** %4, align 8
  br label %285

116:                                              ; preds = %97
  %117 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %118 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %117, i32 0, i32 9
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @clk_prepare_enable(i32* %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %122 = load i32, i32* @IORESOURCE_MEM, align 4
  %123 = call %struct.resource* @platform_get_resource(%struct.platform_device* %121, i32 %122, i32 0)
  store %struct.resource* %123, %struct.resource** %10, align 8
  %124 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.resource*, %struct.resource** %10, align 8
  %127 = call i32* @devm_ioremap_resource(%struct.device* %125, %struct.resource* %126)
  %128 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %129 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %128, i32 0, i32 8
  store i32* %127, i32** %129, align 8
  %130 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %131 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @IS_ERR(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %116
  %136 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %137 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %136, i32 0, i32 8
  %138 = load i32*, i32** %137, align 8
  %139 = call %struct.analogix_dp_device* @ERR_CAST(i32* %138)
  store %struct.analogix_dp_device* %139, %struct.analogix_dp_device** %4, align 8
  br label %285

140:                                              ; preds = %116
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = getelementptr inbounds %struct.device, %struct.device* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @of_property_read_bool(i32 %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %145 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %146 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %145, i32 0, i32 7
  store i32 %144, i32* %146, align 8
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = load i32, i32* @GPIOD_IN, align 4
  %149 = call i8* @devm_gpiod_get_optional(%struct.device* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %152 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %151, i32 0, i32 6
  store i32* %150, i32** %152, align 8
  %153 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %154 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %164, label %157

157:                                              ; preds = %140
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = load i32, i32* @GPIOD_IN, align 4
  %160 = call i8* @devm_gpiod_get_optional(%struct.device* %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %163 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %162, i32 0, i32 6
  store i32* %161, i32** %163, align 8
  br label %164

164:                                              ; preds = %157, %140
  %165 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %166 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = call i64 @IS_ERR(i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %164
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %173 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @PTR_ERR(i32* %174)
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  %177 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %178 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %177, i32 0, i32 6
  %179 = load i32*, i32** %178, align 8
  %180 = call %struct.analogix_dp_device* @ERR_CAST(i32* %179)
  store %struct.analogix_dp_device* %180, %struct.analogix_dp_device** %4, align 8
  br label %285

181:                                              ; preds = %164
  %182 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %183 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %196

186:                                              ; preds = %181
  %187 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %188 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %187, i32 0, i32 6
  %189 = load i32*, i32** %188, align 8
  %190 = call i32 @gpiod_to_irq(i32* %189)
  %191 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %192 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %194 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %11, align 4
  br label %201

196:                                              ; preds = %181
  %197 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %198 = call i32 @platform_get_irq(%struct.platform_device* %197, i32 0)
  %199 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %200 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 8
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %196, %186
  %202 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %203 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ENXIO, align 4
  %206 = sub nsw i32 0, %205
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %201
  %209 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %210, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %212 = load i32, i32* @ENODEV, align 4
  %213 = sub nsw i32 0, %212
  %214 = call %struct.analogix_dp_device* @ERR_PTR(i32 %213)
  store %struct.analogix_dp_device* %214, %struct.analogix_dp_device** %4, align 8
  br label %285

215:                                              ; preds = %201
  %216 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %217 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %216, i32 0, i32 0
  %218 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %219 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @analogix_dp_hardirq, align 4
  %222 = load i32, i32* @analogix_dp_irq_thread, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %225 = call i32 @devm_request_threaded_irq(%struct.device* %217, i32 %220, i32 %221, i32 %222, i32 %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), %struct.analogix_dp_device* %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %215
  %229 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %280

232:                                              ; preds = %215
  %233 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %234 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @disable_irq(i32 %235)
  %237 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %238 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %239 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %238, i32 0, i32 4
  store %struct.drm_device* %237, %struct.drm_device** %239, align 8
  %240 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %241 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %240, i32 0, i32 2
  %242 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %241, align 8
  %243 = getelementptr inbounds %struct.analogix_dp_plat_data, %struct.analogix_dp_plat_data* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %246 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 8
  %247 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %248 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %249, align 8
  %250 = load i32, i32* @analogix_dpaux_transfer, align 4
  %251 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %252 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  store i32 %250, i32* %253, align 8
  %254 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %257 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  store %struct.device* %255, %struct.device** %258, align 8
  %259 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %260 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %259, i32 0, i32 1
  %261 = call i32 @drm_dp_aux_register(%struct.TYPE_2__* %260)
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %232
  %265 = load i32, i32* %12, align 4
  %266 = call %struct.analogix_dp_device* @ERR_PTR(i32 %265)
  store %struct.analogix_dp_device* %266, %struct.analogix_dp_device** %4, align 8
  br label %285

267:                                              ; preds = %232
  %268 = load %struct.device*, %struct.device** %5, align 8
  %269 = call i32 @pm_runtime_enable(%struct.device* %268)
  %270 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %271 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  %272 = call i32 @analogix_dp_create_bridge(%struct.drm_device* %270, %struct.analogix_dp_device* %271)
  store i32 %272, i32* %12, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %267
  %276 = load i32, i32* %12, align 4
  %277 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %276)
  br label %280

278:                                              ; preds = %267
  %279 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %9, align 8
  store %struct.analogix_dp_device* %279, %struct.analogix_dp_device** %4, align 8
  br label %285

280:                                              ; preds = %275, %228
  %281 = load %struct.device*, %struct.device** %5, align 8
  %282 = call i32 @pm_runtime_disable(%struct.device* %281)
  %283 = load i32, i32* %12, align 4
  %284 = call %struct.analogix_dp_device* @ERR_PTR(i32 %283)
  store %struct.analogix_dp_device* %284, %struct.analogix_dp_device** %4, align 8
  br label %285

285:                                              ; preds = %280, %278, %264, %208, %170, %135, %108, %92, %53, %29, %17
  %286 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %4, align 8
  ret %struct.analogix_dp_device* %286
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.analogix_dp_device* @ERR_PTR(i32) #1

declare dso_local %struct.analogix_dp_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @analogix_dp_dt_parse_pdata(%struct.analogix_dp_device*) #1

declare dso_local i32* @devm_phy_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local %struct.analogix_dp_device* @ERR_CAST(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i8*, %struct.analogix_dp_device*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @drm_dp_aux_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @analogix_dp_create_bridge(%struct.drm_device*, %struct.analogix_dp_device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
