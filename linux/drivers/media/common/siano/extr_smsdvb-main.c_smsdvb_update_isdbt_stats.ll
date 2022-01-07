; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_isdbt_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_isdbt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i64, i32, i32, i32 (i32, %struct.sms_isdbt_stats*)*, %struct.dvb_frontend }
%struct.sms_isdbt_stats = type opaque
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_18__*, %struct.TYPE_22__, %struct.TYPE_20__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.sms_isdbt_stats.0 = type { i64, i32, i32, i32, %struct.sms_isdbt_layer_stats*, i32, i64, i64, i32, i64, i32, i32, i32 }
%struct.sms_isdbt_layer_stats = type { i32, i64, i64, i64, i64, i32 }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*, %struct.sms_isdbt_stats.0*)* @smsdvb_update_isdbt_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_update_isdbt_stats(%struct.smsdvb_client_t* %0, %struct.sms_isdbt_stats.0* %1) #0 {
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.sms_isdbt_stats.0*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.sms_isdbt_layer_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  store %struct.sms_isdbt_stats.0* %1, %struct.sms_isdbt_stats.0** %4, align 8
  %10 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %11 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %10, i32 0, i32 4
  store %struct.dvb_frontend* %11, %struct.dvb_frontend** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %6, align 8
  %14 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %15 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %14, i32 0, i32 3
  %16 = load i32 (i32, %struct.sms_isdbt_stats*)*, i32 (i32, %struct.sms_isdbt_stats*)** %15, align 8
  %17 = icmp ne i32 (i32, %struct.sms_isdbt_stats*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %20 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %19, i32 0, i32 3
  %21 = load i32 (i32, %struct.sms_isdbt_stats*)*, i32 (i32, %struct.sms_isdbt_stats*)** %20, align 8
  %22 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %23 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %26 = bitcast %struct.sms_isdbt_stats.0* %25 to %struct.sms_isdbt_stats*
  %27 = call i32 %21(i32 %24, %struct.sms_isdbt_stats* %26)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %30 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %33 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %32, i32 0, i32 12
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sms_to_status(i32 %31, i32 %34)
  %36 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %37 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %39 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %28
  %43 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %44 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = mul nsw i32 %46, 1000
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store i32 %47, i32* %53, align 4
  %54 = load i32, i32* @FE_SCALE_NOT_AVAILABLE, align 4
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  store i32 %54, i32* %60, align 4
  br label %394

61:                                               ; preds = %28
  %62 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %63 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %68 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sms_to_bw(i32 %69)
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 8
  %73 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %74 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %73, i32 0, i32 9
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @sms_to_mode(i64 %75)
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 4
  %79 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %80 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sms_to_guard_interval(i32 %81)
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 10
  store i32 %82, i32* %84, align 8
  %85 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %86 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %94 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 3
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 3, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %107 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  %112 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %115 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 1000
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 9
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store i32 %117, i32* %123, align 4
  %124 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %125 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %126, 1000
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  store i32 %127, i32* %133, align 4
  %134 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %135 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %103
  br label %394

139:                                              ; preds = %103
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %148 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  store i64 0, i64* %160, align 8
  %161 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %162 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %163 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i64 0
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  store i8* %161, i8** %167, align 8
  %168 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %169 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  store i8* %168, i8** %174, align 8
  %175 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %175, i32 0, i32 4
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i64 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %188 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  store i8* %187, i8** %193, align 8
  %194 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %195 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i64 0
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  store i8* %194, i8** %200, align 8
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %391, %139
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %394

205:                                              ; preds = %201
  %206 = load %struct.sms_isdbt_stats.0*, %struct.sms_isdbt_stats.0** %4, align 8
  %207 = getelementptr inbounds %struct.sms_isdbt_stats.0, %struct.sms_isdbt_stats.0* %206, i32 0, i32 4
  %208 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %208, i64 %210
  store %struct.sms_isdbt_layer_stats* %211, %struct.sms_isdbt_layer_stats** %7, align 8
  %212 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %213 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %238

216:                                              ; preds = %205
  %217 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %218 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %219, 13
  br i1 %220, label %221, label %238

221:                                              ; preds = %216
  %222 = load i32, i32* %8, align 4
  %223 = shl i32 1, %222
  %224 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %229 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %232 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %231, i32 0, i32 7
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  store i32 %230, i32* %237, align 4
  br label %239

238:                                              ; preds = %216, %205
  br label %391

239:                                              ; preds = %221
  %240 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %241 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @sms_to_modulation(i32 %242)
  %244 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %245 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %244, i32 0, i32 7
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  store i32 %243, i32* %250, align 4
  %251 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %252 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %253 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %252, i32 0, i32 6
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 1
  store i8* %251, i8** %260, align 8
  %261 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %262 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %263 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %264, align 8
  %266 = load i32, i32* %8, align 4
  %267 = add nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 1
  store i8* %261, i8** %270, align 8
  %271 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %272 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %271, i32 0, i32 4
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %275 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_23__*, %struct.TYPE_23__** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %277, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, %273
  store i64 %284, i64* %282, align 8
  %285 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %286 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %289 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %297, %287
  store i64 %298, i64* %296, align 8
  %299 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %300 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %303 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %302, i32 0, i32 6
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i64 0
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = add nsw i64 %308, %301
  store i64 %309, i64* %307, align 8
  %310 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %311 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %314 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %313, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i64 0
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, %312
  store i64 %320, i64* %318, align 8
  %321 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %322 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %323 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %324, align 8
  %326 = load i32, i32* %8, align 4
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 1
  store i8* %321, i8** %330, align 8
  %331 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %332 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %333 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %334, align 8
  %336 = load i32, i32* %8, align 4
  %337 = add nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 1
  store i8* %331, i8** %340, align 8
  %341 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %342 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %341, i32 0, i32 2
  %343 = load i64, i64* %342, align 8
  %344 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %345 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %346, align 8
  %348 = load i32, i32* %8, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %353, %343
  store i64 %354, i64* %352, align 8
  %355 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %356 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %359 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_16__*, %struct.TYPE_16__** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = add nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = add nsw i64 %367, %357
  store i64 %368, i64* %366, align 8
  %369 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %370 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %373 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_14__*, %struct.TYPE_14__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = add nsw i64 %378, %371
  store i64 %379, i64* %377, align 8
  %380 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %381 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %384 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i64 0
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = add nsw i64 %389, %382
  store i64 %390, i64* %388, align 8
  br label %391

391:                                              ; preds = %239, %238
  %392 = load i32, i32* %8, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %8, align 4
  br label %201

394:                                              ; preds = %42, %138, %201
  ret void
}

declare dso_local i32 @sms_to_status(i32, i32) #1

declare dso_local i32 @sms_to_bw(i32) #1

declare dso_local i32 @sms_to_mode(i64) #1

declare dso_local i32 @sms_to_guard_interval(i32) #1

declare dso_local i32 @sms_to_modulation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
