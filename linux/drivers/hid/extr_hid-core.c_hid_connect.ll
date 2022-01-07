; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hid_collection*, i64, i64, i32 (%struct.hid_device*)*, %struct.TYPE_2__*, {}* }
%struct.hid_collection = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hiddev = type { i32 }
%struct.hidraw = type { i32 }

@hid_connect.types = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Pointer\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Joystick\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Gamepad\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Multi-Axis Controller\00", align 1
@HID_QUIRK_HIDDEV_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV = common dso_local global i32 0, align 4
@HID_QUIRK_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDRAW = common dso_local global i32 0, align 4
@HID_CONNECT_DRIVER = common dso_local global i32 0, align 4
@HID_CLAIMED_DRIVER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"device has no listeners, quitting\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%shiddev%d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%shidraw%d\00", align 1
@HID_COLLECTION_APPLICATION = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"BLUETOOTH\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"I2C\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@dev_attr_country = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [51 x i8] c"can't create sysfs country code attribute err: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"%s: %s HID v%x.%02x %s [%s] on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_connect(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hid_collection*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = bitcast [64 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 64, i1 false)
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HID_QUIRK_HIDDEV_FORCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %22 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @HID_QUIRK_HIDINPUT_FORCE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @HID_CONNECT_HIDINPUT_FORCE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 128
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = call i64 @hid_hiddev(%struct.hid_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HID_CONNECT_HIDINPUT_FORCE, align 4
  %64 = and i32 %62, %63
  %65 = call i32 @hidinput_connect(%struct.hid_device* %61, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60, %55
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 13
  %81 = bitcast {}** %80 to i32 (%struct.hid_device*, i32)**
  %82 = load i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*, i32)** %81, align 8
  %83 = icmp ne i32 (%struct.hid_device*, i32)* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %78
  %85 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %86 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %85, i32 0, i32 13
  %87 = bitcast {}** %86 to i32 (%struct.hid_device*, i32)**
  %88 = load i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*, i32)** %87, align 8
  %89 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %92 = and i32 %90, %91
  %93 = call i32 %88(%struct.hid_device* %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %97 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %98 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %84, %78, %73
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %108 = call i32 @hidraw_connect(%struct.hid_device* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %112 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %113 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %106, %101
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @HID_CONNECT_DRIVER, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32, i32* @HID_CLAIMED_DRIVER, align 4
  %123 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %124 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %129 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %134 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %133, i32 0, i32 12
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %132
  %140 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %141 = call i32 @hid_err(%struct.hid_device* %140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %142 = load i32, i32* @ENODEV, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %322

144:                                              ; preds = %132, %127
  %145 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %146 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %144
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @HID_CONNECT_FF, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %158 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %157, i32 0, i32 11
  %159 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %158, align 8
  %160 = icmp ne i32 (%struct.hid_device*)* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %163 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %162, i32 0, i32 11
  %164 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %163, align 8
  %165 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %166 = call i32 %164(%struct.hid_device* %165)
  br label %167

167:                                              ; preds = %161, %156, %151, %144
  store i32 0, i32* %10, align 4
  %168 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %169 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %184

174:                                              ; preds = %167
  %175 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = call i64 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %174, %167
  %185 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %186 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %184
  %192 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %200 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %201 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %200, i32 0, i32 10
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to %struct.hiddev*
  %204 = getelementptr inbounds %struct.hiddev, %struct.hiddev* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i64 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %199, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %191, %184
  %212 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %213 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %211
  %219 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %220 = load i32, i32* %10, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i32, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %227 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %228 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %227, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to %struct.hidraw*
  %231 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i64 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %226, i32 %232)
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %10, align 4
  br label %238

238:                                              ; preds = %218, %211
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %239

239:                                              ; preds = %281, %238
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %242 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ult i32 %240, %243
  br i1 %244, label %245, label %284

245:                                              ; preds = %239
  %246 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %247 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %246, i32 0, i32 8
  %248 = load %struct.hid_collection*, %struct.hid_collection** %247, align 8
  %249 = load i32, i32* %9, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %248, i64 %250
  store %struct.hid_collection* %251, %struct.hid_collection** %12, align 8
  %252 = load %struct.hid_collection*, %struct.hid_collection** %12, align 8
  %253 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @HID_COLLECTION_APPLICATION, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %280

257:                                              ; preds = %245
  %258 = load %struct.hid_collection*, %struct.hid_collection** %12, align 8
  %259 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @HID_USAGE_PAGE, align 4
  %262 = and i32 %260, %261
  %263 = load i32, i32* @HID_UP_GENDESK, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %280

265:                                              ; preds = %257
  %266 = load %struct.hid_collection*, %struct.hid_collection** %12, align 8
  %267 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = and i32 %268, 65535
  %270 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @hid_connect.types, i64 0, i64 0))
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %280

272:                                              ; preds = %265
  %273 = load %struct.hid_collection*, %struct.hid_collection** %12, align 8
  %274 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, 65535
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [9 x i8*], [9 x i8*]* @hid_connect.types, i64 0, i64 %277
  %279 = load i8*, i8** %278, align 8
  store i8* %279, i8** %6, align 8
  br label %284

280:                                              ; preds = %265, %257, %245
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %9, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %239

284:                                              ; preds = %272, %239
  %285 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %286 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  switch i32 %287, label %291 [
    i32 128, label %288
    i32 130, label %289
    i32 129, label %290
  ]

288:                                              ; preds = %284
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %292

289:                                              ; preds = %284
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %292

290:                                              ; preds = %284
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %292

291:                                              ; preds = %284
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %7, align 8
  br label %292

292:                                              ; preds = %291, %290, %289, %288
  %293 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %294 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %293, i32 0, i32 7
  %295 = call i32 @device_create_file(i32* %294, i32* @dev_attr_country)
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %11, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %292
  %299 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %300 = load i32, i32* %11, align 4
  %301 = call i32 @hid_warn(%struct.hid_device* %299, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %298, %292
  %303 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %304 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %305 = load i8*, i8** %7, align 8
  %306 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %307 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = ashr i32 %308, 8
  %310 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %311 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 255
  %314 = load i8*, i8** %6, align 8
  %315 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %316 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %319 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @hid_info(%struct.hid_device* %303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %304, i8* %305, i32 %309, i32 %313, i8* %314, i32 %317, i32 %320)
  store i32 0, i32* %3, align 4
  br label %322

322:                                              ; preds = %302, %139
  %323 = load i32, i32* %3, align 4
  ret i32 %323
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @hid_hiddev(%struct.hid_device*) #2

declare dso_local i32 @hidinput_connect(%struct.hid_device*, i32) #2

declare dso_local i32 @hidraw_connect(%struct.hid_device*) #2

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #2

declare dso_local i64 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @device_create_file(i32*, i32*) #2

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #2

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i8*, i8*, i32, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
