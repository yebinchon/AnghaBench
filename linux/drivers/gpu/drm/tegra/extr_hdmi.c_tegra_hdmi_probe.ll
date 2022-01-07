; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_hdmi = type { i32, i32, i32, %struct.TYPE_4__, i32*, i8*, %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to get reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to setup clocks: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"failed to get HDMI regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to get PLL regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to get VDD regulator\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra_hdmi_irq = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"failed to request IRQ#%u: %d\0A\00", align 1
@hdmi_client_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"failed to register host1x client: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_hdmi*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra_hdmi* @devm_kzalloc(i32* %8, i32 120, i32 %9)
  store %struct.tegra_hdmi* %10, %struct.tegra_hdmi** %4, align 8
  %11 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %12 = icmp ne %struct.tegra_hdmi* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %258

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @of_device_get_match_data(i32* %18)
  %20 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %20, i32 0, i32 14
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @AUTO, align 4
  %27 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %27, i32 0, i32 13
  store i32 %26, i32* %28, align 8
  %29 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i8* @devm_clk_get(i32* %34, i8* null)
  %36 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %36, i32 0, i32 11
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %38, i32 0, i32 11
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %16
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %47, i32 0, i32 11
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %258

51:                                               ; preds = %16
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i8* @devm_reset_control_get(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %55, i32 0, i32 12
  store i8* %54, i8** %56, align 8
  %57 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %57, i32 0, i32 12
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @IS_ERR(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %66, i32 0, i32 12
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %258

70:                                               ; preds = %51
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i8* @devm_clk_get(i32* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %74, i32 0, i32 10
  store i8* %73, i8** %75, align 8
  %76 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %76, i32 0, i32 10
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @IS_ERR(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %70
  %82 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %82, i32 0, i32 10
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  store i32 %85, i32* %2, align 4
  br label %258

86:                                               ; preds = %70
  %87 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %87, i32 0, i32 11
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %90, i32 0, i32 10
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @clk_set_parent(i8* %89, i8* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %6, align 4
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %258

102:                                              ; preds = %86
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i8* @devm_regulator_get(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %106, i32 0, i32 9
  store i8* %105, i8** %107, align 8
  %108 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %109 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %108, i32 0, i32 9
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %117 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %117, i32 0, i32 9
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @PTR_ERR(i8* %119)
  store i32 %120, i32* %2, align 4
  br label %258

121:                                              ; preds = %102
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i8* @devm_regulator_get(i32* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %125 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %126 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %127, i32 0, i32 8
  %129 = load i8*, i8** %128, align 8
  %130 = call i64 @IS_ERR(i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %121
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %136 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %137 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %136, i32 0, i32 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @PTR_ERR(i8* %138)
  store i32 %139, i32* %2, align 4
  br label %258

140:                                              ; preds = %121
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i8* @devm_regulator_get(i32* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %144 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %145 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %144, i32 0, i32 7
  store i8* %143, i8** %145, align 8
  %146 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %147 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %146, i32 0, i32 7
  %148 = load i8*, i8** %147, align 8
  %149 = call i64 @IS_ERR(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %140
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = call i32 (i32*, i8*, ...) @dev_err(i32* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %155 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %156 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %155, i32 0, i32 7
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @PTR_ERR(i8* %157)
  store i32 %158, i32* %2, align 4
  br label %258

159:                                              ; preds = %140
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %163 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store i32* %161, i32** %164, align 8
  %165 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %166 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %165, i32 0, i32 6
  %167 = call i32 @tegra_output_probe(%struct.TYPE_3__* %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %2, align 4
  br label %258

172:                                              ; preds = %159
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load i32, i32* @IORESOURCE_MEM, align 4
  %175 = call %struct.resource* @platform_get_resource(%struct.platform_device* %173, i32 %174, i32 0)
  store %struct.resource* %175, %struct.resource** %5, align 8
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = load %struct.resource*, %struct.resource** %5, align 8
  %179 = call i8* @devm_ioremap_resource(i32* %177, %struct.resource* %178)
  %180 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %181 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %180, i32 0, i32 5
  store i8* %179, i8** %181, align 8
  %182 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %183 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %182, i32 0, i32 5
  %184 = load i8*, i8** %183, align 8
  %185 = call i64 @IS_ERR(i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %172
  %188 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %189 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %188, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @PTR_ERR(i8* %190)
  store i32 %191, i32* %2, align 4
  br label %258

192:                                              ; preds = %172
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = call i32 @platform_get_irq(%struct.platform_device* %193, i32 0)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %2, align 4
  br label %258

199:                                              ; preds = %192
  %200 = load i32, i32* %6, align 4
  %201 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %202 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %204 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %207 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @tegra_hdmi_irq, align 4
  %210 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %211 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %210, i32 0, i32 4
  %212 = load i32*, i32** %211, align 8
  %213 = call i32 @dev_name(i32* %212)
  %214 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %215 = call i32 @devm_request_irq(i32* %205, i32 %208, i32 %209, i32 0, i32 %213, %struct.tegra_hdmi* %214)
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %6, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %199
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %222 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = call i32 (i32*, i8*, ...) @dev_err(i32* %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i32, i32* %6, align 4
  store i32 %226, i32* %2, align 4
  br label %258

227:                                              ; preds = %199
  %228 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %229 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %230 = call i32 @platform_set_drvdata(%struct.platform_device* %228, %struct.tegra_hdmi* %229)
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %231, i32 0, i32 0
  %233 = call i32 @pm_runtime_enable(i32* %232)
  %234 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %235 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = call i32 @INIT_LIST_HEAD(i32* %236)
  %238 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %239 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 1
  store i32* @hdmi_client_ops, i32** %240, align 8
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %241, i32 0, i32 0
  %243 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %244 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  store i32* %242, i32** %245, align 8
  %246 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %4, align 8
  %247 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %246, i32 0, i32 3
  %248 = call i32 @host1x_client_register(%struct.TYPE_4__* %247)
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %227
  %252 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = load i32, i32* %6, align 4
  %255 = call i32 (i32*, i8*, ...) @dev_err(i32* %253, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* %6, align 4
  store i32 %256, i32* %2, align 4
  br label %258

257:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %251, %218, %197, %187, %170, %151, %132, %113, %96, %81, %62, %43, %13
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.tegra_hdmi* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_device_get_match_data(i32*) #1

declare dso_local i8* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(i32*, i8*) #1

declare dso_local i32 @clk_set_parent(i8*, i8*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @tegra_output_probe(%struct.TYPE_3__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.tegra_hdmi*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra_hdmi*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @host1x_client_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
