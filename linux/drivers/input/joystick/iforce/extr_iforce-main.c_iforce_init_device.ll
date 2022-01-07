; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/iforce/extr_iforce-main.c_iforce_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i8*, i64*, i16*, i64* }
%struct.device = type { i32 }
%struct.iforce = type { %struct.input_dev*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.input_dev = type { i8*, i32*, %struct.ff_device*, i32, i32, %struct.TYPE_8__, %struct.TYPE_11__, i32, i32 }
%struct.ff_device = type { i32, i32 (%struct.input_dev*, i32)*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { %struct.device* }
%struct.TYPE_9__ = type { i8*, i32, i32*, i32*, i32*, i32, i64 }
%struct.TYPE_7__ = type { i32 }

@__const.iforce_init_device.c = private unnamed_addr constant [5 x i8] c"CEOV\00", align 1
@IFORCE_MAX_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown I-Force device\00", align 1
@iforce_open = common dso_local global i32 0, align 4
@iforce_close = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"I-Force device effect memory\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Timeout waiting for response from device.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet M\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet P\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet B\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Device does not respond to id packet N\0A\00", align 1
@IFORCE_EFFECTS_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [54 x i8] c"Limiting number of effects to %d (device reports %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@FF_CMD_QUERY = common dso_local global i32 0, align 4
@iforce_device = common dso_local global %struct.TYPE_10__* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_FF_STATUS = common dso_local global i32 0, align 4
@iforce_upload_effect = common dso_local global i32 0, align 4
@iforce_erase_effect = common dso_local global i32 0, align 4
@iforce_set_gain = common dso_local global i32 0, align 4
@iforce_playback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_init_device(%struct.device* %0, i32 %1, %struct.iforce* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iforce*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca %struct.ff_device*, align 8
  %10 = alloca [5 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iforce* %2, %struct.iforce** %7, align 8
  %19 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.iforce_init_device.c, i32 0, i32 0), i64 5, i1 false)
  %20 = load i32, i32* @IFORCE_MAX_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %24 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %24, %struct.input_dev** %8, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %26 = icmp ne %struct.input_dev* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %445

30:                                               ; preds = %3
  %31 = load %struct.iforce*, %struct.iforce** %7, align 8
  %32 = getelementptr inbounds %struct.iforce, %struct.iforce* %31, i32 0, i32 7
  %33 = call i32 @init_waitqueue_head(i32* %32)
  %34 = load %struct.iforce*, %struct.iforce** %7, align 8
  %35 = getelementptr inbounds %struct.iforce, %struct.iforce* %34, i32 0, i32 6
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.iforce*, %struct.iforce** %7, align 8
  %38 = getelementptr inbounds %struct.iforce, %struct.iforce* %37, i32 0, i32 5
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.iforce*, %struct.iforce** %7, align 8
  %41 = getelementptr inbounds %struct.iforce, %struct.iforce* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.iforce*, %struct.iforce** %7, align 8
  %44 = getelementptr inbounds %struct.iforce, %struct.iforce* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %47 = load %struct.iforce*, %struct.iforce** %7, align 8
  %48 = getelementptr inbounds %struct.iforce, %struct.iforce* %47, i32 0, i32 0
  store %struct.input_dev* %46, %struct.input_dev** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store %struct.device* %53, %struct.device** %56, align 8
  %57 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %58 = load %struct.iforce*, %struct.iforce** %7, align 8
  %59 = call i32 @input_set_drvdata(%struct.input_dev* %57, %struct.iforce* %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @iforce_open, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @iforce_close, align 4
  %66 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 8
  %68 = load %struct.iforce*, %struct.iforce** %7, align 8
  %69 = getelementptr inbounds %struct.iforce, %struct.iforce* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load %struct.iforce*, %struct.iforce** %7, align 8
  %72 = getelementptr inbounds %struct.iforce, %struct.iforce* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.iforce*, %struct.iforce** %7, align 8
  %75 = getelementptr inbounds %struct.iforce, %struct.iforce* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 200, i32* %76, align 8
  %77 = load i32, i32* @IORESOURCE_MEM, align 4
  %78 = load %struct.iforce*, %struct.iforce** %7, align 8
  %79 = getelementptr inbounds %struct.iforce, %struct.iforce* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 5
  store i32 %77, i32* %80, align 8
  %81 = load %struct.iforce*, %struct.iforce** %7, align 8
  %82 = getelementptr inbounds %struct.iforce, %struct.iforce* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  store i32* null, i32** %83, align 8
  %84 = load %struct.iforce*, %struct.iforce** %7, align 8
  %85 = getelementptr inbounds %struct.iforce, %struct.iforce* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  store i32* null, i32** %86, align 8
  %87 = load %struct.iforce*, %struct.iforce** %7, align 8
  %88 = getelementptr inbounds %struct.iforce, %struct.iforce* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %99, %30
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 20
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load %struct.iforce*, %struct.iforce** %7, align 8
  %95 = call i32 @iforce_get_id_packet(%struct.iforce* %94, i8 signext 79, i8* %23, i64* %13)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %102

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %90

102:                                              ; preds = %97, %90
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, 20
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %107 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %106, i32 0, i32 6
  %108 = call i32 @dev_err(%struct.TYPE_11__* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i32, i32* @ENODEV, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %441

111:                                              ; preds = %102
  %112 = load %struct.iforce*, %struct.iforce** %7, align 8
  %113 = call i32 @iforce_get_id_packet(%struct.iforce* %112, i8 signext 77, i8* %23, i64* %13)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, i64* %13, align 8
  %117 = icmp ult i64 %116, 3
  br i1 %117, label %118, label %125

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds i8, i8* %23, i64 1
  %120 = call i8* @get_unaligned_le16(i8* %119)
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  br label %131

125:                                              ; preds = %115
  %126 = load %struct.iforce*, %struct.iforce** %7, align 8
  %127 = getelementptr inbounds %struct.iforce, %struct.iforce* %126, i32 0, i32 0
  %128 = load %struct.input_dev*, %struct.input_dev** %127, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 6
  %130 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %125, %118
  %132 = load %struct.iforce*, %struct.iforce** %7, align 8
  %133 = call i32 @iforce_get_id_packet(%struct.iforce* %132, i8 signext 80, i8* %23, i64* %13)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i64, i64* %13, align 8
  %137 = icmp ult i64 %136, 3
  br i1 %137, label %138, label %145

138:                                              ; preds = %135, %131
  %139 = getelementptr inbounds i8, i8* %23, i64 1
  %140 = call i8* @get_unaligned_le16(i8* %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i64 %141, i64* %144, align 8
  br label %151

145:                                              ; preds = %135
  %146 = load %struct.iforce*, %struct.iforce** %7, align 8
  %147 = getelementptr inbounds %struct.iforce, %struct.iforce* %146, i32 0, i32 0
  %148 = load %struct.input_dev*, %struct.input_dev** %147, align 8
  %149 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %148, i32 0, i32 6
  %150 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %151

151:                                              ; preds = %145, %138
  %152 = load %struct.iforce*, %struct.iforce** %7, align 8
  %153 = call i32 @iforce_get_id_packet(%struct.iforce* %152, i8 signext 66, i8* %23, i64* %13)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i64, i64* %13, align 8
  %157 = icmp ult i64 %156, 3
  br i1 %157, label %158, label %165

158:                                              ; preds = %155, %151
  %159 = getelementptr inbounds i8, i8* %23, i64 1
  %160 = call i8* @get_unaligned_le16(i8* %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.iforce*, %struct.iforce** %7, align 8
  %163 = getelementptr inbounds %struct.iforce, %struct.iforce* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  br label %171

165:                                              ; preds = %155
  %166 = load %struct.iforce*, %struct.iforce** %7, align 8
  %167 = getelementptr inbounds %struct.iforce, %struct.iforce* %166, i32 0, i32 0
  %168 = load %struct.input_dev*, %struct.input_dev** %167, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 6
  %170 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %169, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %171

171:                                              ; preds = %165, %158
  %172 = load %struct.iforce*, %struct.iforce** %7, align 8
  %173 = call i32 @iforce_get_id_packet(%struct.iforce* %172, i8 signext 78, i8* %23, i64* %13)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i64, i64* %13, align 8
  %177 = icmp ult i64 %176, 2
  br i1 %177, label %178, label %182

178:                                              ; preds = %175, %171
  %179 = getelementptr inbounds i8, i8* %23, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  store i32 %181, i32* %16, align 4
  br label %188

182:                                              ; preds = %175
  %183 = load %struct.iforce*, %struct.iforce** %7, align 8
  %184 = getelementptr inbounds %struct.iforce, %struct.iforce* %183, i32 0, i32 0
  %185 = load %struct.input_dev*, %struct.input_dev** %184, align 8
  %186 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %185, i32 0, i32 6
  %187 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %186, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %188

188:                                              ; preds = %182, %178
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load %struct.iforce*, %struct.iforce** %7, align 8
  %194 = getelementptr inbounds %struct.iforce, %struct.iforce* %193, i32 0, i32 0
  %195 = load %struct.input_dev*, %struct.input_dev** %194, align 8
  %196 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %195, i32 0, i32 6
  %197 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  %198 = load i32, i32* %16, align 4
  %199 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %196, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 %197, i32 %198)
  %200 = load i32, i32* @IFORCE_EFFECTS_MAX, align 4
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %192, %188
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %226, %201
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = icmp ne i8 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %202
  %209 = load %struct.iforce*, %struct.iforce** %7, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = call i32 @iforce_get_id_packet(%struct.iforce* %209, i8 signext %213, i8* %23, i64* %13)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %208
  %217 = load %struct.iforce*, %struct.iforce** %7, align 8
  %218 = load i32, i32* @FF_CMD_QUERY, align 4
  %219 = and i32 %218, 65280
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %13, align 8
  %222 = or i64 %220, %221
  %223 = trunc i64 %222 to i32
  %224 = call i32 @iforce_dump_packet(%struct.iforce* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %223, i8* %23)
  br label %225

225:                                              ; preds = %216, %208
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %202

229:                                              ; preds = %202
  %230 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %231 = call i32 @iforce_set_autocenter(%struct.input_dev* %230, i32 0)
  store i32 0, i32* %14, align 4
  br label %232

232:                                              ; preds = %266, %229
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iforce_device, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %232
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iforce_device, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %248 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %246, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %240
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iforce_device, align 8
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %260 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %259, i32 0, i32 5
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %258, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %252
  br label %269

265:                                              ; preds = %252, %240
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  br label %232

269:                                              ; preds = %264, %232
  %270 = load %struct.TYPE_10__*, %struct.TYPE_10__** @iforce_device, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i64 %272
  %274 = load %struct.iforce*, %struct.iforce** %7, align 8
  %275 = getelementptr inbounds %struct.iforce, %struct.iforce* %274, i32 0, i32 1
  store %struct.TYPE_10__* %273, %struct.TYPE_10__** %275, align 8
  %276 = load %struct.iforce*, %struct.iforce** %7, align 8
  %277 = getelementptr inbounds %struct.iforce, %struct.iforce* %276, i32 0, i32 1
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %282 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %281, i32 0, i32 0
  store i8* %280, i8** %282, align 8
  %283 = load i32, i32* @EV_KEY, align 4
  %284 = call i32 @BIT_MASK(i32 %283)
  %285 = load i32, i32* @EV_ABS, align 4
  %286 = call i32 @BIT_MASK(i32 %285)
  %287 = or i32 %284, %286
  %288 = load i32, i32* @EV_FF_STATUS, align 4
  %289 = call i32 @BIT_MASK(i32 %288)
  %290 = or i32 %287, %289
  %291 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %292 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %291, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  store i32 %290, i32* %294, align 4
  store i32 0, i32* %14, align 4
  br label %295

295:                                              ; preds = %321, %269
  %296 = load %struct.iforce*, %struct.iforce** %7, align 8
  %297 = getelementptr inbounds %struct.iforce, %struct.iforce* %296, i32 0, i32 1
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 3
  %300 = load i64*, i64** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i64, i64* %300, i64 %302
  %304 = load i64, i64* %303, align 8
  %305 = icmp sge i64 %304, 0
  br i1 %305, label %306, label %324

306:                                              ; preds = %295
  %307 = load %struct.iforce*, %struct.iforce** %7, align 8
  %308 = getelementptr inbounds %struct.iforce, %struct.iforce* %307, i32 0, i32 1
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 3
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i16
  %317 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %318 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @set_bit(i16 signext %316, i32 %319)
  br label %321

321:                                              ; preds = %306
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %295

324:                                              ; preds = %295
  store i32 0, i32* %14, align 4
  br label %325

325:                                              ; preds = %371, %324
  %326 = load %struct.iforce*, %struct.iforce** %7, align 8
  %327 = getelementptr inbounds %struct.iforce, %struct.iforce* %326, i32 0, i32 1
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 4
  %330 = load i16*, i16** %329, align 8
  %331 = load i32, i32* %14, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i16, i16* %330, i64 %332
  %334 = load i16, i16* %333, align 2
  %335 = sext i16 %334 to i32
  %336 = icmp sge i32 %335, 0
  br i1 %336, label %337, label %374

337:                                              ; preds = %325
  %338 = load %struct.iforce*, %struct.iforce** %7, align 8
  %339 = getelementptr inbounds %struct.iforce, %struct.iforce* %338, i32 0, i32 1
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 4
  %342 = load i16*, i16** %341, align 8
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i16, i16* %342, i64 %344
  %346 = load i16, i16* %345, align 2
  store i16 %346, i16* %18, align 2
  %347 = load i16, i16* %18, align 2
  %348 = sext i16 %347 to i32
  switch i32 %348, label %370 [
    i32 129, label %349
    i32 128, label %349
    i32 130, label %349
    i32 131, label %358
    i32 137, label %358
    i32 138, label %358
    i32 132, label %362
    i32 136, label %366
    i32 135, label %366
    i32 134, label %366
    i32 133, label %366
  ]

349:                                              ; preds = %337, %337, %337
  %350 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %351 = load i16, i16* %18, align 2
  %352 = call i32 @input_set_abs_params(%struct.input_dev* %350, i16 signext %351, i32 -1920, i32 1920, i32 16, i32 128)
  %353 = load i16, i16* %18, align 2
  %354 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %355 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @set_bit(i16 signext %353, i32 %356)
  br label %370

358:                                              ; preds = %337, %337, %337
  %359 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %360 = load i16, i16* %18, align 2
  %361 = call i32 @input_set_abs_params(%struct.input_dev* %359, i16 signext %360, i32 0, i32 255, i32 0, i32 0)
  br label %370

362:                                              ; preds = %337
  %363 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %364 = load i16, i16* %18, align 2
  %365 = call i32 @input_set_abs_params(%struct.input_dev* %363, i16 signext %364, i32 -128, i32 127, i32 0, i32 0)
  br label %370

366:                                              ; preds = %337, %337, %337, %337
  %367 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %368 = load i16, i16* %18, align 2
  %369 = call i32 @input_set_abs_params(%struct.input_dev* %367, i16 signext %368, i32 -1, i32 1, i32 0, i32 0)
  br label %370

370:                                              ; preds = %337, %366, %362, %358, %349
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %14, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %14, align 4
  br label %325

374:                                              ; preds = %325
  %375 = load i32, i32* %16, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %432

377:                                              ; preds = %374
  store i32 0, i32* %14, align 4
  br label %378

378:                                              ; preds = %404, %377
  %379 = load %struct.iforce*, %struct.iforce** %7, align 8
  %380 = getelementptr inbounds %struct.iforce, %struct.iforce* %379, i32 0, i32 1
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 5
  %383 = load i64*, i64** %382, align 8
  %384 = load i32, i32* %14, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i64, i64* %383, i64 %385
  %387 = load i64, i64* %386, align 8
  %388 = icmp sge i64 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %378
  %390 = load %struct.iforce*, %struct.iforce** %7, align 8
  %391 = getelementptr inbounds %struct.iforce, %struct.iforce* %390, i32 0, i32 1
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 5
  %394 = load i64*, i64** %393, align 8
  %395 = load i32, i32* %14, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i64, i64* %394, i64 %396
  %398 = load i64, i64* %397, align 8
  %399 = trunc i64 %398 to i16
  %400 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %401 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 8
  %403 = call i32 @set_bit(i16 signext %399, i32 %402)
  br label %404

404:                                              ; preds = %389
  %405 = load i32, i32* %14, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %14, align 4
  br label %378

407:                                              ; preds = %378
  %408 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %409 = load i32, i32* %16, align 4
  %410 = call i32 @input_ff_create(%struct.input_dev* %408, i32 %409)
  store i32 %410, i32* %15, align 4
  %411 = load i32, i32* %15, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  br label %441

414:                                              ; preds = %407
  %415 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %416 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %415, i32 0, i32 2
  %417 = load %struct.ff_device*, %struct.ff_device** %416, align 8
  store %struct.ff_device* %417, %struct.ff_device** %9, align 8
  %418 = load i32, i32* @iforce_upload_effect, align 4
  %419 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %420 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %419, i32 0, i32 4
  store i32 %418, i32* %420, align 8
  %421 = load i32, i32* @iforce_erase_effect, align 4
  %422 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %423 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %422, i32 0, i32 3
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* @iforce_set_gain, align 4
  %425 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %426 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %425, i32 0, i32 2
  store i32 %424, i32* %426, align 8
  %427 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %428 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %427, i32 0, i32 1
  store i32 (%struct.input_dev*, i32)* @iforce_set_autocenter, i32 (%struct.input_dev*, i32)** %428, align 8
  %429 = load i32, i32* @iforce_playback, align 4
  %430 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %431 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %430, i32 0, i32 0
  store i32 %429, i32* %431, align 8
  br label %432

432:                                              ; preds = %414, %374
  %433 = load %struct.iforce*, %struct.iforce** %7, align 8
  %434 = getelementptr inbounds %struct.iforce, %struct.iforce* %433, i32 0, i32 0
  %435 = load %struct.input_dev*, %struct.input_dev** %434, align 8
  %436 = call i32 @input_register_device(%struct.input_dev* %435)
  store i32 %436, i32* %15, align 4
  %437 = load i32, i32* %15, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %432
  br label %441

440:                                              ; preds = %432
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %445

441:                                              ; preds = %439, %413, %105
  %442 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %443 = call i32 @input_free_device(%struct.input_dev* %442)
  %444 = load i32, i32* %15, align 4
  store i32 %444, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %445

445:                                              ; preds = %441, %440, %27
  %446 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %446)
  %447 = load i32, i32* %4, align 4
  ret i32 %447
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.input_dev* @input_allocate_device(...) #3

declare dso_local i32 @init_waitqueue_head(i32*) #3

declare dso_local i32 @spin_lock_init(i32*) #3

declare dso_local i32 @mutex_init(i32*) #3

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.iforce*) #3

declare dso_local i32 @iforce_get_id_packet(%struct.iforce*, i8 signext, i8*, i64*) #3

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #3

declare dso_local i8* @get_unaligned_le16(i8*) #3

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*, ...) #3

declare dso_local i32 @iforce_dump_packet(%struct.iforce*, i8*, i32, i8*) #3

declare dso_local i32 @iforce_set_autocenter(%struct.input_dev*, i32) #3

declare dso_local i32 @BIT_MASK(i32) #3

declare dso_local i32 @set_bit(i16 signext, i32) #3

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i16 signext, i32, i32, i32, i32) #3

declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #3

declare dso_local i32 @input_register_device(%struct.input_dev*) #3

declare dso_local i32 @input_free_device(%struct.input_dev*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
