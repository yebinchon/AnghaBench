; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_dvb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop.c_flexcop_dvb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.TYPE_21__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_25__, %struct.TYPE_25__, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.flexcop_device* }
%struct.TYPE_23__ = type { %struct.TYPE_24__, i32, i32*, i32, i32, i32, %struct.flexcop_device* }
%struct.TYPE_24__ = type { i32, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*)* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_24__*, i32 }
%struct.TYPE_25__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"FlexCop Digital TV device\00", align 1
@adapter_nr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"error registering DVB adapter\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@FC_MAX_FEED = common dso_local global i32 0, align 4
@flexcop_dvb_start_feed = common dso_local global i32 0, align 4
@flexcop_dvb_stop_feed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dvb_dmx failed: error %d\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"dvb_dmxdev_init failed: error %d\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"adding hw_frontend to dmx failed: error %d\00", align 1
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"adding mem_frontend to dmx failed: error %d\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"connect frontend failed: error %d\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"dvb_net_init failed: error %d\00", align 1
@FC_STATE_DVB_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*)* @flexcop_dvb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_dvb_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  %5 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %6 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %5, i32 0, i32 0
  %7 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %8 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @adapter_nr, align 4
  %14 = call i32 @dvb_register_adapter(%struct.TYPE_21__* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %217

20:                                               ; preds = %1
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %23 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  store %struct.flexcop_device* %21, %struct.flexcop_device** %24, align 8
  %25 = load i32, i32* @DMX_TS_FILTERING, align 4
  %26 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %31 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 6
  store %struct.flexcop_device* %34, %struct.flexcop_device** %37, align 8
  %38 = load i32, i32* @FC_MAX_FEED, align 4
  %39 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %40 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %43 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 5
  store i32 %38, i32* %44, align 8
  %45 = load i32, i32* @flexcop_dvb_start_feed, align 4
  %46 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %47 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @flexcop_dvb_stop_feed, align 4
  %50 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %51 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %57 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %56, i32 0, i32 1
  %58 = call i32 @dvb_dmx_init(%struct.TYPE_23__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %20
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %212

64:                                               ; preds = %20
  %65 = load i32, i32* @DMX_FRONTEND_0, align 4
  %66 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %67 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %70 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %74 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 2
  store i32 %72, i32* %75, align 8
  %76 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %77 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 0
  %79 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %80 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 1
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %81, align 8
  %82 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %83 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %86 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %85, i32 0, i32 2
  %87 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %88 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %87, i32 0, i32 0
  %89 = call i32 @dvb_dmxdev_init(%struct.TYPE_22__* %86, %struct.TYPE_21__* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %64
  %93 = load i32, i32* %4, align 4
  %94 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %208

95:                                               ; preds = %64
  %96 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %97 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %99, align 8
  %101 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %102 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %105 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %104, i32 0, i32 3
  %106 = call i32 %100(%struct.TYPE_24__* %103, %struct.TYPE_25__* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load i32, i32* %4, align 4
  %111 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %204

112:                                              ; preds = %95
  %113 = load i32, i32* @DMX_MEMORY_FE, align 4
  %114 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %115 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 4
  %117 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %118 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %120, align 8
  %122 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %123 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %126 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %125, i32 0, i32 4
  %127 = call i32 %121(%struct.TYPE_24__* %124, %struct.TYPE_25__* %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %112
  %131 = load i32, i32* %4, align 4
  %132 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %192

133:                                              ; preds = %112
  %134 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %135 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %137, align 8
  %139 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %140 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %143 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %142, i32 0, i32 3
  %144 = call i32 %138(%struct.TYPE_24__* %141, %struct.TYPE_25__* %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %133
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %148)
  br label %180

150:                                              ; preds = %133
  %151 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %152 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %151, i32 0, i32 0
  %153 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %154 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %153, i32 0, i32 6
  %155 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %156 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = call i32 @dvb_net_init(%struct.TYPE_21__* %152, i32* %154, %struct.TYPE_24__* %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32, i32* %4, align 4
  %163 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %162)
  br label %170

164:                                              ; preds = %150
  %165 = load i32, i32* @FC_STATE_DVB_INIT, align 4
  %166 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %167 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  store i32 0, i32* %2, align 4
  br label %217

170:                                              ; preds = %161
  %171 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %172 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 4
  %175 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %174, align 8
  %176 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %177 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = call i32 %175(%struct.TYPE_24__* %178)
  br label %180

180:                                              ; preds = %170, %147
  %181 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %182 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 3
  %185 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %184, align 8
  %186 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %187 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 0
  %189 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %190 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %189, i32 0, i32 4
  %191 = call i32 %185(%struct.TYPE_24__* %188, %struct.TYPE_25__* %190)
  br label %192

192:                                              ; preds = %180, %130
  %193 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %194 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  %197 = load i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_25__*)** %196, align 8
  %198 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %199 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %202 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %201, i32 0, i32 3
  %203 = call i32 %197(%struct.TYPE_24__* %200, %struct.TYPE_25__* %202)
  br label %204

204:                                              ; preds = %192, %109
  %205 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %206 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %205, i32 0, i32 2
  %207 = call i32 @dvb_dmxdev_release(%struct.TYPE_22__* %206)
  br label %208

208:                                              ; preds = %204, %92
  %209 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %210 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %209, i32 0, i32 1
  %211 = call i32 @dvb_dmx_release(%struct.TYPE_23__* %210)
  br label %212

212:                                              ; preds = %208, %61
  %213 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %214 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %213, i32 0, i32 0
  %215 = call i32 @dvb_unregister_adapter(%struct.TYPE_21__* %214)
  %216 = load i32, i32* %4, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %212, %164, %17
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i32 @dvb_register_adapter(%struct.TYPE_21__*, i8*, i32, i32, i32) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_23__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @dvb_net_init(%struct.TYPE_21__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_22__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_23__*) #1

declare dso_local i32 @dvb_unregister_adapter(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
