; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88473.c_mn88473_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.i2c_client = type { i32 }
%struct.mn88473_dev = type { i32, i32, i32* }
%struct.firmware = type { i32, i32* }

@MN88473_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"firmware file '%s' not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"downloading firmware from file '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"firmware download failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"firmware parity check failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mn88473_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88473_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.mn88473_dev*, align 8
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
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %4, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = call %struct.mn88473_dev* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.mn88473_dev* %17, %struct.mn88473_dev** %5, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  store %struct.dtv_frontend_properties* %19, %struct.dtv_frontend_properties** %6, align 8
  %20 = load i8*, i8** @MN88473_FIRMWARE, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_read(i32 %28, i32 245, i32* %10)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %229

33:                                               ; preds = %1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %143

38:                                               ; preds = %33
  %39 = load i8*, i8** %12, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 @request_firmware(%struct.firmware** %11, i8* %39, i32* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %229

50:                                               ; preds = %38
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %51, i32 0, i32 0
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %56 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regmap_write(i32 %59, i32 245, i32 3)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %226

64:                                               ; preds = %50
  %65 = load %struct.firmware*, %struct.firmware** %11, align 8
  %66 = getelementptr inbounds %struct.firmware, %struct.firmware* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %103, %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %68
  %72 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %73 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @min(i32 %75, i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %79 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.firmware*, %struct.firmware** %11, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.firmware*, %struct.firmware** %11, align 8
  %87 = getelementptr inbounds %struct.firmware, %struct.firmware* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @regmap_bulk_write(i32 %82, i32 246, i32* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %71
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %226

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %105 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %9, align 4
  br label %68

110:                                              ; preds = %68
  %111 = load %struct.firmware*, %struct.firmware** %11, align 8
  %112 = call i32 @release_firmware(%struct.firmware* %111)
  %113 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %114 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regmap_read(i32 %117, i32 248, i32* %10)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %110
  br label %229

122:                                              ; preds = %110
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %229

132:                                              ; preds = %122
  %133 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %134 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @regmap_write(i32 %137, i32 245, i32 0)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %229

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %37
  %144 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %145 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @regmap_write(i32 %148, i32 9, i32 8)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %229

153:                                              ; preds = %143
  %154 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %155 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @regmap_write(i32 %158, i32 8, i32 29)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %229

163:                                              ; preds = %153
  %164 = load %struct.mn88473_dev*, %struct.mn88473_dev** %5, align 8
  %165 = getelementptr inbounds %struct.mn88473_dev, %struct.mn88473_dev* %164, i32 0, i32 1
  store i32 1, i32* %165, align 4
  %166 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %167 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  store i32 1, i32* %168, align 8
  %169 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i64 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i8* %169, i8** %175, align 8
  %176 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  store i32 1, i32* %178, align 8
  %179 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %180 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  store i8* %179, i8** %185, align 8
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  %189 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %190 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %191 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  store i8* %189, i8** %195, align 8
  %196 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %197 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %200 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %201 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i64 0
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  store i8* %199, i8** %205, align 8
  %206 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %207 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %210 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %211 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i64 0
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  store i8* %209, i8** %215, align 8
  %216 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %217 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  store i8* %219, i8** %225, align 8
  store i32 0, i32* %2, align 4
  br label %235

226:                                              ; preds = %97, %63
  %227 = load %struct.firmware*, %struct.firmware** %11, align 8
  %228 = call i32 @release_firmware(%struct.firmware* %227)
  br label %229

229:                                              ; preds = %226, %162, %152, %141, %126, %121, %45, %32
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %230, i32 0, i32 0
  %232 = load i32, i32* %7, align 4
  %233 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %229, %163
  %236 = load i32, i32* %2, align 4
  ret i32 %236
}

declare dso_local %struct.mn88473_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
