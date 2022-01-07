; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_isdbt_stats_ex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smsdvb-main.c_smsdvb_update_isdbt_stats_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsdvb_client_t = type { i64, i32, i32, i32 (i32, %struct.sms_isdbt_stats_ex*)*, %struct.dvb_frontend }
%struct.sms_isdbt_stats_ex = type opaque
%struct.dvb_frontend = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_18__*, %struct.TYPE_22__, %struct.TYPE_20__, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i8* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.sms_isdbt_stats_ex.0 = type { i32, i32, i32, %struct.sms_isdbt_layer_stats*, i32, i64, i64, i32, i32, i32, i32 }
%struct.sms_isdbt_layer_stats = type { i32, i64, i64, i64, i64, i32 }

@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsdvb_client_t*, %struct.sms_isdbt_stats_ex.0*)* @smsdvb_update_isdbt_stats_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsdvb_update_isdbt_stats_ex(%struct.smsdvb_client_t* %0, %struct.sms_isdbt_stats_ex.0* %1) #0 {
  %3 = alloca %struct.smsdvb_client_t*, align 8
  %4 = alloca %struct.sms_isdbt_stats_ex.0*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca %struct.sms_isdbt_layer_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smsdvb_client_t* %0, %struct.smsdvb_client_t** %3, align 8
  store %struct.sms_isdbt_stats_ex.0* %1, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %10 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %11 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %10, i32 0, i32 4
  store %struct.dvb_frontend* %11, %struct.dvb_frontend** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %6, align 8
  %14 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %15 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %14, i32 0, i32 3
  %16 = load i32 (i32, %struct.sms_isdbt_stats_ex*)*, i32 (i32, %struct.sms_isdbt_stats_ex*)** %15, align 8
  %17 = icmp ne i32 (i32, %struct.sms_isdbt_stats_ex*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %20 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %19, i32 0, i32 3
  %21 = load i32 (i32, %struct.sms_isdbt_stats_ex*)*, i32 (i32, %struct.sms_isdbt_stats_ex*)** %20, align 8
  %22 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %23 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %26 = bitcast %struct.sms_isdbt_stats_ex.0* %25 to %struct.sms_isdbt_stats_ex*
  %27 = call i32 %21(i32 %24, %struct.sms_isdbt_stats_ex* %26)
  br label %28

28:                                               ; preds = %18, %2
  %29 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %30 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %33 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  %34 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %35 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sms_to_status(i32 %36, i32 0)
  %38 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %39 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %41 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sms_to_bw(i32 %42)
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %47 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sms_to_mode(i32 %48)
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %53 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sms_to_guard_interval(i32 %54)
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %59 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %67 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %28
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 3, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %78 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %80 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %86 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %88 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 1000
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 4
  %97 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %98 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, 1000
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  store i32 %100, i32* %106, align 4
  %107 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %108 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %76
  br label %387

112:                                              ; preds = %76
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.smsdvb_client_t*, %struct.smsdvb_client_t** %3, align 8
  %121 = getelementptr inbounds %struct.smsdvb_client_t, %struct.smsdvb_client_t* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %123 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %122, i32 0, i32 6
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 5
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  store i8* %134, i8** %140, align 8
  %141 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  store i8* %141, i8** %147, align 8
  %148 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %149 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i64 0
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %155 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i64 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  store i8* %160, i8** %166, align 8
  %167 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %168 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %169 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i64 0
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  store i8* %167, i8** %173, align 8
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  %176 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 8
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  store i32 %180, i32* %183, align 8
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %189, 1
  %191 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 8
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %384, %112
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %387

198:                                              ; preds = %194
  %199 = load %struct.sms_isdbt_stats_ex.0*, %struct.sms_isdbt_stats_ex.0** %4, align 8
  %200 = getelementptr inbounds %struct.sms_isdbt_stats_ex.0, %struct.sms_isdbt_stats_ex.0* %199, i32 0, i32 3
  %201 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %201, i64 %203
  store %struct.sms_isdbt_layer_stats* %204, %struct.sms_isdbt_layer_stats** %7, align 8
  %205 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %206 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %198
  %210 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %211 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %212, 13
  br i1 %213, label %214, label %231

214:                                              ; preds = %209
  %215 = load i32, i32* %8, align 4
  %216 = shl i32 1, %215
  %217 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %218 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %222 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %224, i32 0, i32 7
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 0
  store i32 %223, i32* %230, align 4
  br label %232

231:                                              ; preds = %209, %198
  br label %384

232:                                              ; preds = %214
  %233 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %234 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @sms_to_modulation(i32 %235)
  %237 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %238 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %237, i32 0, i32 7
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  store i32 %236, i32* %243, align 4
  %244 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %245 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 1
  store i8* %244, i8** %253, align 8
  %254 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %255 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %256 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %262, i32 0, i32 1
  store i8* %254, i8** %263, align 8
  %264 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %265 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %268 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = add nsw i64 %276, %266
  store i64 %277, i64* %275, align 8
  %278 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %279 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %278, i32 0, i32 3
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %282 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %281, i32 0, i32 5
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %280
  store i64 %291, i64* %289, align 8
  %292 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %293 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %296 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %295, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i64 0
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, %294
  store i64 %302, i64* %300, align 8
  %303 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %304 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %307 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_24__*, %struct.TYPE_24__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i64 0
  %311 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, %305
  store i64 %313, i64* %311, align 8
  %314 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %315 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %316 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 1
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %317, align 8
  %319 = load i32, i32* %8, align 4
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 1
  store i8* %314, i8** %323, align 8
  %324 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %325 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %326 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 1
  store i8* %324, i8** %333, align 8
  %334 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %335 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %338 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %339, align 8
  %341 = load i32, i32* %8, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = add nsw i64 %346, %336
  store i64 %347, i64* %345, align 8
  %348 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %349 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %348, i32 0, i32 1
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %352 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_26__*, %struct.TYPE_26__** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = add nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %354, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = add nsw i64 %360, %350
  store i64 %361, i64* %359, align 8
  %362 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %363 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %362, i32 0, i32 2
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %366 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %365, i32 0, i32 4
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i64 0
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = add nsw i64 %371, %364
  store i64 %372, i64* %370, align 8
  %373 = load %struct.sms_isdbt_layer_stats*, %struct.sms_isdbt_layer_stats** %7, align 8
  %374 = getelementptr inbounds %struct.sms_isdbt_layer_stats, %struct.sms_isdbt_layer_stats* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %377 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %376, i32 0, i32 3
  %378 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_26__*, %struct.TYPE_26__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %379, i64 0
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, %375
  store i64 %383, i64* %381, align 8
  br label %384

384:                                              ; preds = %232, %231
  %385 = load i32, i32* %8, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %8, align 4
  br label %194

387:                                              ; preds = %111, %194
  ret void
}

declare dso_local i32 @sms_to_status(i32, i32) #1

declare dso_local i32 @sms_to_bw(i32) #1

declare dso_local i32 @sms_to_mode(i32) #1

declare dso_local i32 @sms_to_guard_interval(i32) #1

declare dso_local i32 @sms_to_modulation(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
