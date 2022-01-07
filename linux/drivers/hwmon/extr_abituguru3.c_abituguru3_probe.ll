; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_abituguru3.c_abituguru3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.platform_device = type { i32 }
%struct.abituguru3_data = type { i8*, %struct.TYPE_14__*, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@__const.abituguru3_probe.no_sysfs_attr = private unnamed_addr constant [3 x i32] [i32 10, i32 8, i32 7], align 4
@__const.abituguru3_probe.sensor_index = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 1], align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ABIT_UGURU3_MISC_BANK = common dso_local global i32 0, align 4
@ABIT_UGURU3_BOARD_ID = common dso_local global i32 0, align 4
@abituguru3_motherboards = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"error unknown motherboard ID: %04X. %s\0A\00", align 1
@report_this = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"found Abit uGuru3, motherboard ID: %04X\0A\00", align 1
@ABIT_UGURU3_SYSFS_NAMES_LENGTH = common dso_local global i32 0, align 4
@ABIT_UGURU3_MAX_NO_SENSORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Fatal error motherboard has more sensors then ABIT_UGURU3_MAX_NO_SENSORS. %s %s\0A\00", align 1
@never_happen = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@abituguru3_sysfs_templ = common dso_local global %struct.TYPE_14__** null, align 8
@.str.3 = private unnamed_addr constant [58 x i8] c"Fatal error ran out of space for sysfs attr names. %s %s\0A\00", align 1
@abituguru3_sysfs_attr = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @abituguru3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abituguru3_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.abituguru3_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [2 x i64], align 16
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([3 x i32]* @__const.abituguru3_probe.no_sysfs_attr to i8*), i64 12, i1 false)
  %18 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([3 x i32]* @__const.abituguru3_probe.sensor_index to i8*), i64 12, i1 false)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.abituguru3_data* @devm_kzalloc(i32* %22, i32 40, i32 %23)
  store %struct.abituguru3_data* %24, %struct.abituguru3_data** %6, align 8
  %25 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %26 = icmp ne %struct.abituguru3_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %344

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_IO, align 4
  %33 = call %struct.TYPE_12__* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %37 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %39 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %38, i32 0, i32 4
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.abituguru3_data* %42)
  %44 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %45 = load i32, i32* @ABIT_UGURU3_MISC_BANK, align 4
  %46 = load i32, i32* @ABIT_UGURU3_BOARD_ID, align 4
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %48 = call i32 @abituguru3_read(%struct.abituguru3_data* %44, i32 %45, i32 %46, i32 2, i64* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  br label %297

52:                                               ; preds = %30
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i32 @abituguru3_update_device(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %297

58:                                               ; preds = %52
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %60 = load i64, i64* %59, align 16
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 8
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = or i32 %62, %65
  store i32 %66, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %86, %58
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** @abituguru3_motherboards, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** @abituguru3_motherboards, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %16, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %89

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %67

89:                                               ; preds = %84, %67
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** @abituguru3_motherboards, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @report_this, align 4
  %100 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99)
  br label %297

101:                                              ; preds = %89
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** @abituguru3_motherboards, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %109 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %108, i32 0, i32 3
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  store i32 0, i32* %12, align 4
  %112 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %113 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %14, align 8
  %115 = load i32, i32* @ABIT_UGURU3_SYSFS_NAMES_LENGTH, align 4
  store i32 %115, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %225, %101
  %117 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %118 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %228

126:                                              ; preds = %116
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ABIT_UGURU3_MAX_NO_SENSORS, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i32, i32* @never_happen, align 4
  %132 = load i32, i32* @report_this, align 4
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132)
  %134 = load i32, i32* @ENAMETOOLONG, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %13, align 4
  br label %297

136:                                              ; preds = %126
  %137 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %138 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %137, i32 0, i32 3
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %216, %136
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %146, %150
  br i1 %151, label %152, label %219

152:                                              ; preds = %145
  %153 = load i8*, i8** %14, align 8
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @abituguru3_sysfs_templ, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %155, i64 %157
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @snprintf(i8* %153, i32 %154, i8* %166, i32 %170)
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  %173 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %174 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i64 %177
  %179 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @abituguru3_sysfs_templ, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %179, i64 %181
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i64 %185
  %187 = bitcast %struct.TYPE_14__* %178 to i8*
  %188 = bitcast %struct.TYPE_14__* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 16, i1 false)
  %189 = load i8*, i8** %14, align 8
  %190 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %191 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %190, i32 0, i32 1
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i8* %189, i8** %198, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %201 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %200, i32 0, i32 1
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i8*, i8** %14, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  store i8* %210, i8** %14, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = sub nsw i32 %212, %211
  store i32 %213, i32* %11, align 4
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %216

216:                                              ; preds = %152
  %217 = load i32, i32* %8, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %8, align 4
  br label %145

219:                                              ; preds = %145
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %116

228:                                              ; preds = %116
  %229 = load i32, i32* %11, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load i32, i32* @never_happen, align 4
  %233 = load i32, i32* @report_this, align 4
  %234 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %232, i32 %233)
  %235 = load i32, i32* @ENAMETOOLONG, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %13, align 4
  br label %297

237:                                              ; preds = %228
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %256, %237
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %12, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %238
  %243 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %244 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %243, i32 0, i32 0
  %245 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %246 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %245, i32 0, i32 1
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = call i64 @device_create_file(i32* %244, %struct.TYPE_13__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %242
  br label %297

255:                                              ; preds = %242
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %238

259:                                              ; preds = %238
  store i32 0, i32* %7, align 4
  br label %260

260:                                              ; preds = %277, %259
  %261 = load i32, i32* %7, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** @abituguru3_sysfs_attr, align 8
  %263 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %262)
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %260
  %266 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %267 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %266, i32 0, i32 0
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** @abituguru3_sysfs_attr, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = call i64 @device_create_file(i32* %267, %struct.TYPE_13__* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %297

276:                                              ; preds = %265
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %260

280:                                              ; preds = %260
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @hwmon_device_register(i32* %282)
  %284 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %285 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %287 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i64 @IS_ERR(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %280
  %292 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %293 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @PTR_ERR(i32 %294)
  store i32 %295, i32* %13, align 4
  br label %297

296:                                              ; preds = %280
  store i32 0, i32* %2, align 4
  br label %344

297:                                              ; preds = %291, %275, %254, %231, %130, %97, %57, %51
  store i32 0, i32* %7, align 4
  br label %298

298:                                              ; preds = %321, %297
  %299 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %300 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %299, i32 0, i32 1
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 0
  %308 = load i8*, i8** %307, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %324

310:                                              ; preds = %298
  %311 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %312 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %311, i32 0, i32 0
  %313 = load %struct.abituguru3_data*, %struct.abituguru3_data** %6, align 8
  %314 = getelementptr inbounds %struct.abituguru3_data, %struct.abituguru3_data* %313, i32 0, i32 1
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %314, align 8
  %316 = load i32, i32* %7, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 1
  %320 = call i32 @device_remove_file(i32* %312, %struct.TYPE_13__* %319)
  br label %321

321:                                              ; preds = %310
  %322 = load i32, i32* %7, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %7, align 4
  br label %298

324:                                              ; preds = %298
  store i32 0, i32* %7, align 4
  br label %325

325:                                              ; preds = %339, %324
  %326 = load i32, i32* %7, align 4
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** @abituguru3_sysfs_attr, align 8
  %328 = call i32 @ARRAY_SIZE(%struct.TYPE_15__* %327)
  %329 = icmp slt i32 %326, %328
  br i1 %329, label %330, label %342

330:                                              ; preds = %325
  %331 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %332 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %331, i32 0, i32 0
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** @abituguru3_sysfs_attr, align 8
  %334 = load i32, i32* %7, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 0
  %338 = call i32 @device_remove_file(i32* %332, %struct.TYPE_13__* %337)
  br label %339

339:                                              ; preds = %330
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %325

342:                                              ; preds = %325
  %343 = load i32, i32* %13, align 4
  store i32 %343, i32* %2, align 4
  br label %344

344:                                              ; preds = %342, %296, %27
  %345 = load i32, i32* %2, align 4
  ret i32 %345
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.abituguru3_data* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local %struct.TYPE_12__* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.abituguru3_data*) #2

declare dso_local i32 @abituguru3_read(%struct.abituguru3_data*, i32, i32, i32, i64*) #2

declare dso_local i32 @abituguru3_update_device(i32*) #2

declare dso_local i32 @pr_err(i8*, i32, i32) #2

declare dso_local i32 @pr_info(i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i64 @device_create_file(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_15__*) #2

declare dso_local i32 @hwmon_device_register(i32*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @device_remove_file(i32*, %struct.TYPE_13__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
