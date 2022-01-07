; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_dvb_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_dvb_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i32, i32, i8*, i32, i32 (i32, %struct.sms_stats*)*, %struct.dvb_frontend }
%struct.sms_stats = type opaque
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.sms_stats.0 = type { i32, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*, %struct.sms_stats.0*)* @smsdvb_update_dvb_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_update_dvb_stats(%struct.smsdvb_client_t* %0, %struct.sms_stats.0* %1) #0 {
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.sms_stats.0*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  store %struct.sms_stats.0* %1, %struct.sms_stats.0** %4, align 8
  %7 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %8 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %7, i32 0, i32 5
  store %struct.dvb_frontend* %8, %struct.dvb_frontend** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %6, align 8
  %11 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %12 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %11, i32 0, i32 4
  %13 = load i32 (i32, %struct.sms_stats*)*, i32 (i32, %struct.sms_stats*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.sms_stats*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %17 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %16, i32 0, i32 4
  %18 = load i32 (i32, %struct.sms_stats*)*, i32 (i32, %struct.sms_stats*)** %17, align 8
  %19 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %20 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %23 = bitcast %struct.sms_stats.0* %22 to %struct.sms_stats*
  %24 = call i32 %18(i32 %21, %struct.sms_stats* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %27 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %30 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %29, i32 0, i32 17
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @sms_to_status(i32 %28, i32 %31)
  %33 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %34 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %36 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %35, i32 0, i32 16
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %38, i32 0, i32 14
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %41 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @sms_to_status(i32 %42, i32 0)
  %44 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %45 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %47 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %46, i32 0, i32 15
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sms_to_bw(i32 %48)
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %53 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sms_to_mode(i32 %54)
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %59 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %58, i32 0, i32 13
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @sms_to_guard_interval(i32 %60)
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %65 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @sms_to_code_rate(i32 %66)
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 10
  store i8* %67, i8** %69, align 8
  %70 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %71 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @sms_to_code_rate(i32 %72)
  %74 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %75 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %77 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @sms_to_hierarchy(i32 %78)
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %83 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sms_to_modulation(i32 %84)
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %89 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %97 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %98, 1000
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  store i32 %99, i32* %105, align 4
  %106 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %107 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 1000
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  %116 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %117 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %25
  br label %216

121:                                              ; preds = %25
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %130 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %133 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 1
  store i8* %131, i8** %137, align 8
  %138 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  store i8* %138, i8** %144, align 8
  %145 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %146 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %145, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %147
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 8
  %158 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %159 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %168, %160
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %166, align 8
  %171 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %172 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 1
  store i8* %171, i8** %177, align 8
  %178 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %179 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  store i8* %178, i8** %184, align 8
  %185 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %186 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %187
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 8
  %198 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %199 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %202 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %200
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 8
  %211 = load %struct.sms_stats.0*, %struct.sms_stats.0** %4, align 8
  %212 = getelementptr inbounds %struct.sms_stats.0, %struct.sms_stats.0* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %215 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %121, %120
  ret void
}

declare dso_local i8* @sms_to_status(i32, i32) #1

declare dso_local i32 @sms_to_bw(i32) #1

declare dso_local i32 @sms_to_mode(i32) #1

declare dso_local i32 @sms_to_guard_interval(i32) #1

declare dso_local i8* @sms_to_code_rate(i32) #1

declare dso_local i32 @sms_to_hierarchy(i32) #1

declare dso_local i32 @sms_to_modulation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
