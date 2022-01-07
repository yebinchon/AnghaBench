; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr3d.c_gr3d_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr3d.c_gr3d_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.host1x_syncpt = type { i32 }
%struct.gr3d = type { i32, %struct.TYPE_9__, %struct.TYPE_10__*, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_12__, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.host1x_syncpt**, i32, %struct.TYPE_11__*, i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot get reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"nvidia,tegra30-gr3d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"3d2\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"cannot get secondary clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"cannot get secondary reset\0A\00", align 1
@TEGRA_POWERGATE_3D = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to power up 3D unit\0A\00", align 1
@TEGRA_POWERGATE_3D1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to power up secondary 3D unit\0A\00", align 1
@gr3d_client_ops = common dso_local global i32 0, align 4
@HOST1X_CLASS_GR3D = common dso_local global i32 0, align 4
@gr3d_ops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@gr3d_addr_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gr3d_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr3d_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.host1x_syncpt**, align 8
  %6 = alloca %struct.gr3d*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.TYPE_11__* %14, i32 112, i32 %15)
  %17 = bitcast i8* %16 to %struct.gr3d*
  store %struct.gr3d* %17, %struct.gr3d** %6, align 8
  %18 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %19 = icmp ne %struct.gr3d* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %238

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__* %25)
  %27 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %28 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %27, i32 0, i32 2
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devm_kzalloc(%struct.TYPE_11__* %30, i32 8, i32 %31)
  %33 = bitcast i8* %32 to %struct.host1x_syncpt**
  store %struct.host1x_syncpt** %33, %struct.host1x_syncpt*** %5, align 8
  %34 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %35 = icmp ne %struct.host1x_syncpt** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %238

39:                                               ; preds = %23
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i8* @devm_clk_get(%struct.TYPE_11__* %41, i8* null)
  %43 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %44 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  %45 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %46 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %45, i32 0, i32 6
  %47 = load i8*, i8** %46, align 8
  %48 = call i64 @IS_ERR(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %55 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %238

58:                                               ; preds = %39
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i8* @devm_reset_control_get(%struct.TYPE_11__* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %63 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %65 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %64, i32 0, i32 5
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @IS_ERR(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %74 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @PTR_ERR(i8* %75)
  store i32 %76, i32* %2, align 4
  br label %238

77:                                               ; preds = %58
  %78 = load %struct.device_node*, %struct.device_node** %4, align 8
  %79 = call i64 @of_device_is_compatible(%struct.device_node* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %120

81:                                               ; preds = %77
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i8* @devm_clk_get(%struct.TYPE_11__* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %85 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %86 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  %87 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %88 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %81
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %96 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %97 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @PTR_ERR(i8* %98)
  store i32 %99, i32* %2, align 4
  br label %238

100:                                              ; preds = %81
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i8* @devm_reset_control_get(%struct.TYPE_11__* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %104 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %105 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %107 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %106, i32 0, i32 3
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %116 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @PTR_ERR(i8* %117)
  store i32 %118, i32* %2, align 4
  br label %238

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %77
  %121 = load i32, i32* @TEGRA_POWERGATE_3D, align 4
  %122 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %123 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %122, i32 0, i32 6
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %126 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %125, i32 0, i32 5
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @tegra_powergate_sequence_power_up(i32 %121, i8* %124, i8* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %238

136:                                              ; preds = %120
  %137 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %138 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %136
  %142 = load i32, i32* @TEGRA_POWERGATE_3D1, align 4
  %143 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %144 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %147 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @tegra_powergate_sequence_power_up(i32 %142, i8* %145, i8* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %141
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %154, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %2, align 4
  br label %238

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %160 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = call i32 @INIT_LIST_HEAD(i32* %162)
  %164 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %165 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 4
  store i32* @gr3d_client_ops, i32** %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %171 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  store %struct.TYPE_11__* %169, %struct.TYPE_11__** %173, align 8
  %174 = load i32, i32* @HOST1X_CLASS_GR3D, align 4
  %175 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %176 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 8
  %179 = load %struct.host1x_syncpt**, %struct.host1x_syncpt*** %5, align 8
  %180 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %181 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  store %struct.host1x_syncpt** %179, %struct.host1x_syncpt*** %183, align 8
  %184 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %185 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %189 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  %191 = call i32 @INIT_LIST_HEAD(i32* %190)
  %192 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %193 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %192, i32 0, i32 2
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %198 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  store i32 %196, i32* %199, align 8
  %200 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %201 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 1
  store i32* @gr3d_ops, i32** %202, align 8
  %203 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %204 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = call i32 @host1x_client_register(%struct.TYPE_12__* %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %158
  %210 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %211 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %210, i32 0, i32 0
  %212 = load i32, i32* %8, align 4
  %213 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %211, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %238

215:                                              ; preds = %158
  store i32 0, i32* %7, align 4
  br label %216

216:                                              ; preds = %231, %215
  %217 = load i32, i32* %7, align 4
  %218 = load i32*, i32** @gr3d_addr_regs, align 8
  %219 = call i32 @ARRAY_SIZE(i32* %218)
  %220 = icmp ult i32 %217, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %216
  %222 = load i32*, i32** @gr3d_addr_regs, align 8
  %223 = load i32, i32* %7, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %228 = getelementptr inbounds %struct.gr3d, %struct.gr3d* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @set_bit(i32 %226, i32 %229)
  br label %231

231:                                              ; preds = %221
  %232 = load i32, i32* %7, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %216

234:                                              ; preds = %216
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = load %struct.gr3d*, %struct.gr3d** %6, align 8
  %237 = call i32 @platform_set_drvdata(%struct.platform_device* %235, %struct.gr3d* %236)
  store i32 0, i32* %2, align 4
  br label %238

238:                                              ; preds = %234, %209, %152, %131, %111, %92, %69, %50, %36, %20
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i8*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_12__*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.gr3d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
