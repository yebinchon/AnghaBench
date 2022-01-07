; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_m88ds3103.c_m88ds3103_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.m88ds3103_dev* }
%struct.dtv_frontend_properties = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8* }
%struct.m88ds3103_dev = type { i32, i64, i32, %struct.TYPE_10__*, %struct.i2c_client* }
%struct.TYPE_10__ = type { i32 }
%struct.i2c_client = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"firmware=%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"found a '%s' in cold state\0A\00", align 1
@m88ds3103_ops = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@M88RS6000_CHIP_ID = common dso_local global i64 0, align 8
@M88RS6000_FIRMWARE = common dso_local global i8* null, align 8
@M88DS3103_FIRMWARE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"firmware did not run\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"found a '%s' in warm state\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"firmware version: %X.%X\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @m88ds3103_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88ds3103_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.m88ds3103_dev*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.firmware*, align 8
  %12 = alloca i8*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1
  %15 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %14, align 8
  store %struct.m88ds3103_dev* %15, %struct.m88ds3103_dev** %4, align 8
  %16 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %17 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %16, i32 0, i32 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %5, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  store %struct.dtv_frontend_properties* %20, %struct.dtv_frontend_properties** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %25 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %27 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %26, i32 8, i32 1, i32 1)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %238

31:                                               ; preds = %1
  %32 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %33 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %32, i32 4, i32 1, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %238

37:                                               ; preds = %31
  %38 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %39 = call i32 @m88ds3103_update_bits(%struct.m88ds3103_dev* %38, i32 35, i32 16, i32 0)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %238

43:                                               ; preds = %37
  %44 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %45 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @regmap_read(i32 %46, i32 185, i32* %10)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %238

51:                                               ; preds = %43
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %202

59:                                               ; preds = %51
  %60 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %61 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @regmap_write(i32 %62, i32 7, i32 224)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %238

67:                                               ; preds = %59
  %68 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %69 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regmap_write(i32 %70, i32 7, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %238

75:                                               ; preds = %67
  %76 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m88ds3103_ops, i32 0, i32 0, i32 0), align 4
  %79 = call i32 (i32*, i8*, ...) @dev_info(i32* %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %81 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @M88RS6000_CHIP_ID, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i8*, i8** @M88RS6000_FIRMWARE, align 8
  store i8* %86, i8** %12, align 8
  br label %89

87:                                               ; preds = %75
  %88 = load i8*, i8** @M88DS3103_FIRMWARE, align 8
  store i8* %88, i8** %12, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i8*, i8** %12, align 8
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 0
  %93 = call i32 @request_firmware(%struct.firmware** %11, i8* %90, i32* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  br label %238

101:                                              ; preds = %89
  %102 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 (i32*, i8*, ...) @dev_info(i32* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  %106 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %107 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @regmap_write(i32 %108, i32 178, i32 1)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %235

113:                                              ; preds = %101
  %114 = load %struct.firmware*, %struct.firmware** %11, align 8
  %115 = getelementptr inbounds %struct.firmware, %struct.firmware* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %152, %113
  %118 = load i32, i32* %9, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %117
  %121 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %122 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %121, i32 0, i32 3
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @min(i32 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %130 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.firmware*, %struct.firmware** %11, align 8
  %133 = getelementptr inbounds %struct.firmware, %struct.firmware* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.firmware*, %struct.firmware** %11, align 8
  %136 = getelementptr inbounds %struct.firmware, %struct.firmware* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sub nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %134, i64 %140
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @regmap_bulk_write(i32 %131, i32 176, i32* %141, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %120
  %147 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i32, i32* %7, align 4
  %150 = call i32 (i32*, i8*, ...) @dev_err(i32* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  br label %235

151:                                              ; preds = %120
  br label %152

152:                                              ; preds = %151
  %153 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %154 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %153, i32 0, i32 3
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %117

161:                                              ; preds = %117
  %162 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %163 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @regmap_write(i32 %164, i32 178, i32 0)
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %235

169:                                              ; preds = %161
  %170 = load %struct.firmware*, %struct.firmware** %11, align 8
  %171 = call i32 @release_firmware(%struct.firmware* %170)
  %172 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %173 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @regmap_read(i32 %174, i32 185, i32* %10)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %238

179:                                              ; preds = %169
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %7, align 4
  %185 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = call i32 (i32*, i8*, ...) @dev_info(i32* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %238

188:                                              ; preds = %179
  %189 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %190 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %189, i32 0, i32 0
  %191 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @m88ds3103_ops, i32 0, i32 0, i32 0), align 4
  %192 = call i32 (i32*, i8*, ...) @dev_info(i32* %190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  %193 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 0
  %195 = load i32, i32* %10, align 4
  %196 = lshr i32 %195, 4
  %197 = and i32 %196, 15
  %198 = load i32, i32* %10, align 4
  %199 = lshr i32 %198, 0
  %200 = and i32 %199, 15
  %201 = call i32 (i32*, i8*, ...) @dev_info(i32* %194, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %188, %58
  %203 = load %struct.m88ds3103_dev*, %struct.m88ds3103_dev** %4, align 8
  %204 = getelementptr inbounds %struct.m88ds3103_dev, %struct.m88ds3103_dev* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  %205 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %206 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  store i32 1, i32* %207, align 8
  %208 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %209 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %210 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i8* %208, i8** %214, align 8
  %215 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %216 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i32 1, i32* %217, align 8
  %218 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %219 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %220 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  store i8* %218, i8** %224, align 8
  %225 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %226 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  store i32 1, i32* %227, align 8
  %228 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %229 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %230 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i64 0
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  store i8* %228, i8** %234, align 8
  store i32 0, i32* %2, align 4
  br label %244

235:                                              ; preds = %168, %146, %112
  %236 = load %struct.firmware*, %struct.firmware** %11, align 8
  %237 = call i32 @release_firmware(%struct.firmware* %236)
  br label %238

238:                                              ; preds = %235, %182, %178, %96, %74, %66, %50, %42, %36, %30
  %239 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = load i32, i32* %7, align 4
  %242 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* %7, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %238, %202
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @m88ds3103_update_bits(%struct.m88ds3103_dev*, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
