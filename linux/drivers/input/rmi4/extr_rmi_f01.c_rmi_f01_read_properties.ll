; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_read_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_read_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.f01_basic_properties = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32 }

@RMI_F01_BASIC_QUERY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to read device query registers: %d\0A\00", align 1
@RMI_F01_QRY1_HAS_LTS = common dso_local global i32 0, align 4
@RMI_F01_QRY1_HAS_ADJ_DOZE = common dso_local global i32 0, align 4
@RMI_F01_QRY1_HAS_ADJ_DOZE_HOFF = common dso_local global i32 0, align 4
@RMI_F01_QRY1_HAS_QUERY42 = common dso_local global i32 0, align 4
@RMI_F01_QRY1_HAS_SENSOR_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"20%02d/%02d/%02d\00", align 1
@RMI_F01_QRY5_YEAR_MASK = common dso_local global i32 0, align 4
@RMI_F01_QRY6_MONTH_MASK = common dso_local global i32 0, align 4
@RMI_F01_QRY7_DAY_MASK = common dso_local global i32 0, align 4
@RMI_PRODUCT_ID_LENGTH = common dso_local global i64 0, align 8
@RMI_F01_QRY2_PRODINFO_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to read query 42 register: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to read DS4 queries length: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to read DS4 queries: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to read package info: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to read product info: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_device*, i32, %struct.f01_basic_properties*)* @rmi_f01_read_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f01_read_properties(%struct.rmi_device* %0, i32 %1, %struct.f01_basic_properties* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.f01_basic_properties*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.f01_basic_properties* %2, %struct.f01_basic_properties** %7, align 8
  %20 = load i32, i32* @RMI_F01_BASIC_QUERY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %8, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @RMI_F01_BASIC_QUERY_LEN, align 4
  %28 = call i32 @rmi_read_block(%struct.rmi_device* %25, i32 %26, i32* %23, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %33 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

37:                                               ; preds = %3
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 17
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* @RMI_F01_BASIC_QUERY_LEN, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = getelementptr inbounds i32, i32* %23, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %46 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = getelementptr inbounds i32, i32* %23, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RMI_F01_QRY1_HAS_LTS, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %52 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %23, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RMI_F01_QRY1_HAS_ADJ_DOZE, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %58 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds i32, i32* %23, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RMI_F01_QRY1_HAS_ADJ_DOZE_HOFF, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %64 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %23, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RMI_F01_QRY1_HAS_QUERY42, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %13, align 4
  %69 = getelementptr inbounds i32, i32* %23, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RMI_F01_QRY1_HAS_SENSOR_ID, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %14, align 4
  %73 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %74 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %23, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RMI_F01_QRY5_YEAR_MASK, align 4
  %79 = and i32 %77, %78
  %80 = getelementptr inbounds i32, i32* %23, i64 6
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @RMI_F01_QRY6_MONTH_MASK, align 4
  %83 = and i32 %81, %82
  %84 = getelementptr inbounds i32, i32* %23, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RMI_F01_QRY7_DAY_MASK, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @snprintf(i32 %75, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %83, i32 %87)
  %89 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %90 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i32, i32* %23, i64 11
  %93 = load i64, i64* @RMI_PRODUCT_ID_LENGTH, align 8
  %94 = call i32 @memcpy(i8* %91, i32* %92, i64 %93)
  %95 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %96 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = load i64, i64* @RMI_PRODUCT_ID_LENGTH, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8 0, i8* %99, align 1
  %100 = getelementptr inbounds i32, i32* %23, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RMI_F01_QRY2_PRODINFO_MASK, align 4
  %103 = and i32 %101, %102
  %104 = shl i32 %103, 7
  %105 = getelementptr inbounds i32, i32* %23, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @RMI_F01_QRY2_PRODINFO_MASK, align 4
  %108 = and i32 %106, %107
  %109 = or i32 %104, %108
  %110 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %111 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %37
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %114, %37
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %117
  %121 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @rmi_read(%struct.rmi_device* %121, i32 %122, i32* %23)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %128 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %127, i32 0, i32 0
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

132:                                              ; preds = %120
  %133 = getelementptr inbounds i32, i32* %23, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = call i32 @BIT(i32 0)
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %132, %117
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %245

146:                                              ; preds = %143
  %147 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @rmi_read(%struct.rmi_device* %147, i32 %148, i32* %18)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %154 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %153, i32 0, i32 0
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

158:                                              ; preds = %146
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %192

163:                                              ; preds = %158
  %164 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @rmi_read(%struct.rmi_device* %164, i32 %165, i32* %23)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %171 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %170, i32 0, i32 0
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

175:                                              ; preds = %163
  %176 = getelementptr inbounds i32, i32* %23, i64 0
  %177 = load i32, i32* %176, align 16
  %178 = call i32 @BIT(i32 0)
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  store i32 %183, i32* %15, align 4
  %184 = getelementptr inbounds i32, i32* %23, i64 0
  %185 = load i32, i32* %184, align 16
  %186 = call i32 @BIT(i32 1)
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %175, %158
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %213

195:                                              ; preds = %192
  %196 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @rmi_read_block(%struct.rmi_device* %196, i32 %197, i32* %23, i32 4)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %203 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %202, i32 0, i32 0
  %204 = load i32, i32* %10, align 4
  %205 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

207:                                              ; preds = %195
  %208 = call i32 @get_unaligned_le64(i32* %23)
  %209 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %210 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %17, align 4
  br label %213

213:                                              ; preds = %207, %192
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %213
  %217 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %218 = load i32, i32* %17, align 4
  %219 = call i32 @rmi_read_block(%struct.rmi_device* %217, i32 %218, i32* %23, i32 3)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %224 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %223, i32 0, i32 0
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @dev_err(i32* %224, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

228:                                              ; preds = %216
  %229 = getelementptr inbounds i32, i32* %23, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = shl i32 %230, 8
  %232 = getelementptr inbounds i32, i32* %23, i64 0
  %233 = load i32, i32* %232, align 16
  %234 = or i32 %231, %233
  %235 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %236 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 4
  %237 = getelementptr inbounds i32, i32* %23, i64 2
  %238 = load i32, i32* %237, align 8
  %239 = mul nsw i32 %238, 65536
  %240 = load %struct.f01_basic_properties*, %struct.f01_basic_properties** %7, align 8
  %241 = getelementptr inbounds %struct.f01_basic_properties, %struct.f01_basic_properties* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %228, %213
  br label %245

245:                                              ; preds = %244, %143
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %246

246:                                              ; preds = %245, %222, %201, %169, %152, %126, %31
  %247 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %247)
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rmi_read_block(%struct.rmi_device*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @rmi_read(%struct.rmi_device*, i32, i32*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @get_unaligned_le64(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
