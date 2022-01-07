; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.f71805f_sio_data = type { i64, i32 }
%struct.f71805f_data = type { i8*, i32, i32*, i32, i32, i64 }
%struct.resource = type { i64 }

@f71805f_probe.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"f71805f\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"f71872f\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DRVNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to request region 0x%lx-0x%lx\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@f71805f_group = common dso_local global i32 0, align 4
@f71805f_group_optin = common dso_local global i32* null, align 8
@FAN_CTRL_DC_MODE = common dso_local global i32 0, align 4
@f71805f_attributes_pwm_freq = common dso_local global i32* null, align 8
@FAN_CTRL_MODE_MANUAL = common dso_local global i32 0, align 4
@f71805f_attr_pwm = common dso_local global i32* null, align 8
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"chmod +w pwm%d failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Class registration failed (%d)\0A\00", align 1
@f71805f_group_pwm_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @f71805f_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71805f_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.f71805f_sio_data*, align 8
  %5 = alloca %struct.f71805f_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.f71805f_sio_data* @dev_get_platdata(%struct.TYPE_6__* %10)
  store %struct.f71805f_sio_data* %11, %struct.f71805f_sio_data** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.f71805f_data* @devm_kzalloc(%struct.TYPE_6__* %13, i32 40, i32 %14)
  store %struct.f71805f_data* %15, %struct.f71805f_data** %5, align 8
  %16 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %17 = icmp ne %struct.f71805f_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %295

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_IO, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @DRVNAME, align 4
  %33 = call i32 @devm_request_region(%struct.TYPE_6__* %26, i64 %31, i32 2, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %21
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %48 = add nsw i64 %46, %47
  %49 = add nsw i64 %48, 1
  %50 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %295

53:                                               ; preds = %21
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %58 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %57, i32 0, i32 5
  store i64 %56, i64* %58, align 8
  %59 = load %struct.f71805f_sio_data*, %struct.f71805f_sio_data** %4, align 8
  %60 = getelementptr inbounds %struct.f71805f_sio_data, %struct.f71805f_sio_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* @f71805f_probe.names, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %65 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %67 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %66, i32 0, i32 4
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.f71805f_data* %70)
  %72 = load %struct.f71805f_sio_data*, %struct.f71805f_sio_data** %4, align 8
  %73 = getelementptr inbounds %struct.f71805f_sio_data, %struct.f71805f_sio_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  switch i64 %74, label %103 [
    i64 129, label %75
    i64 128, label %78
  ]

75:                                               ; preds = %53
  %76 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %77 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %76, i32 0, i32 1
  store i32 511, i32* %77, align 8
  br label %103

78:                                               ; preds = %53
  %79 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %80 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %79, i32 0, i32 1
  store i32 1775, i32* %80, align 8
  %81 = load %struct.f71805f_sio_data*, %struct.f71805f_sio_data** %4, align 8
  %82 = getelementptr inbounds %struct.f71805f_sio_data, %struct.f71805f_sio_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %88 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, 16
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %86, %78
  %92 = load %struct.f71805f_sio_data*, %struct.f71805f_sio_data** %4, align 8
  %93 = getelementptr inbounds %struct.f71805f_sio_data, %struct.f71805f_sio_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %99 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, 256
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %53, %102, %75
  %104 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %105 = call i32 @f71805f_init_device(%struct.f71805f_data* %104)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @sysfs_create_group(i32* %108, i32* @f71805f_group)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %2, align 4
  br label %295

114:                                              ; preds = %103
  %115 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %116 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, 16
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** @f71805f_group_optin, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = call i32 @sysfs_create_group(i32* %123, i32* %125)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %269

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %114
  %132 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %133 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 256
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %131
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32*, i32** @f71805f_group_optin, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = call i32 @sysfs_create_group(i32* %140, i32* %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %269

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147, %131
  %149 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %150 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = and i32 %151, 512
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32*, i32** @f71805f_group_optin, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = call i32 @sysfs_create_group(i32* %157, i32* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %269

164:                                              ; preds = %154
  br label %165

165:                                              ; preds = %164, %148
  %166 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %167 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 1024
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  %172 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %173 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32*, i32** @f71805f_group_optin, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = call i32 @sysfs_create_group(i32* %174, i32* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  br label %269

181:                                              ; preds = %171
  br label %182

182:                                              ; preds = %181, %165
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %245, %182
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %186, label %248

186:                                              ; preds = %183
  %187 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %188 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @FAN_CTRL_DC_MODE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %211, label %197

197:                                              ; preds = %186
  %198 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %199 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32*, i32** @f71805f_attributes_pwm_freq, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @sysfs_create_file(i32* %200, i32 %205)
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  br label %269

210:                                              ; preds = %197
  br label %211

211:                                              ; preds = %210, %186
  %212 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %213 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @FAN_CTRL_MODE_MANUAL, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %244

222:                                              ; preds = %211
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32*, i32** @f71805f_attr_pwm, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @S_IRUGO, align 4
  %232 = load i32, i32* @S_IWUSR, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @sysfs_chmod_file(i32* %225, i32 %230, i32 %233)
  store i32 %234, i32* %8, align 4
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %222
  %238 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %239 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %238, i32 0, i32 0
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  %242 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %241)
  br label %269

243:                                              ; preds = %222
  br label %244

244:                                              ; preds = %243, %211
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %183

248:                                              ; preds = %183
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = call i32 @hwmon_device_register(%struct.TYPE_6__* %250)
  %252 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %253 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  %254 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %255 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call i64 @IS_ERR(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %248
  %260 = load %struct.f71805f_data*, %struct.f71805f_data** %5, align 8
  %261 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @PTR_ERR(i32 %262)
  store i32 %263, i32* %8, align 4
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = load i32, i32* %8, align 4
  %267 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_err(%struct.TYPE_6__* %265, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %266)
  br label %269

268:                                              ; preds = %248
  store i32 0, i32* %2, align 4
  br label %295

269:                                              ; preds = %259, %237, %209, %180, %163, %146, %129
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = call i32 @sysfs_remove_group(i32* %272, i32* @f71805f_group)
  store i32 0, i32* %7, align 4
  br label %274

274:                                              ; preds = %286, %269
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %275, 4
  br i1 %276, label %277, label %289

277:                                              ; preds = %274
  %278 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %279 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 0
  %281 = load i32*, i32** @f71805f_group_optin, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = call i32 @sysfs_remove_group(i32* %280, i32* %284)
  br label %286

286:                                              ; preds = %277
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %7, align 4
  br label %274

289:                                              ; preds = %274
  %290 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %291 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = call i32 @sysfs_remove_group(i32* %292, i32* @f71805f_group_pwm_freq)
  %294 = load i32, i32* %8, align 4
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %289, %268, %112, %35, %18
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local %struct.f71805f_sio_data* @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local %struct.f71805f_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.TYPE_6__*, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.f71805f_data*) #1

declare dso_local i32 @f71805f_init_device(%struct.f71805f_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @sysfs_create_file(i32*, i32) #1

declare dso_local i32 @sysfs_chmod_file(i32*, i32, i32) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
