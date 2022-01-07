; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.i2c_client = type { i32 }
%struct.si2168_dev = type { i32, i32, i64, i8, i32 }
%struct.firmware = type { i32, i32* }
%struct.si2168_cmd = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\C0\12\00\0C\00\0D\16\00\00\00\00\00\00\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\C0\06\08\0F\00 !\01\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\85\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\C0\06\01\0F\00  \01\00", align 1
@SI2168_CHIP_ID_B40 = common dso_local global i64 0, align 8
@SI2168_B40_FIRMWARE_FALLBACK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"please install firmware file '%s'\0A\00", align 1
@SI2168_B40_FIRMWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@SI2168_ARGLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\11\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"firmware version: %c %d.%d.%d\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @si2168_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2168_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.si2168_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca %struct.si2168_cmd, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %4, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = call %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.si2168_dev* %16, %struct.si2168_dev** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  store %struct.dtv_frontend_properties* %18, %struct.dtv_frontend_properties** %6, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13, i32 0)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @si2168_cmd_execute(%struct.i2c_client* %23, %struct.si2168_cmd* %11)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %345

28:                                               ; preds = %1
  %29 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %30 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8, i32 1)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = call i32 @si2168_cmd_execute(%struct.i2c_client* %35, %struct.si2168_cmd* %11)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %345

40:                                               ; preds = %33
  %41 = call i32 @udelay(i32 100)
  %42 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 1)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = call i32 @si2168_cmd_execute(%struct.i2c_client* %43, %struct.si2168_cmd* %11)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %345

48:                                               ; preds = %40
  br label %299

49:                                               ; preds = %28
  %50 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 8, i32 1)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = call i32 @si2168_cmd_execute(%struct.i2c_client* %51, %struct.si2168_cmd* %11)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %345

56:                                               ; preds = %49
  %57 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %58 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @request_firmware(%struct.firmware** %10, i32 %59, i32* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %56
  %66 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %67 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SI2168_CHIP_ID_B40, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32, i32* @SI2168_B40_FIRMWARE_FALLBACK, align 4
  %73 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %74 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %76 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %78, i32 0, i32 0
  %80 = call i32 @request_firmware(%struct.firmware** %10, i32 %77, i32* %79)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %71, %65
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* @SI2168_B40_FIRMWARE, align 4
  %88 = call i32 @dev_notice(i32* %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %96

89:                                               ; preds = %81
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %93 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %342

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %56
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %101 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load %struct.firmware*, %struct.firmware** %10, align 8
  %105 = getelementptr inbounds %struct.firmware, %struct.firmware* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = srem i32 %106, 17
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %166

109:                                              ; preds = %97
  %110 = load %struct.firmware*, %struct.firmware** %10, align 8
  %111 = getelementptr inbounds %struct.firmware, %struct.firmware* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %114, 5
  br i1 %115, label %116, label %166

116:                                              ; preds = %109
  %117 = load %struct.firmware*, %struct.firmware** %10, align 8
  %118 = getelementptr inbounds %struct.firmware, %struct.firmware* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %162, %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %120
  %124 = load %struct.firmware*, %struct.firmware** %10, align 8
  %125 = getelementptr inbounds %struct.firmware, %struct.firmware* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.firmware*, %struct.firmware** %10, align 8
  %128 = getelementptr inbounds %struct.firmware, %struct.firmware* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sub nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @SI2168_ARGLEN, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %165

141:                                              ; preds = %123
  %142 = load %struct.firmware*, %struct.firmware** %10, align 8
  %143 = getelementptr inbounds %struct.firmware, %struct.firmware* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.firmware*, %struct.firmware** %10, align 8
  %146 = getelementptr inbounds %struct.firmware, %struct.firmware* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %144, i64 %151
  %153 = bitcast i32* %152 to i8*
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* %153, i32 %154, i32 1)
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = call i32 @si2168_cmd_execute(%struct.i2c_client* %156, %struct.si2168_cmd* %11)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %141
  br label %165

161:                                              ; preds = %141
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = sub nsw i32 %163, 17
  store i32 %164, i32* %9, align 4
  br label %120

165:                                              ; preds = %160, %138, %120
  br label %206

166:                                              ; preds = %109, %97
  %167 = load %struct.firmware*, %struct.firmware** %10, align 8
  %168 = getelementptr inbounds %struct.firmware, %struct.firmware* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = srem i32 %169, 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %202

172:                                              ; preds = %166
  %173 = load %struct.firmware*, %struct.firmware** %10, align 8
  %174 = getelementptr inbounds %struct.firmware, %struct.firmware* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %198, %172
  %177 = load i32, i32* %9, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load %struct.firmware*, %struct.firmware** %10, align 8
  %181 = getelementptr inbounds %struct.firmware, %struct.firmware* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.firmware*, %struct.firmware** %10, align 8
  %184 = getelementptr inbounds %struct.firmware, %struct.firmware* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  %190 = bitcast i32* %189 to i8*
  %191 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* %190, i32 8, i32 1)
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = call i32 @si2168_cmd_execute(%struct.i2c_client* %192, %struct.si2168_cmd* %11)
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %179
  br label %201

197:                                              ; preds = %179
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %9, align 4
  %200 = sub nsw i32 %199, 8
  store i32 %200, i32* %9, align 4
  br label %176

201:                                              ; preds = %196, %176
  br label %205

202:                                              ; preds = %166
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %7, align 4
  br label %205

205:                                              ; preds = %202, %201
  br label %206

206:                                              ; preds = %205, %165
  %207 = load i32, i32* %7, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %206
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 0
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @dev_err(i32* %211, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %212)
  br label %342

214:                                              ; preds = %206
  %215 = load %struct.firmware*, %struct.firmware** %10, align 8
  %216 = call i32 @release_firmware(%struct.firmware* %215)
  %217 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2, i32 1)
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = call i32 @si2168_cmd_execute(%struct.i2c_client* %218, %struct.si2168_cmd* %11)
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %214
  br label %345

223:                                              ; preds = %214
  %224 = call i32 @cmd_init(%struct.si2168_cmd* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 1, i32 10)
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = call i32 @si2168_cmd_execute(%struct.i2c_client* %225, %struct.si2168_cmd* %11)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %345

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %11, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 9
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = add nsw i32 %235, 64
  %237 = shl i32 %236, 24
  %238 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %11, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 6
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = sub nsw i32 %242, 48
  %244 = shl i32 %243, 16
  %245 = or i32 %237, %244
  %246 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %11, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 7
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = sub nsw i32 %250, 48
  %252 = shl i32 %251, 8
  %253 = or i32 %245, %252
  %254 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %11, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 8
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = shl i32 %258, 0
  %260 = or i32 %253, %259
  %261 = trunc i32 %260 to i8
  %262 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %263 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %262, i32 0, i32 3
  store i8 %261, i8* %263, align 8
  %264 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %265 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %264, i32 0, i32 0
  %266 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %267 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %266, i32 0, i32 3
  %268 = load i8, i8* %267, align 8
  %269 = sext i8 %268 to i32
  %270 = ashr i32 %269, 24
  %271 = and i32 %270, 255
  %272 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %273 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %272, i32 0, i32 3
  %274 = load i8, i8* %273, align 8
  %275 = sext i8 %274 to i32
  %276 = ashr i32 %275, 16
  %277 = and i32 %276, 255
  %278 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %279 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %278, i32 0, i32 3
  %280 = load i8, i8* %279, align 8
  %281 = sext i8 %280 to i32
  %282 = ashr i32 %281, 8
  %283 = and i32 %282, 255
  %284 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %285 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %284, i32 0, i32 3
  %286 = load i8, i8* %285, align 8
  %287 = sext i8 %286 to i32
  %288 = ashr i32 %287, 0
  %289 = and i32 %288, 255
  %290 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %265, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %271, i32 %277, i32 %283, i32 %289)
  %291 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %292 = call i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend* %291, i32 1)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %230
  br label %345

296:                                              ; preds = %230
  %297 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %298 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %297, i32 0, i32 0
  store i32 1, i32* %298, align 8
  br label %299

299:                                              ; preds = %296, %48
  %300 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %301 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 0
  store i32 1, i32* %302, align 8
  %303 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %304 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %305 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 0
  store i8* %303, i8** %309, align 8
  %310 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %311 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 0
  store i32 1, i32* %312, align 8
  %313 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %314 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %315 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 0
  store i8* %313, i8** %319, align 8
  %320 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %321 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  store i32 1, i32* %322, align 8
  %323 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %324 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %325 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i64 0
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  store i8* %323, i8** %329, align 8
  %330 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %331 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 0
  store i32 1, i32* %332, align 8
  %333 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %334 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %335 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i64 0
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  store i8* %333, i8** %339, align 8
  %340 = load %struct.si2168_dev*, %struct.si2168_dev** %5, align 8
  %341 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %340, i32 0, i32 4
  store i32 1, i32* %341, align 4
  store i32 0, i32* %2, align 4
  br label %351

342:                                              ; preds = %209, %89
  %343 = load %struct.firmware*, %struct.firmware** %10, align 8
  %344 = call i32 @release_firmware(%struct.firmware* %343)
  br label %345

345:                                              ; preds = %342, %295, %229, %222, %55, %47, %39, %27
  %346 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %347 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %346, i32 0, i32 0
  %348 = load i32, i32* %7, align 4
  %349 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %347, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* %7, align 4
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %345, %299
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @cmd_init(%struct.si2168_cmd*, i8*, i32, i32) #1

declare dso_local i32 @si2168_cmd_execute(%struct.i2c_client*, %struct.si2168_cmd*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32*) #1

declare dso_local i32 @dev_notice(i32*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @si2168_ts_bus_ctrl(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
