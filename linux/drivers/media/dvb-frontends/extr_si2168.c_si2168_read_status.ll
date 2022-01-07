; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2168.c_si2168_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.i2c_client = type { i32 }
%struct.si2168_dev = type { i32, i32 }
%struct.si2168_cmd = type { i32*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\A0\01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\90\01\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"P\01\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"status=%02x args=%*ph\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\82\00\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"post_bit_error=%u post_bit_count=%u ber=%u*10^-%u\0A\00", align 1
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"\84\01\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"block_error=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @si2168_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2168_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.si2168_dev*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.si2168_cmd, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %6, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = call %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client* %18)
  store %struct.si2168_dev* %19, %struct.si2168_dev** %7, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %8, align 8
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %24 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %280

30:                                               ; preds = %2
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %40 [
    i32 129, label %34
    i32 130, label %36
    i32 128, label %38
  ]

34:                                               ; preds = %30
  %35 = call i32 @cmd_init(%struct.si2168_cmd* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, i32 13)
  br label %43

36:                                               ; preds = %30
  %37 = call i32 @cmd_init(%struct.si2168_cmd* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2, i32 9)
  br label %43

38:                                               ; preds = %30
  %39 = call i32 @cmd_init(%struct.si2168_cmd* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32 14)
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %280

43:                                               ; preds = %38, %36, %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %45 = call i32 @si2168_cmd_execute(%struct.i2c_client* %44, %struct.si2168_cmd* %14)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %280

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 1
  %55 = and i32 %54, 3
  switch i32 %55, label %72 [
    i32 1, label %56
    i32 3, label %61
  ]

56:                                               ; preds = %49
  %57 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %58 = load i32, i32* @FE_HAS_CARRIER, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %72

61:                                               ; preds = %49
  %62 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %63 = load i32, i32* @FE_HAS_CARRIER, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @FE_HAS_VITERBI, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FE_HAS_SYNC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @FE_HAS_LOCK, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %49, %61, %56
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.si2168_dev*, %struct.si2168_dev** %7, align 8
  %76 = getelementptr inbounds %struct.si2168_dev, %struct.si2168_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FE_HAS_LOCK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %72
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i8* %86, i8** %92, align 8
  %93 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 1000
  %98 = sdiv i32 %97, 4
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %100 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 %98, i32* %104, align 8
  br label %116

105:                                              ; preds = %72
  %106 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %107 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i8* %109, i8** %115, align 8
  br label %116

116:                                              ; preds = %105, %82
  %117 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %122, i32* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FE_HAS_VITERBI, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %207

131:                                              ; preds = %116
  %132 = call i32 @cmd_init(%struct.si2168_cmd* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2, i32 3)
  %133 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %134 = call i32 @si2168_cmd_execute(%struct.i2c_client* %133, %struct.si2168_cmd* %14)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %280

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 8, %142
  %144 = call i32 @clamp(i32 %143, i32 0, i32 8)
  store i32 %144, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %145

145:                                              ; preds = %152, %138
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load i32, i32* %12, align 4
  %151 = mul i32 %150, 10
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %145

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %12, align 4
  %161 = mul i32 %159, %160
  store i32 %161, i32* %12, align 4
  store i32 100000000, i32* %13, align 4
  %162 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 0
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %13, align 4
  %166 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %163, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165, i32 %169, i32 %173)
  %175 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %176 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  store i8* %175, i8** %181, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %184 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i64 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add i32 %189, %182
  store i32 %190, i32* %188, align 8
  %191 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %192 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %193 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i64 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  store i8* %191, i8** %197, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 0
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add i32 %205, %198
  store i32 %206, i32* %204, align 8
  br label %222

207:                                              ; preds = %116
  %208 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %209 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %210 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i8* %208, i8** %214, align 8
  %215 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  store i8* %215, i8** %221, align 8
  br label %222

222:                                              ; preds = %207, %155
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @FE_HAS_SYNC, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %271

228:                                              ; preds = %222
  %229 = call i32 @cmd_init(%struct.si2168_cmd* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2, i32 3)
  %230 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %231 = call i32 @si2168_cmd_execute(%struct.i2c_client* %230, %struct.si2168_cmd* %14)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %280

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 8
  %241 = getelementptr inbounds %struct.si2168_cmd, %struct.si2168_cmd* %14, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 0
  %246 = or i32 %240, %245
  store i32 %246, i32* %12, align 4
  %247 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %248 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %247, i32 0, i32 0
  %249 = load i32, i32* %12, align 4
  %250 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %12, align 4
  %252 = icmp eq i32 %251, 65535
  br i1 %252, label %253, label %254

253:                                              ; preds = %235
  store i32 0, i32* %12, align 4
  br label %254

254:                                              ; preds = %253, %235
  %255 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %256 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %257 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  store i8* %255, i8** %261, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %264 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i64 0
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add i32 %269, %262
  store i32 %270, i32* %268, align 8
  br label %279

271:                                              ; preds = %222
  %272 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %273 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %274 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i8* %272, i8** %278, align 8
  br label %279

279:                                              ; preds = %271, %254
  store i32 0, i32* %3, align 4
  br label %286

280:                                              ; preds = %234, %137, %48, %40, %27
  %281 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %282 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %281, i32 0, i32 0
  %283 = load i32, i32* %9, align 4
  %284 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %283)
  %285 = load i32, i32* %9, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %280, %279
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local %struct.si2168_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cmd_init(%struct.si2168_cmd*, i8*, i32, i32) #1

declare dso_local i32 @si2168_cmd_execute(%struct.i2c_client*, %struct.si2168_cmd*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
