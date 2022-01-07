; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.nct6683_sio_data* }
%struct.nct6683_sio_data = type { i64, i32 }
%struct.nct6683_data = type { i64, i32, %struct.attribute_group**, i64, i64, i64, i64, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IOREGION_LENGTH = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NCT6683_REG_CUSTOMER_ID = common dso_local global i32 0, align 4
@force = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@nct6683_pwm_template_group = common dso_local global i32 0, align 4
@nct6683_in_template_group = common dso_local global i32 0, align 4
@nct6683_fan_template_group = common dso_local global i32 0, align 4
@nct6683_temp_template_group = common dso_local global i32 0, align 4
@nct6683_group_other = common dso_local global %struct.attribute_group zeroinitializer, align 4
@.str = private unnamed_addr constant [15 x i8] c"%02x/%02x/%02x\00", align 1
@NCT6683_REG_BUILD_MONTH = common dso_local global i32 0, align 4
@NCT6683_REG_BUILD_DAY = common dso_local global i32 0, align 4
@NCT6683_REG_BUILD_YEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%02d/%02d/%02d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"%s EC firmware version %d.%d build %s\0A\00", align 1
@nct6683_chip_names = common dso_local global i32* null, align 8
@NCT6683_REG_VERSION_HI = common dso_local global i32 0, align 4
@NCT6683_REG_VERSION_LO = common dso_local global i32 0, align 4
@nct6683_device_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nct6683_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct6683_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nct6683_sio_data*, align 8
  %6 = alloca %struct.attribute_group*, align 8
  %7 = alloca %struct.nct6683_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.nct6683_sio_data*, %struct.nct6683_sio_data** %15, align 8
  store %struct.nct6683_sio_data* %16, %struct.nct6683_sio_data** %5, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_IO, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %9, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.resource*, %struct.resource** %9, align 8
  %22 = getelementptr inbounds %struct.resource, %struct.resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IOREGION_LENGTH, align 4
  %25 = load i32, i32* @DRVNAME, align 4
  %26 = call i32 @devm_request_region(%struct.device* %20, i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %257

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nct6683_data* @devm_kzalloc(%struct.device* %32, i32 72, i32 %33)
  store %struct.nct6683_data* %34, %struct.nct6683_data** %7, align 8
  %35 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %36 = icmp ne %struct.nct6683_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %257

40:                                               ; preds = %31
  %41 = load %struct.nct6683_sio_data*, %struct.nct6683_sio_data** %5, align 8
  %42 = getelementptr inbounds %struct.nct6683_sio_data, %struct.nct6683_sio_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %45 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.nct6683_sio_data*, %struct.nct6683_sio_data** %5, align 8
  %47 = getelementptr inbounds %struct.nct6683_sio_data, %struct.nct6683_sio_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %50 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 8
  %51 = load %struct.resource*, %struct.resource** %9, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %55 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %57 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %56, i32 0, i32 7
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %61 = call i32 @platform_set_drvdata(%struct.platform_device* %59, %struct.nct6683_data* %60)
  %62 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %63 = load i32, i32* @NCT6683_REG_CUSTOMER_ID, align 4
  %64 = call i32 @nct6683_read16(%struct.nct6683_data* %62, i32 %63)
  %65 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %66 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %68 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %72 [
    i32 129, label %70
    i32 128, label %71
  ]

70:                                               ; preds = %40
  br label %79

71:                                               ; preds = %40
  br label %79

72:                                               ; preds = %40
  %73 = load i32, i32* @force, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %257

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %71, %70
  %80 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %81 = call i32 @nct6683_init_device(%struct.nct6683_data* %80)
  %82 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %83 = call i32 @nct6683_setup_fans(%struct.nct6683_data* %82)
  %84 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %85 = call i32 @nct6683_setup_sensors(%struct.nct6683_data* %84)
  %86 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %87 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %79
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %93 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @fls(i64 %94)
  %96 = call %struct.attribute_group* @nct6683_create_attr_group(%struct.device* %91, i32* @nct6683_pwm_template_group, i64 %95)
  store %struct.attribute_group* %96, %struct.attribute_group** %6, align 8
  %97 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %98 = call i64 @IS_ERR(%struct.attribute_group* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %102 = call i32 @PTR_ERR(%struct.attribute_group* %101)
  store i32 %102, i32* %2, align 4
  br label %257

103:                                              ; preds = %90
  %104 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %105 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %106 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %105, i32 0, i32 2
  %107 = load %struct.attribute_group**, %struct.attribute_group*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %107, i64 %110
  store %struct.attribute_group* %104, %struct.attribute_group** %111, align 8
  br label %112

112:                                              ; preds = %103, %79
  %113 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %114 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %120 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = call %struct.attribute_group* @nct6683_create_attr_group(%struct.device* %118, i32* @nct6683_in_template_group, i64 %121)
  store %struct.attribute_group* %122, %struct.attribute_group** %6, align 8
  %123 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %124 = call i64 @IS_ERR(%struct.attribute_group* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %128 = call i32 @PTR_ERR(%struct.attribute_group* %127)
  store i32 %128, i32* %2, align 4
  br label %257

129:                                              ; preds = %117
  %130 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %131 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %132 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %131, i32 0, i32 2
  %133 = load %struct.attribute_group**, %struct.attribute_group*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %133, i64 %136
  store %struct.attribute_group* %130, %struct.attribute_group** %137, align 8
  br label %138

138:                                              ; preds = %129, %112
  %139 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %140 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %138
  %144 = load %struct.device*, %struct.device** %4, align 8
  %145 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %146 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @fls(i64 %147)
  %149 = call %struct.attribute_group* @nct6683_create_attr_group(%struct.device* %144, i32* @nct6683_fan_template_group, i64 %148)
  store %struct.attribute_group* %149, %struct.attribute_group** %6, align 8
  %150 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %151 = call i64 @IS_ERR(%struct.attribute_group* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %143
  %154 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %155 = call i32 @PTR_ERR(%struct.attribute_group* %154)
  store i32 %155, i32* %2, align 4
  br label %257

156:                                              ; preds = %143
  %157 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %158 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %159 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %158, i32 0, i32 2
  %160 = load %struct.attribute_group**, %struct.attribute_group*** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %160, i64 %163
  store %struct.attribute_group* %157, %struct.attribute_group** %164, align 8
  br label %165

165:                                              ; preds = %156, %138
  %166 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %167 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %165
  %171 = load %struct.device*, %struct.device** %4, align 8
  %172 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %173 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = call %struct.attribute_group* @nct6683_create_attr_group(%struct.device* %171, i32* @nct6683_temp_template_group, i64 %174)
  store %struct.attribute_group* %175, %struct.attribute_group** %6, align 8
  %176 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %177 = call i64 @IS_ERR(%struct.attribute_group* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %181 = call i32 @PTR_ERR(%struct.attribute_group* %180)
  store i32 %181, i32* %2, align 4
  br label %257

182:                                              ; preds = %170
  %183 = load %struct.attribute_group*, %struct.attribute_group** %6, align 8
  %184 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %185 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %184, i32 0, i32 2
  %186 = load %struct.attribute_group**, %struct.attribute_group*** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %10, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %186, i64 %189
  store %struct.attribute_group* %183, %struct.attribute_group** %190, align 8
  br label %191

191:                                              ; preds = %182, %165
  %192 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %193 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %192, i32 0, i32 2
  %194 = load %struct.attribute_group**, %struct.attribute_group*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %10, align 4
  %197 = sext i32 %195 to i64
  %198 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %194, i64 %197
  store %struct.attribute_group* @nct6683_group_other, %struct.attribute_group** %198, align 8
  %199 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %200 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 129
  br i1 %202, label %203, label %215

203:                                              ; preds = %191
  %204 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %205 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %206 = load i32, i32* @NCT6683_REG_BUILD_MONTH, align 4
  %207 = call i32 @nct6683_read(%struct.nct6683_data* %205, i32 %206)
  %208 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %209 = load i32, i32* @NCT6683_REG_BUILD_DAY, align 4
  %210 = call i32 @nct6683_read(%struct.nct6683_data* %208, i32 %209)
  %211 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %212 = load i32, i32* @NCT6683_REG_BUILD_YEAR, align 4
  %213 = call i32 @nct6683_read(%struct.nct6683_data* %211, i32 %212)
  %214 = call i32 @scnprintf(i8* %204, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %207, i32 %210, i32 %213)
  br label %227

215:                                              ; preds = %191
  %216 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %217 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %218 = load i32, i32* @NCT6683_REG_BUILD_MONTH, align 4
  %219 = call i32 @nct6683_read(%struct.nct6683_data* %217, i32 %218)
  %220 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %221 = load i32, i32* @NCT6683_REG_BUILD_DAY, align 4
  %222 = call i32 @nct6683_read(%struct.nct6683_data* %220, i32 %221)
  %223 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %224 = load i32, i32* @NCT6683_REG_BUILD_YEAR, align 4
  %225 = call i32 @nct6683_read(%struct.nct6683_data* %223, i32 %224)
  %226 = call i32 @scnprintf(i8* %216, i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %219, i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %215, %203
  %228 = load %struct.device*, %struct.device** %4, align 8
  %229 = load i32*, i32** @nct6683_chip_names, align 8
  %230 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %231 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = getelementptr inbounds i32, i32* %229, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %236 = load i32, i32* @NCT6683_REG_VERSION_HI, align 4
  %237 = call i32 @nct6683_read(%struct.nct6683_data* %235, i32 %236)
  %238 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %239 = load i32, i32* @NCT6683_REG_VERSION_LO, align 4
  %240 = call i32 @nct6683_read(%struct.nct6683_data* %238, i32 %239)
  %241 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %242 = call i32 @dev_info(%struct.device* %228, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %234, i32 %237, i32 %240, i8* %241)
  %243 = load %struct.device*, %struct.device** %4, align 8
  %244 = load i32*, i32** @nct6683_device_names, align 8
  %245 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %246 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %251 = load %struct.nct6683_data*, %struct.nct6683_data** %7, align 8
  %252 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %251, i32 0, i32 2
  %253 = load %struct.attribute_group**, %struct.attribute_group*** %252, align 8
  %254 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %243, i32 %249, %struct.nct6683_data* %250, %struct.attribute_group** %253)
  store %struct.device* %254, %struct.device** %8, align 8
  %255 = load %struct.device*, %struct.device** %8, align 8
  %256 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %255)
  store i32 %256, i32* %2, align 4
  br label %257

257:                                              ; preds = %227, %179, %153, %126, %100, %75, %37, %28
  %258 = load i32, i32* %2, align 4
  ret i32 %258
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.nct6683_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nct6683_data*) #1

declare dso_local i32 @nct6683_read16(%struct.nct6683_data*, i32) #1

declare dso_local i32 @nct6683_init_device(%struct.nct6683_data*) #1

declare dso_local i32 @nct6683_setup_fans(%struct.nct6683_data*) #1

declare dso_local i32 @nct6683_setup_sensors(%struct.nct6683_data*) #1

declare dso_local %struct.attribute_group* @nct6683_create_attr_group(%struct.device*, i32*, i64) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i64 @IS_ERR(%struct.attribute_group*) #1

declare dso_local i32 @PTR_ERR(%struct.attribute_group*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nct6683_read(%struct.nct6683_data*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i8*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.nct6683_data*, %struct.attribute_group**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
