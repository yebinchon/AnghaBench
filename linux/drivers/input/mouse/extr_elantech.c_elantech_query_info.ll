; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_query_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elantech.c_elantech_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }
%struct.elantech_device_info = type { i8, i32, i32*, i32*, i32, i32, i32, i32, i32, i8, i8, i8, i32, i64 (%struct.psmouse*, i32, i8*)*, i32, i32, i32 }

@ETP_FW_VERSION_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to query firmware version.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unknown hardware version, aborting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"assuming hardware version %d (with firmware version 0x%02x%02x%02x)\0A\00", align 1
@ETP_CAPABILITIES_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to query capabilities.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\0A\00", align 1
@ETP_SAMPLE_QUERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to query sample data\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Elan sample query result %02x, %02x, %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"absolute mode broken, forcing standard PS/2 protocol\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to query resolution data.\0A\00", align 1
@ETP_XMIN_V1 = common dso_local global i32 0, align 4
@ETP_YMIN_V1 = common dso_local global i32 0, align 4
@ETP_XMAX_V1 = common dso_local global i32 0, align 4
@ETP_YMAX_V1 = common dso_local global i32 0, align 4
@ETP_XMIN_V2 = common dso_local global i32 0, align 4
@ETP_YMIN_V2 = common dso_local global i32 0, align 4
@ETP_XMAX_V2 = common dso_local global i32 0, align 4
@ETP_YMAX_V2 = common dso_local global i32 0, align 4
@ETP_FW_ID_QUERY = common dso_local global i32 0, align 4
@elantech_dmi_has_middle_button = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, %struct.elantech_device_info*)* @elantech_query_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elantech_query_info(%struct.psmouse* %0, %struct.elantech_device_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca %struct.elantech_device_info*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store %struct.elantech_device_info* %1, %struct.elantech_device_info** %5, align 8
  %10 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %11 = call i32 @memset(%struct.elantech_device_info* %10, i32 0, i32 80)
  %12 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %13 = load i32, i32* @ETP_FW_VERSION_QUERY, align 4
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %15 = call i64 @synaptics_send_cmd(%struct.psmouse* %12, i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %19 = call i32 @psmouse_err(%struct.psmouse* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %515

22:                                               ; preds = %2
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 16
  %27 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %26, %30
  %32 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %31, %34
  %36 = trunc i32 %35 to i8
  %37 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %38 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 8
  %39 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %40 = call i64 @elantech_set_properties(%struct.elantech_device_info* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %44 = call i32 @psmouse_err(%struct.psmouse* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %515

47:                                               ; preds = %22
  %48 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %49 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %50 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_info(%struct.psmouse* %48, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %54, i32 %57, i32 %60)
  %62 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %63 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %62, i32 0, i32 13
  %64 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %63, align 8
  %65 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %66 = load i32, i32* @ETP_CAPABILITIES_QUERY, align 4
  %67 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %68 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = call i64 %64(%struct.psmouse* %65, i32 %66, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %47
  %74 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %75 = call i32 @psmouse_err(%struct.psmouse* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %515

78:                                               ; preds = %47
  %79 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %80 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %81 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %86 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %91 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_info(%struct.psmouse* %79, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %89, i32 %94)
  %96 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %97 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 1
  br i1 %99, label %100, label %135

100:                                              ; preds = %78
  %101 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %102 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %101, i32 0, i32 13
  %103 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %102, align 8
  %104 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %105 = load i32, i32* @ETP_SAMPLE_QUERY, align 4
  %106 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %107 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = call i64 %103(%struct.psmouse* %104, i32 %105, i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %100
  %113 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %114 = call i32 @psmouse_err(%struct.psmouse* %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %515

117:                                              ; preds = %100
  %118 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %119 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %120 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %125 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %130 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_info(%struct.psmouse* %118, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %123, i32 %128, i32 %133)
  br label %135

135:                                              ; preds = %117, %78
  %136 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %137 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 116
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %144 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %149 = call i32 (%struct.psmouse*, i8*, ...) @psmouse_info(%struct.psmouse* %148, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %515

152:                                              ; preds = %142, %135
  %153 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %154 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 128
  %159 = icmp eq i32 %158, 128
  %160 = zext i1 %159 to i32
  %161 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %162 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %164 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %163, i32 0, i32 5
  store i32 31, i32* %164, align 4
  %165 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %166 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %165, i32 0, i32 6
  store i32 31, i32* %166, align 8
  %167 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %168 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 4
  br i1 %170, label %171, label %185

171:                                              ; preds = %152
  %172 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %173 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %174 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %173, i32 0, i32 5
  %175 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %176 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %175, i32 0, i32 6
  %177 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %178 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %177, i32 0, i32 16
  %179 = call i64 @elantech_get_resolution_v4(%struct.psmouse* %172, i32* %174, i32* %176, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %183 = call i32 @psmouse_warn(%struct.psmouse* %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %171
  br label %185

185:                                              ; preds = %184, %152
  %186 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %187 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  switch i32 %188, label %492 [
    i32 1, label %189
    i32 2, label %202
    i32 3, label %368
    i32 4, label %403
  ]

189:                                              ; preds = %185
  %190 = load i32, i32* @ETP_XMIN_V1, align 4
  %191 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %192 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %191, i32 0, i32 15
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @ETP_YMIN_V1, align 4
  %194 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %195 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %194, i32 0, i32 14
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* @ETP_XMAX_V1, align 4
  %197 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %198 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* @ETP_YMAX_V1, align 4
  %200 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %201 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %200, i32 0, i32 8
  store i32 %199, i32* %201, align 8
  br label %492

202:                                              ; preds = %185
  %203 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %204 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 8
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 133120
  br i1 %207, label %220, label %208

208:                                              ; preds = %202
  %209 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %210 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %209, i32 0, i32 0
  %211 = load i8, i8* %210, align 8
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 133888
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %216 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %215, i32 0, i32 0
  %217 = load i8, i8* %216, align 8
  %218 = zext i8 %217 to i32
  %219 = icmp eq i32 %218, 131120
  br i1 %219, label %220, label %233

220:                                              ; preds = %214, %208, %202
  %221 = load i32, i32* @ETP_XMIN_V2, align 4
  %222 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %223 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %222, i32 0, i32 15
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @ETP_YMIN_V2, align 4
  %225 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %226 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %225, i32 0, i32 14
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* @ETP_XMAX_V2, align 4
  %228 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %229 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @ETP_YMAX_V2, align 4
  %231 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %232 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  br label %367

233:                                              ; preds = %214
  %234 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %235 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %234, i32 0, i32 0
  %236 = load i8, i8* %235, align 8
  %237 = zext i8 %236 to i32
  %238 = icmp sgt i32 %237, 133120
  br i1 %238, label %239, label %245

239:                                              ; preds = %233
  %240 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %241 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %240, i32 0, i32 0
  %242 = load i8, i8* %241, align 8
  %243 = zext i8 %242 to i32
  %244 = icmp slt i32 %243, 133376
  br label %245

245:                                              ; preds = %239, %233
  %246 = phi i1 [ false, %233 ], [ %244, %239 ]
  %247 = zext i1 %246 to i64
  %248 = select i1 %246, i32 1, i32 2
  store i32 %248, i32* %8, align 4
  %249 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %250 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %249, i32 0, i32 13
  %251 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %250, align 8
  %252 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %253 = load i32, i32* @ETP_FW_ID_QUERY, align 4
  %254 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %255 = call i64 %251(%struct.psmouse* %252, i32 %253, i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %245
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %3, align 4
  br label %515

260:                                              ; preds = %245
  %261 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = and i32 %263, 16
  store i32 %264, i32* %9, align 4
  %265 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %266 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %265, i32 0, i32 0
  %267 = load i8, i8* %266, align 8
  %268 = zext i8 %267 to i32
  %269 = ashr i32 %268, 16
  %270 = icmp eq i32 %269, 20
  br i1 %270, label %271, label %315

271:                                              ; preds = %260
  %272 = load i32, i32* %9, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %315

274:                                              ; preds = %271
  %275 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %276 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %275, i32 0, i32 13
  %277 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %276, align 8
  %278 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %279 = load i32, i32* @ETP_SAMPLE_QUERY, align 4
  %280 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %281 = call i64 %277(%struct.psmouse* %278, i32 %279, i8* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %274
  %284 = load i32, i32* @EINVAL, align 4
  %285 = sub nsw i32 0, %284
  store i32 %285, i32* %3, align 4
  br label %515

286:                                              ; preds = %274
  %287 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %288 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %8, align 4
  %293 = sub nsw i32 %291, %292
  %294 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = mul nsw i32 %293, %296
  %298 = sdiv i32 %297, 2
  %299 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %300 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %299, i32 0, i32 7
  store i32 %298, i32* %300, align 4
  %301 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %302 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %8, align 4
  %307 = sub nsw i32 %305, %306
  %308 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = mul nsw i32 %307, %310
  %312 = sdiv i32 %311, 2
  %313 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %314 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %313, i32 0, i32 8
  store i32 %312, i32* %314, align 8
  br label %366

315:                                              ; preds = %271, %260
  %316 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %317 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %316, i32 0, i32 0
  %318 = load i8, i8* %317, align 8
  %319 = zext i8 %318 to i32
  %320 = icmp eq i32 %319, 262678
  br i1 %320, label %321, label %326

321:                                              ; preds = %315
  %322 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %323 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %322, i32 0, i32 7
  store i32 819, i32* %323, align 4
  %324 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %325 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %324, i32 0, i32 8
  store i32 405, i32* %325, align 8
  br label %365

326:                                              ; preds = %315
  %327 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %328 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %327, i32 0, i32 0
  %329 = load i8, i8* %328, align 8
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 262681
  br i1 %331, label %338, label %332

332:                                              ; preds = %326
  %333 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %334 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %333, i32 0, i32 0
  %335 = load i8, i8* %334, align 8
  %336 = zext i8 %335 to i32
  %337 = icmp eq i32 %336, 262677
  br i1 %337, label %338, label %343

338:                                              ; preds = %332, %326
  %339 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %340 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %339, i32 0, i32 7
  store i32 900, i32* %340, align 4
  %341 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %342 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %341, i32 0, i32 8
  store i32 500, i32* %342, align 8
  br label %364

343:                                              ; preds = %332
  %344 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %345 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %8, align 4
  %350 = sub nsw i32 %348, %349
  %351 = mul nsw i32 %350, 64
  %352 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %353 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %352, i32 0, i32 7
  store i32 %351, i32* %353, align 4
  %354 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %355 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %354, i32 0, i32 2
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 2
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %8, align 4
  %360 = sub nsw i32 %358, %359
  %361 = mul nsw i32 %360, 64
  %362 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %363 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %362, i32 0, i32 8
  store i32 %361, i32* %363, align 8
  br label %364

364:                                              ; preds = %343, %338
  br label %365

365:                                              ; preds = %364, %321
  br label %366

366:                                              ; preds = %365, %286
  br label %367

367:                                              ; preds = %366, %220
  br label %492

368:                                              ; preds = %185
  %369 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %370 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %369, i32 0, i32 13
  %371 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %370, align 8
  %372 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %373 = load i32, i32* @ETP_FW_ID_QUERY, align 4
  %374 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %375 = call i64 %371(%struct.psmouse* %372, i32 %373, i8* %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %368
  %378 = load i32, i32* @EINVAL, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %3, align 4
  br label %515

380:                                              ; preds = %368
  %381 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = and i32 15, %383
  %385 = shl i32 %384, 8
  %386 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = or i32 %385, %388
  %390 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %391 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %390, i32 0, i32 7
  store i32 %389, i32* %391, align 4
  %392 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = and i32 240, %394
  %396 = shl i32 %395, 4
  %397 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = or i32 %396, %399
  %401 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %402 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %401, i32 0, i32 8
  store i32 %400, i32* %402, align 8
  br label %492

403:                                              ; preds = %185
  %404 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %405 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %404, i32 0, i32 13
  %406 = load i64 (%struct.psmouse*, i32, i8*)*, i64 (%struct.psmouse*, i32, i8*)** %405, align 8
  %407 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %408 = load i32, i32* @ETP_FW_ID_QUERY, align 4
  %409 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %410 = call i64 %406(%struct.psmouse* %407, i32 %408, i8* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %403
  %413 = load i32, i32* @EINVAL, align 4
  %414 = sub nsw i32 0, %413
  store i32 %414, i32* %3, align 4
  br label %515

415:                                              ; preds = %403
  %416 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %417 = load i8, i8* %416, align 1
  %418 = zext i8 %417 to i32
  %419 = and i32 15, %418
  %420 = shl i32 %419, 8
  %421 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 1
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  %424 = or i32 %420, %423
  %425 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %426 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %425, i32 0, i32 7
  store i32 %424, i32* %426, align 4
  %427 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  %430 = and i32 240, %429
  %431 = shl i32 %430, 4
  %432 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  %433 = load i8, i8* %432, align 1
  %434 = zext i8 %433 to i32
  %435 = or i32 %431, %434
  %436 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %437 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %436, i32 0, i32 8
  store i32 %435, i32* %437, align 8
  %438 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %439 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %438, i32 0, i32 2
  %440 = load i32*, i32** %439, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 1
  %442 = load i32, i32* %441, align 4
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %7, align 1
  %444 = load i8, i8* %7, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp slt i32 %445, 2
  br i1 %446, label %454, label %447

447:                                              ; preds = %415
  %448 = load i8, i8* %7, align 1
  %449 = zext i8 %448 to i32
  %450 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %451 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %450, i32 0, i32 7
  %452 = load i32, i32* %451, align 4
  %453 = icmp sgt i32 %449, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %447, %415
  %455 = load i32, i32* @EINVAL, align 4
  %456 = sub nsw i32 0, %455
  store i32 %456, i32* %3, align 4
  br label %515

457:                                              ; preds = %447
  %458 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %459 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %458, i32 0, i32 7
  %460 = load i32, i32* %459, align 4
  %461 = load i8, i8* %7, align 1
  %462 = zext i8 %461 to i32
  %463 = sub nsw i32 %462, 1
  %464 = sdiv i32 %460, %463
  %465 = trunc i32 %464 to i8
  %466 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %467 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %466, i32 0, i32 9
  store i8 %465, i8* %467, align 4
  %468 = load i8, i8* %7, align 1
  %469 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %470 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %469, i32 0, i32 10
  store i8 %468, i8* %470, align 1
  %471 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %472 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %471, i32 0, i32 2
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 2
  %475 = load i32, i32* %474, align 4
  %476 = trunc i32 %475 to i8
  store i8 %476, i8* %7, align 1
  %477 = load i8, i8* %7, align 1
  %478 = zext i8 %477 to i32
  %479 = icmp sge i32 %478, 2
  br i1 %479, label %480, label %491

480:                                              ; preds = %457
  %481 = load i8, i8* %7, align 1
  %482 = zext i8 %481 to i32
  %483 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %484 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 8
  %486 = icmp sle i32 %482, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %480
  %488 = load i8, i8* %7, align 1
  %489 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %490 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %489, i32 0, i32 11
  store i8 %488, i8* %490, align 2
  br label %491

491:                                              ; preds = %487, %480, %457
  br label %492

492:                                              ; preds = %185, %491, %380, %367, %189
  %493 = load i32, i32* @elantech_dmi_has_middle_button, align 4
  %494 = call i64 @dmi_check_system(i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %510, label %496

496:                                              ; preds = %492
  %497 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %498 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %497, i32 0, i32 0
  %499 = load i8, i8* %498, align 8
  %500 = zext i8 %499 to i32
  %501 = call i64 @ETP_NEW_IC_SMBUS_HOST_NOTIFY(i32 %500)
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %496
  %504 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %505 = call i32 @elantech_is_buttonpad(%struct.elantech_device_info* %504)
  %506 = icmp ne i32 %505, 0
  %507 = xor i1 %506, true
  br label %508

508:                                              ; preds = %503, %496
  %509 = phi i1 [ false, %496 ], [ %507, %503 ]
  br label %510

510:                                              ; preds = %508, %492
  %511 = phi i1 [ true, %492 ], [ %509, %508 ]
  %512 = zext i1 %511 to i32
  %513 = load %struct.elantech_device_info*, %struct.elantech_device_info** %5, align 8
  %514 = getelementptr inbounds %struct.elantech_device_info, %struct.elantech_device_info* %513, i32 0, i32 12
  store i32 %512, i32* %514, align 8
  store i32 0, i32* %3, align 4
  br label %515

515:                                              ; preds = %510, %454, %412, %377, %283, %257, %147, %112, %73, %42, %17
  %516 = load i32, i32* %3, align 4
  ret i32 %516
}

declare dso_local i32 @memset(%struct.elantech_device_info*, i32, i32) #1

declare dso_local i64 @synaptics_send_cmd(%struct.psmouse*, i32, i8*) #1

declare dso_local i32 @psmouse_err(%struct.psmouse*, i8*) #1

declare dso_local i64 @elantech_set_properties(%struct.elantech_device_info*) #1

declare dso_local i32 @psmouse_info(%struct.psmouse*, i8*, ...) #1

declare dso_local i64 @elantech_get_resolution_v4(%struct.psmouse*, i32*, i32*, i32*) #1

declare dso_local i32 @psmouse_warn(%struct.psmouse*, i8*) #1

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i64 @ETP_NEW_IC_SMBUS_HOST_NOTIFY(i32) #1

declare dso_local i32 @elantech_is_buttonpad(%struct.elantech_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
