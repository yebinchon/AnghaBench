; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_register_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dvb.c_vb2_dvb_register_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_adapter = type { i32 }
%struct.vb2_dvb = type { i32*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_19__, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__, i32, i32, %struct.vb2_dvb* }
%struct.TYPE_18__ = type { i32, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: dvb_register_frontend failed (errno = %d)\0A\00", align 1
@DMX_TS_FILTERING = common dso_local global i32 0, align 4
@DMX_SECTION_FILTERING = common dso_local global i32 0, align 4
@DMX_MEMORY_BASED_FILTERING = common dso_local global i32 0, align 4
@vb2_dvb_start_feed = common dso_local global i32 0, align 4
@vb2_dvb_stop_feed = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: dvb_dmx_init failed (errno = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: dvb_dmxdev_init failed (errno = %d)\0A\00", align 1
@DMX_FRONTEND_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\0A\00", align 1
@DMX_MEMORY_FE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%s: connect_frontend failed (errno = %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s: dvb_net_init failed (errno = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_adapter*, %struct.vb2_dvb*)* @vb2_dvb_register_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_dvb_register_frontend(%struct.dvb_adapter* %0, %struct.vb2_dvb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_adapter*, align 8
  %5 = alloca %struct.vb2_dvb*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_adapter* %0, %struct.dvb_adapter** %4, align 8
  store %struct.vb2_dvb* %1, %struct.vb2_dvb** %5, align 8
  %7 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %8 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %9 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dvb_register_frontend(%struct.dvb_adapter* %7, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %16 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %206

20:                                               ; preds = %2
  %21 = load i32, i32* @DMX_TS_FILTERING, align 4
  %22 = load i32, i32* @DMX_SECTION_FILTERING, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DMX_MEMORY_BASED_FILTERING, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %27 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %31 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %32 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  store %struct.vb2_dvb* %30, %struct.vb2_dvb** %33, align 8
  %34 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %35 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  store i32 256, i32* %36, align 8
  %37 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %38 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  store i32 256, i32* %39, align 4
  %40 = load i32, i32* @vb2_dvb_start_feed, align 4
  %41 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %42 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @vb2_dvb_stop_feed, align 4
  %45 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %46 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  store i32 %44, i32* %47, align 8
  %48 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %49 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %48, i32 0, i32 1
  %50 = call i32 @dvb_dmx_init(%struct.TYPE_17__* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %20
  %54 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %55 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  br label %201

59:                                               ; preds = %20
  %60 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %61 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i32 256, i32* %62, align 8
  %63 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %64 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %67 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %68, align 8
  %69 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %70 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %73 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %72, i32 0, i32 2
  %74 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %75 = call i32 @dvb_dmxdev_init(%struct.TYPE_16__* %73, %struct.dvb_adapter* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %59
  %79 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %80 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %197

84:                                               ; preds = %59
  %85 = load i32, i32* @DMX_FRONTEND_0, align 4
  %86 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %87 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 8
  %89 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %90 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %92, align 8
  %94 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %95 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %98 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %97, i32 0, i32 3
  %99 = call i32 %93(%struct.TYPE_18__* %96, %struct.TYPE_19__* %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %84
  %103 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %104 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  br label %193

108:                                              ; preds = %84
  %109 = load i32, i32* @DMX_MEMORY_FE, align 4
  %110 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %111 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %114 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %116, align 8
  %118 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %119 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %122 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %121, i32 0, i32 4
  %123 = call i32 %117(%struct.TYPE_18__* %120, %struct.TYPE_19__* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %128 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %129, i32 %130)
  br label %181

132:                                              ; preds = %108
  %133 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %134 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %136, align 8
  %138 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %139 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %142 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %141, i32 0, i32 3
  %143 = call i32 %137(%struct.TYPE_18__* %140, %struct.TYPE_19__* %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %132
  %147 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %148 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150)
  br label %169

152:                                              ; preds = %132
  %153 = load %struct.dvb_adapter*, %struct.dvb_adapter** %4, align 8
  %154 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %155 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %154, i32 0, i32 6
  %156 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %157 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = call i32 @dvb_net_init(%struct.dvb_adapter* %153, i32* %155, %struct.TYPE_18__* %158)
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %152
  %163 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %164 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %165, i32 %166)
  br label %169

168:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %214

169:                                              ; preds = %162, %146
  %170 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %171 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  %174 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %173, align 8
  %175 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %176 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 2
  %178 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %179 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %178, i32 0, i32 4
  %180 = call i32 %174(%struct.TYPE_18__* %177, %struct.TYPE_19__* %179)
  br label %181

181:                                              ; preds = %169, %126
  %182 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %183 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 3
  %186 = load i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)*, i32 (%struct.TYPE_18__*, %struct.TYPE_19__*)** %185, align 8
  %187 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %188 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 2
  %190 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %191 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %190, i32 0, i32 3
  %192 = call i32 %186(%struct.TYPE_18__* %189, %struct.TYPE_19__* %191)
  br label %193

193:                                              ; preds = %181, %102
  %194 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %195 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %194, i32 0, i32 2
  %196 = call i32 @dvb_dmxdev_release(%struct.TYPE_16__* %195)
  br label %197

197:                                              ; preds = %193, %78
  %198 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %199 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %198, i32 0, i32 1
  %200 = call i32 @dvb_dmx_release(%struct.TYPE_17__* %199)
  br label %201

201:                                              ; preds = %197, %53
  %202 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %203 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @dvb_unregister_frontend(i32* %204)
  br label %206

206:                                              ; preds = %201, %14
  %207 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %208 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @dvb_frontend_detach(i32* %209)
  %211 = load %struct.vb2_dvb*, %struct.vb2_dvb** %5, align 8
  %212 = getelementptr inbounds %struct.vb2_dvb, %struct.vb2_dvb* %211, i32 0, i32 0
  store i32* null, i32** %212, align 8
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %214

214:                                              ; preds = %206, %168
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @dvb_register_frontend(%struct.dvb_adapter*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @dvb_dmx_init(%struct.TYPE_17__*) #1

declare dso_local i32 @dvb_dmxdev_init(%struct.TYPE_16__*, %struct.dvb_adapter*) #1

declare dso_local i32 @dvb_net_init(%struct.dvb_adapter*, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @dvb_dmxdev_release(%struct.TYPE_16__*) #1

declare dso_local i32 @dvb_dmx_release(%struct.TYPE_17__*) #1

declare dso_local i32 @dvb_unregister_frontend(i32*) #1

declare dso_local i32 @dvb_frontend_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
