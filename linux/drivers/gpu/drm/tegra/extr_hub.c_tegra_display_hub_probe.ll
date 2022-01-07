; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hub.c_tegra_display_hub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_display_hub = type { i32, %struct.TYPE_13__, %struct.clk*, %struct.clk**, %struct.tegra_windowgroup*, %struct.TYPE_12__*, %struct.clk*, %struct.clk*, %struct.clk* }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i32*, i32 }
%struct.tegra_windowgroup = type { i32, %struct.clk*, i64, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"disp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dsc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"wgrp%u\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"failed to find node for head %u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to get clock for head %u\0A\00", align 1
@tegra_display_hub_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_display_hub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_display_hub_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tegra_display_hub*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_windowgroup*, align 8
  %10 = alloca [8 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.device_node* null, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tegra_display_hub* @devm_kzalloc(%struct.TYPE_11__* %12, i32 88, i32 %13)
  store %struct.tegra_display_hub* %14, %struct.tegra_display_hub** %5, align 8
  %15 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %16 = icmp ne %struct.tegra_display_hub* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %300

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.TYPE_12__* @of_device_get_match_data(%struct.TYPE_11__* %22)
  %24 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %24, i32 0, i32 5
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i8* @devm_clk_get(%struct.TYPE_11__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %29 = bitcast i8* %28 to %struct.clk*
  %30 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %30, i32 0, i32 8
  store %struct.clk* %29, %struct.clk** %31, align 8
  %32 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %32, i32 0, i32 8
  %34 = load %struct.clk*, %struct.clk** %33, align 8
  %35 = call i64 @IS_ERR(%struct.clk* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %39 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %38, i32 0, i32 8
  %40 = load %struct.clk*, %struct.clk** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.clk* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %300

43:                                               ; preds = %20
  %44 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %45 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %44, i32 0, i32 5
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i8* @devm_clk_get(%struct.TYPE_11__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %54 = bitcast i8* %53 to %struct.clk*
  %55 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %56 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %55, i32 0, i32 7
  store %struct.clk* %54, %struct.clk** %56, align 8
  %57 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %57, i32 0, i32 7
  %59 = load %struct.clk*, %struct.clk** %58, align 8
  %60 = call i64 @IS_ERR(%struct.clk* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %63, i32 0, i32 7
  %65 = load %struct.clk*, %struct.clk** %64, align 8
  %66 = call i32 @PTR_ERR(%struct.clk* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %300

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i8* @devm_clk_get(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %73 = bitcast i8* %72 to %struct.clk*
  %74 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %75 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %74, i32 0, i32 6
  store %struct.clk* %73, %struct.clk** %75, align 8
  %76 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %76, i32 0, i32 6
  %78 = load %struct.clk*, %struct.clk** %77, align 8
  %79 = call i64 @IS_ERR(%struct.clk* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %82, i32 0, i32 6
  %84 = load %struct.clk*, %struct.clk** %83, align 8
  %85 = call i32 @PTR_ERR(%struct.clk* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %300

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i8* @devm_reset_control_get(%struct.TYPE_11__* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = bitcast i8* %90 to %struct.clk*
  %92 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %93 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %92, i32 0, i32 2
  store %struct.clk* %91, %struct.clk** %93, align 8
  %94 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %95 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %94, i32 0, i32 2
  %96 = load %struct.clk*, %struct.clk** %95, align 8
  %97 = call i64 @IS_ERR(%struct.clk* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %87
  %100 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %101 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %100, i32 0, i32 2
  %102 = load %struct.clk*, %struct.clk** %101, align 8
  %103 = call i32 @PTR_ERR(%struct.clk* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %300

105:                                              ; preds = %87
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %109 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %108, i32 0, i32 5
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @GFP_KERNEL, align 4
  %114 = call i8* @devm_kcalloc(%struct.TYPE_11__* %107, i32 %112, i32 32, i32 %113)
  %115 = bitcast i8* %114 to %struct.tegra_windowgroup*
  %116 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %117 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %116, i32 0, i32 4
  store %struct.tegra_windowgroup* %115, %struct.tegra_windowgroup** %117, align 8
  %118 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %119 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %118, i32 0, i32 4
  %120 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %119, align 8
  %121 = icmp ne %struct.tegra_windowgroup* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %105
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %300

125:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %179, %125
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %129 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %128, i32 0, i32 5
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %134, label %182

134:                                              ; preds = %126
  %135 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %136 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %135, i32 0, i32 4
  %137 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %137, i64 %139
  store %struct.tegra_windowgroup* %140, %struct.tegra_windowgroup** %9, align 8
  %141 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @snprintf(i8* %141, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  %144 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %145 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %144, i32 0, i32 3
  %146 = call i32 @mutex_init(i32* %145)
  %147 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %148 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %151 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %155 = call i8* @devm_reset_control_get(%struct.TYPE_11__* %153, i8* %154)
  %156 = bitcast i8* %155 to %struct.clk*
  %157 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %158 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %157, i32 0, i32 1
  store %struct.clk* %156, %struct.clk** %158, align 8
  %159 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %160 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %159, i32 0, i32 1
  %161 = load %struct.clk*, %struct.clk** %160, align 8
  %162 = call i64 @IS_ERR(%struct.clk* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %134
  %165 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %166 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %165, i32 0, i32 1
  %167 = load %struct.clk*, %struct.clk** %166, align 8
  %168 = call i32 @PTR_ERR(%struct.clk* %167)
  store i32 %168, i32* %2, align 4
  br label %300

169:                                              ; preds = %134
  %170 = load %struct.tegra_windowgroup*, %struct.tegra_windowgroup** %9, align 8
  %171 = getelementptr inbounds %struct.tegra_windowgroup, %struct.tegra_windowgroup* %170, i32 0, i32 1
  %172 = load %struct.clk*, %struct.clk** %171, align 8
  %173 = call i32 @reset_control_assert(%struct.clk* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %8, align 4
  store i32 %177, i32* %2, align 4
  br label %300

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %7, align 4
  %181 = add i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %126

182:                                              ; preds = %126
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @of_get_child_count(i32 %186)
  %188 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %189 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %190, i32 0, i32 0
  %192 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %193 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call i8* @devm_kcalloc(%struct.TYPE_11__* %191, i32 %194, i32 8, i32 %195)
  %197 = bitcast i8* %196 to %struct.clk**
  %198 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %199 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %198, i32 0, i32 3
  store %struct.clk** %197, %struct.clk*** %199, align 8
  %200 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %201 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %200, i32 0, i32 3
  %202 = load %struct.clk**, %struct.clk*** %201, align 8
  %203 = icmp ne %struct.clk** %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %182
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %300

207:                                              ; preds = %182
  store i32 0, i32* %7, align 4
  br label %208

208:                                              ; preds = %255, %207
  %209 = load i32, i32* %7, align 4
  %210 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %211 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ult i32 %209, %212
  br i1 %213, label %214, label %258

214:                                              ; preds = %208
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.device_node*, %struct.device_node** %4, align 8
  %220 = call %struct.device_node* @of_get_next_child(i32 %218, %struct.device_node* %219)
  store %struct.device_node* %220, %struct.device_node** %4, align 8
  %221 = load %struct.device_node*, %struct.device_node** %4, align 8
  %222 = icmp ne %struct.device_node* %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %214
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load i32, i32* %7, align 4
  %227 = call i32 @dev_err(%struct.TYPE_11__* %225, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @ENODEV, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %300

230:                                              ; preds = %214
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = load %struct.device_node*, %struct.device_node** %4, align 8
  %234 = call %struct.clk* @devm_get_clk_from_child(%struct.TYPE_11__* %232, %struct.device_node* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store %struct.clk* %234, %struct.clk** %6, align 8
  %235 = load %struct.clk*, %struct.clk** %6, align 8
  %236 = call i64 @IS_ERR(%struct.clk* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %230
  %239 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %240 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %239, i32 0, i32 0
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @dev_err(%struct.TYPE_11__* %240, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %241)
  %243 = load %struct.device_node*, %struct.device_node** %4, align 8
  %244 = call i32 @of_node_put(%struct.device_node* %243)
  %245 = load %struct.clk*, %struct.clk** %6, align 8
  %246 = call i32 @PTR_ERR(%struct.clk* %245)
  store i32 %246, i32* %2, align 4
  br label %300

247:                                              ; preds = %230
  %248 = load %struct.clk*, %struct.clk** %6, align 8
  %249 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %250 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %249, i32 0, i32 3
  %251 = load %struct.clk**, %struct.clk*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.clk*, %struct.clk** %251, i64 %253
  store %struct.clk* %248, %struct.clk** %254, align 8
  br label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %7, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %208

258:                                              ; preds = %208
  %259 = load %struct.device_node*, %struct.device_node** %4, align 8
  %260 = call i32 @of_node_put(%struct.device_node* %259)
  %261 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %262 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %261, i32 0, i32 2
  %263 = load %struct.clk*, %struct.clk** %262, align 8
  %264 = call i32 @reset_control_assert(%struct.clk* %263)
  store i32 %264, i32* %8, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp slt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %258
  %268 = load i32, i32* %8, align 4
  store i32 %268, i32* %2, align 4
  br label %300

269:                                              ; preds = %258
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %272 = call i32 @platform_set_drvdata(%struct.platform_device* %270, %struct.tegra_display_hub* %271)
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %273, i32 0, i32 0
  %275 = call i32 @pm_runtime_enable(%struct.TYPE_11__* %274)
  %276 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %277 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = call i32 @INIT_LIST_HEAD(i32* %278)
  %280 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %281 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  store i32* @tegra_display_hub_ops, i32** %282, align 8
  %283 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %284 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %283, i32 0, i32 0
  %285 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %286 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 0
  store %struct.TYPE_11__* %284, %struct.TYPE_11__** %287, align 8
  %288 = load %struct.tegra_display_hub*, %struct.tegra_display_hub** %5, align 8
  %289 = getelementptr inbounds %struct.tegra_display_hub, %struct.tegra_display_hub* %288, i32 0, i32 1
  %290 = call i32 @host1x_client_register(%struct.TYPE_13__* %289)
  store i32 %290, i32* %8, align 4
  %291 = load i32, i32* %8, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %269
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 0
  %296 = load i32, i32* %8, align 4
  %297 = call i32 @dev_err(%struct.TYPE_11__* %295, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %293, %269
  %299 = load i32, i32* %8, align 4
  store i32 %299, i32* %2, align 4
  br label %300

300:                                              ; preds = %298, %267, %238, %223, %204, %176, %164, %122, %99, %81, %62, %37, %17
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local %struct.tegra_display_hub* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @reset_control_assert(%struct.clk*) #1

declare dso_local i32 @of_get_child_count(i32) #1

declare dso_local %struct.device_node* @of_get_next_child(i32, %struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local %struct.clk* @devm_get_clk_from_child(%struct.TYPE_11__*, %struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_display_hub*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_11__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
