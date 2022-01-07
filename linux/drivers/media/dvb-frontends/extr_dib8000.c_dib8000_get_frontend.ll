; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_11__*, %struct.dtv_frontend_properties*)*, i32 (%struct.TYPE_11__*, i32*)* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@FE_HAS_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dib8000_get_frontend: TMCC lock\0A\00", align 1
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"TMCC lock on the slave%i\0A\00", align 1
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"dib8000_get_frontend: transmission mode 2K\0A\00", align 1
@TRANSMISSION_MODE_4K = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"dib8000_get_frontend: transmission mode 4K\0A\00", align 1
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"dib8000_get_frontend: transmission mode 8K\0A\00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"dib8000_get_frontend: Guard Interval = 1/32\0A\00", align 1
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"dib8000_get_frontend: Guard Interval = 1/16\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"dib8000_get_frontend: Guard Interval = 1/8\0A\00", align 1
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"dib8000_get_frontend: Guard Interval = 1/4\0A\00", align 1
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"dib8000_get_frontend: partial_reception = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"dib8000_get_frontend: Layer %d segments = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d time_intlv = %d\0A\00", align 1
@FEC_1_2 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d Code Rate = 1/2\0A\00", align 1
@FEC_2_3 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d Code Rate = 2/3\0A\00", align 1
@FEC_3_4 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d Code Rate = 3/4\0A\00", align 1
@FEC_5_6 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d Code Rate = 5/6\0A\00", align 1
@FEC_7_8 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [48 x i8] c"dib8000_get_frontend: Layer %d Code Rate = 7/8\0A\00", align 1
@DQPSK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"dib8000_get_frontend: Layer %d DQPSK\0A\00", align 1
@QPSK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [37 x i8] c"dib8000_get_frontend: Layer %d QPSK\0A\00", align 1
@QAM_16 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"dib8000_get_frontend: Layer %d QAM16\0A\00", align 1
@QAM_64 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [38 x i8] c"dib8000_get_frontend: Layer %d QAM64\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @dib8000_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.dib8000_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %14, align 8
  store %struct.dib8000_state* %15, %struct.dib8000_state** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 0
  store i32 6000000, i32* %17, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %19 = call i32 @dib8000_read_status(%struct.dvb_frontend* %18, i32* %9)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FE_HAS_SYNC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %776

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %10, align 8
  br label %27

27:                                               ; preds = %308, %25
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %34, i64 %35
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = icmp ne %struct.TYPE_11__* %37, null
  br label %39

39:                                               ; preds = %31, %27
  %40 = phi i1 [ false, %27 ], [ %38, %31 ]
  br i1 %40, label %41, label %311

41:                                               ; preds = %39
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %43 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %42, i32 0, i32 1
  %44 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %44, i64 %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_11__*, i32*)*, i32 (%struct.TYPE_11__*, i32*)** %49, align 8
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %52 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %53, i64 %54
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = call i32 %50(%struct.TYPE_11__* %56, i32* %9)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @FE_HAS_SYNC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %307

62:                                               ; preds = %41
  %63 = load i64, i64* %10, align 8
  %64 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %66 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %67, i64 %68
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_11__*, %struct.dtv_frontend_properties*)*, i32 (%struct.TYPE_11__*, %struct.dtv_frontend_properties*)** %72, align 8
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 1
  %76 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %75, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %76, i64 %77
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %81 = call i32 %73(%struct.TYPE_11__* %79, %struct.dtv_frontend_properties* %80)
  store i64 0, i64* %11, align 8
  br label %82

82:                                               ; preds = %303, %62
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %88 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %87, i32 0, i32 1
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %88, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %89, i64 %90
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = icmp ne %struct.TYPE_11__* %92, null
  br label %94

94:                                               ; preds = %86, %82
  %95 = phi i1 [ false, %82 ], [ %93, %86 ]
  br i1 %95, label %96, label %306

96:                                               ; preds = %94
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %302

100:                                              ; preds = %96
  %101 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %102 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %103, i64 %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %111 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %110, i32 0, i32 1
  %112 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %112, i64 %113
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %109, i32* %117, align 8
  %118 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %119 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %118, i32 0, i32 1
  %120 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %120, i64 %121
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %128 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %127, i32 0, i32 1
  %129 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %129, i64 %130
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i32 %126, i32* %134, align 4
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %136 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %135, i32 0, i32 1
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %137, i64 %138
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %145 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %144, i32 0, i32 1
  %146 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %146, i64 %147
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  store i32 %143, i32* %151, align 4
  %152 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %153 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %152, i32 0, i32 1
  %154 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %153, align 8
  %155 = load i64, i64* %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %154, i64 %155
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %162 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %161, i32 0, i32 1
  %163 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %163, i64 %164
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 4
  store i32 %160, i32* %168, align 8
  %169 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %170 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %169, i32 0, i32 1
  %171 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %170, align 8
  %172 = load i64, i64* %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %171, i64 %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %179 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %178, i32 0, i32 1
  %180 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %179, align 8
  %181 = load i64, i64* %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %180, i64 %181
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 %177, i32* %185, align 8
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %298, %100
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %187, 3
  br i1 %188, label %189, label %301

189:                                              ; preds = %186
  %190 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %191 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %190, i32 0, i32 1
  %192 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %191, align 8
  %193 = load i64, i64* %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %192, i64 %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %205 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %204, i32 0, i32 1
  %206 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %205, align 8
  %207 = load i64, i64* %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %206, i64 %207
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  store i32 %203, i32* %216, align 4
  %217 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %218 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %217, i32 0, i32 1
  %219 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %219, i64 %220
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %232 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %231, i32 0, i32 1
  %233 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %232, align 8
  %234 = load i64, i64* %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %233, i64 %234
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 %230, i32* %243, align 4
  %244 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %245 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %244, i32 0, i32 1
  %246 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %245, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %246, i64 %247
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %259 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %258, i32 0, i32 1
  %260 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %259, align 8
  %261 = load i64, i64* %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %260, i64 %261
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 3
  store i32 %257, i32* %270, align 4
  %271 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %272 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %271, i32 0, i32 1
  %273 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %272, align 8
  %274 = load i64, i64* %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %273, i64 %274
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %278, align 8
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %286 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %285, i32 0, i32 1
  %287 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %286, align 8
  %288 = load i64, i64* %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %287, i64 %288
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  store i32 %284, i32* %297, align 4
  br label %298

298:                                              ; preds = %189
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %186

301:                                              ; preds = %186
  br label %302

302:                                              ; preds = %301, %96
  br label %303

303:                                              ; preds = %302
  %304 = load i64, i64* %11, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %11, align 8
  br label %82

306:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %776

307:                                              ; preds = %41
  br label %308

308:                                              ; preds = %307
  %309 = load i64, i64* %10, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %10, align 8
  br label %27

311:                                              ; preds = %39
  %312 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %313 = call i32 @dib8000_read_word(%struct.dib8000_state* %312, i32 508)
  %314 = and i32 %313, 1
  %315 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %316 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  %317 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %318 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = icmp eq i32 %319, 32912
  br i1 %320, label %321, label %324

321:                                              ; preds = %311
  %322 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %323 = call i32 @dib8000_read_word(%struct.dib8000_state* %322, i32 572)
  store i32 %323, i32* %8, align 4
  br label %327

324:                                              ; preds = %311
  %325 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %326 = call i32 @dib8000_read_word(%struct.dib8000_state* %325, i32 570)
  store i32 %326, i32* %8, align 4
  br label %327

327:                                              ; preds = %324, %321
  %328 = load i32, i32* %8, align 4
  %329 = and i32 %328, 64
  %330 = ashr i32 %329, 6
  %331 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %332 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 8
  %333 = load i32, i32* %8, align 4
  %334 = and i32 %333, 48
  %335 = ashr i32 %334, 4
  switch i32 %335, label %347 [
    i32 1, label %336
    i32 2, label %341
    i32 3, label %346
  ]

336:                                              ; preds = %327
  %337 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %338 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %339 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %338, i32 0, i32 6
  store i32 %337, i32* %339, align 4
  %340 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %352

341:                                              ; preds = %327
  %342 = load i32, i32* @TRANSMISSION_MODE_4K, align 4
  %343 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %344 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %343, i32 0, i32 6
  store i32 %342, i32* %344, align 4
  %345 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %352

346:                                              ; preds = %327
  br label %347

347:                                              ; preds = %327, %346
  %348 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %349 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %350 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %349, i32 0, i32 6
  store i32 %348, i32* %350, align 4
  %351 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %352

352:                                              ; preds = %347, %341, %336
  %353 = load i32, i32* %8, align 4
  %354 = and i32 %353, 3
  switch i32 %354, label %375 [
    i32 0, label %355
    i32 1, label %360
    i32 2, label %365
    i32 3, label %370
  ]

355:                                              ; preds = %352
  %356 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %357 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %358 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %357, i32 0, i32 5
  store i32 %356, i32* %358, align 8
  %359 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %375

360:                                              ; preds = %352
  %361 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %362 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %363 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 8
  %364 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %375

365:                                              ; preds = %352
  %366 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  %367 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %368 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %369 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %368, i32 0, i32 5
  store i32 %367, i32* %369, align 8
  br label %375

370:                                              ; preds = %352
  %371 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %372 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %373 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %374 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %373, i32 0, i32 5
  store i32 %372, i32* %374, align 8
  br label %375

375:                                              ; preds = %352, %370, %365, %360, %355
  %376 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %377 = call i32 @dib8000_read_word(%struct.dib8000_state* %376, i32 505)
  store i32 %377, i32* %8, align 4
  %378 = load i32, i32* %8, align 4
  %379 = and i32 %378, 1
  %380 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %381 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %380, i32 0, i32 3
  store i32 %379, i32* %381, align 4
  %382 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %383 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %384)
  store i32 0, i32* %7, align 4
  br label %386

386:                                              ; preds = %606, %375
  %387 = load i32, i32* %7, align 4
  %388 = icmp slt i32 %387, 3
  br i1 %388, label %389, label %609

389:                                              ; preds = %386
  %390 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %391 = load i32, i32* %7, align 4
  %392 = add nsw i32 493, %391
  %393 = call i32 @dib8000_read_word(%struct.dib8000_state* %390, i32 %392)
  %394 = and i32 %393, 15
  store i32 %394, i32* %8, align 4
  %395 = load i32, i32* %8, align 4
  %396 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %397 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %396, i32 0, i32 4
  %398 = load %struct.TYPE_10__*, %struct.TYPE_10__** %397, align 8
  %399 = load i32, i32* %7, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %398, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  store i32 %395, i32* %402, align 4
  %403 = load i32, i32* %8, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %389
  %406 = load i32, i32* %8, align 4
  %407 = icmp sgt i32 %406, 13
  br i1 %407, label %408, label %409

408:                                              ; preds = %405, %389
  store i32 0, i32* %12, align 4
  br label %410

409:                                              ; preds = %405
  store i32 1, i32* %12, align 4
  br label %410

410:                                              ; preds = %409, %408
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %424

413:                                              ; preds = %410
  %414 = load i32, i32* %7, align 4
  %415 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %416 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %415, i32 0, i32 4
  %417 = load %struct.TYPE_10__*, %struct.TYPE_10__** %416, align 8
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %414, i32 %422)
  br label %424

424:                                              ; preds = %413, %410
  %425 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %426 = load i32, i32* %7, align 4
  %427 = add nsw i32 499, %426
  %428 = call i32 @dib8000_read_word(%struct.dib8000_state* %425, i32 %427)
  %429 = and i32 %428, 3
  store i32 %429, i32* %8, align 4
  %430 = load i32, i32* %8, align 4
  %431 = icmp eq i32 %430, 3
  br i1 %431, label %432, label %433

432:                                              ; preds = %424
  store i32 4, i32* %8, align 4
  br label %433

433:                                              ; preds = %432, %424
  %434 = load i32, i32* %8, align 4
  %435 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %436 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %435, i32 0, i32 4
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %436, align 8
  %438 = load i32, i32* %7, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %440, i32 0, i32 1
  store i32 %434, i32* %441, align 4
  %442 = load i32, i32* %12, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %455

444:                                              ; preds = %433
  %445 = load i32, i32* %7, align 4
  %446 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %447 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %446, i32 0, i32 4
  %448 = load %struct.TYPE_10__*, %struct.TYPE_10__** %447, align 8
  %449 = load i32, i32* %7, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %445, i32 %453)
  br label %455

455:                                              ; preds = %444, %433
  %456 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %457 = load i32, i32* %7, align 4
  %458 = add nsw i32 481, %457
  %459 = call i32 @dib8000_read_word(%struct.dib8000_state* %456, i32 %458)
  store i32 %459, i32* %8, align 4
  %460 = load i32, i32* %8, align 4
  %461 = and i32 %460, 7
  switch i32 %461, label %522 [
    i32 1, label %462
    i32 2, label %477
    i32 3, label %492
    i32 5, label %507
  ]

462:                                              ; preds = %455
  %463 = load i32, i32* @FEC_1_2, align 4
  %464 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %465 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %464, i32 0, i32 4
  %466 = load %struct.TYPE_10__*, %struct.TYPE_10__** %465, align 8
  %467 = load i32, i32* %7, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 3
  store i32 %463, i32* %470, align 4
  %471 = load i32, i32* %12, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %462
  %474 = load i32, i32* %7, align 4
  %475 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %474)
  br label %476

476:                                              ; preds = %473, %462
  br label %537

477:                                              ; preds = %455
  %478 = load i32, i32* @FEC_2_3, align 4
  %479 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %480 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %479, i32 0, i32 4
  %481 = load %struct.TYPE_10__*, %struct.TYPE_10__** %480, align 8
  %482 = load i32, i32* %7, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %481, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %484, i32 0, i32 3
  store i32 %478, i32* %485, align 4
  %486 = load i32, i32* %12, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %477
  %489 = load i32, i32* %7, align 4
  %490 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %489)
  br label %491

491:                                              ; preds = %488, %477
  br label %537

492:                                              ; preds = %455
  %493 = load i32, i32* @FEC_3_4, align 4
  %494 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %495 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %494, i32 0, i32 4
  %496 = load %struct.TYPE_10__*, %struct.TYPE_10__** %495, align 8
  %497 = load i32, i32* %7, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 3
  store i32 %493, i32* %500, align 4
  %501 = load i32, i32* %12, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %506

503:                                              ; preds = %492
  %504 = load i32, i32* %7, align 4
  %505 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %504)
  br label %506

506:                                              ; preds = %503, %492
  br label %537

507:                                              ; preds = %455
  %508 = load i32, i32* @FEC_5_6, align 4
  %509 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %510 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %509, i32 0, i32 4
  %511 = load %struct.TYPE_10__*, %struct.TYPE_10__** %510, align 8
  %512 = load i32, i32* %7, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %511, i64 %513
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 3
  store i32 %508, i32* %515, align 4
  %516 = load i32, i32* %12, align 4
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %521

518:                                              ; preds = %507
  %519 = load i32, i32* %7, align 4
  %520 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %519)
  br label %521

521:                                              ; preds = %518, %507
  br label %537

522:                                              ; preds = %455
  %523 = load i32, i32* @FEC_7_8, align 4
  %524 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %525 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %524, i32 0, i32 4
  %526 = load %struct.TYPE_10__*, %struct.TYPE_10__** %525, align 8
  %527 = load i32, i32* %7, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %526, i64 %528
  %530 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %529, i32 0, i32 3
  store i32 %523, i32* %530, align 4
  %531 = load i32, i32* %12, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %536

533:                                              ; preds = %522
  %534 = load i32, i32* %7, align 4
  %535 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), i32 %534)
  br label %536

536:                                              ; preds = %533, %522
  br label %537

537:                                              ; preds = %536, %521, %506, %491, %476
  %538 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %539 = load i32, i32* %7, align 4
  %540 = add nsw i32 487, %539
  %541 = call i32 @dib8000_read_word(%struct.dib8000_state* %538, i32 %540)
  store i32 %541, i32* %8, align 4
  %542 = load i32, i32* %8, align 4
  %543 = and i32 %542, 3
  switch i32 %543, label %590 [
    i32 0, label %544
    i32 1, label %559
    i32 2, label %574
    i32 3, label %589
  ]

544:                                              ; preds = %537
  %545 = load i32, i32* @DQPSK, align 4
  %546 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %547 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %546, i32 0, i32 4
  %548 = load %struct.TYPE_10__*, %struct.TYPE_10__** %547, align 8
  %549 = load i32, i32* %7, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %548, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %551, i32 0, i32 2
  store i32 %545, i32* %552, align 4
  %553 = load i32, i32* %12, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %558

555:                                              ; preds = %544
  %556 = load i32, i32* %7, align 4
  %557 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %556)
  br label %558

558:                                              ; preds = %555, %544
  br label %605

559:                                              ; preds = %537
  %560 = load i32, i32* @QPSK, align 4
  %561 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %562 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %561, i32 0, i32 4
  %563 = load %struct.TYPE_10__*, %struct.TYPE_10__** %562, align 8
  %564 = load i32, i32* %7, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %563, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 2
  store i32 %560, i32* %567, align 4
  %568 = load i32, i32* %12, align 4
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %573

570:                                              ; preds = %559
  %571 = load i32, i32* %7, align 4
  %572 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i32 %571)
  br label %573

573:                                              ; preds = %570, %559
  br label %605

574:                                              ; preds = %537
  %575 = load i32, i32* @QAM_16, align 4
  %576 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %577 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %576, i32 0, i32 4
  %578 = load %struct.TYPE_10__*, %struct.TYPE_10__** %577, align 8
  %579 = load i32, i32* %7, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i64 %580
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 2
  store i32 %575, i32* %582, align 4
  %583 = load i32, i32* %12, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %574
  %586 = load i32, i32* %7, align 4
  %587 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %586)
  br label %588

588:                                              ; preds = %585, %574
  br label %605

589:                                              ; preds = %537
  br label %590

590:                                              ; preds = %537, %589
  %591 = load i32, i32* @QAM_64, align 4
  %592 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %593 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %592, i32 0, i32 4
  %594 = load %struct.TYPE_10__*, %struct.TYPE_10__** %593, align 8
  %595 = load i32, i32* %7, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %594, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %597, i32 0, i32 2
  store i32 %591, i32* %598, align 4
  %599 = load i32, i32* %12, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %604

601:                                              ; preds = %590
  %602 = load i32, i32* %7, align 4
  %603 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %602)
  br label %604

604:                                              ; preds = %601, %590
  br label %605

605:                                              ; preds = %604, %588, %573, %558
  br label %606

606:                                              ; preds = %605
  %607 = load i32, i32* %7, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %7, align 4
  br label %386

609:                                              ; preds = %386
  store i64 1, i64* %10, align 8
  br label %610

610:                                              ; preds = %772, %609
  %611 = load i64, i64* %10, align 8
  %612 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %613 = icmp ult i64 %611, %612
  br i1 %613, label %614, label %622

614:                                              ; preds = %610
  %615 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %616 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %615, i32 0, i32 1
  %617 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %616, align 8
  %618 = load i64, i64* %10, align 8
  %619 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %617, i64 %618
  %620 = load %struct.TYPE_11__*, %struct.TYPE_11__** %619, align 8
  %621 = icmp ne %struct.TYPE_11__* %620, null
  br label %622

622:                                              ; preds = %614, %610
  %623 = phi i1 [ false, %610 ], [ %621, %614 ]
  br i1 %623, label %624, label %775

624:                                              ; preds = %622
  %625 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %626 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %629 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %628, i32 0, i32 1
  %630 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %629, align 8
  %631 = load i64, i64* %10, align 8
  %632 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %630, i64 %631
  %633 = load %struct.TYPE_11__*, %struct.TYPE_11__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %633, i32 0, i32 0
  %635 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %634, i32 0, i32 0
  store i32 %627, i32* %635, align 8
  %636 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %637 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %636, i32 0, i32 2
  %638 = load i32, i32* %637, align 8
  %639 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %640 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %639, i32 0, i32 1
  %641 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %640, align 8
  %642 = load i64, i64* %10, align 8
  %643 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %641, i64 %642
  %644 = load %struct.TYPE_11__*, %struct.TYPE_11__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %644, i32 0, i32 0
  %646 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %645, i32 0, i32 1
  store i32 %638, i32* %646, align 4
  %647 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %648 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %647, i32 0, i32 6
  %649 = load i32, i32* %648, align 4
  %650 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %651 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %650, i32 0, i32 1
  %652 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %651, align 8
  %653 = load i64, i64* %10, align 8
  %654 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %652, i64 %653
  %655 = load %struct.TYPE_11__*, %struct.TYPE_11__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %655, i32 0, i32 0
  %657 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %656, i32 0, i32 5
  store i32 %649, i32* %657, align 4
  %658 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %659 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %658, i32 0, i32 5
  %660 = load i32, i32* %659, align 8
  %661 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %662 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %661, i32 0, i32 1
  %663 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %662, align 8
  %664 = load i64, i64* %10, align 8
  %665 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %663, i64 %664
  %666 = load %struct.TYPE_11__*, %struct.TYPE_11__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %667, i32 0, i32 4
  store i32 %660, i32* %668, align 8
  %669 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %670 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %669, i32 0, i32 3
  %671 = load i32, i32* %670, align 4
  %672 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %673 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %672, i32 0, i32 1
  %674 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %673, align 8
  %675 = load i64, i64* %10, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %674, i64 %675
  %677 = load %struct.TYPE_11__*, %struct.TYPE_11__** %676, align 8
  %678 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %677, i32 0, i32 0
  %679 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %678, i32 0, i32 2
  store i32 %671, i32* %679, align 8
  store i32 0, i32* %7, align 4
  br label %680

680:                                              ; preds = %768, %624
  %681 = load i32, i32* %7, align 4
  %682 = icmp slt i32 %681, 3
  br i1 %682, label %683, label %771

683:                                              ; preds = %680
  %684 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %685 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %684, i32 0, i32 4
  %686 = load %struct.TYPE_10__*, %struct.TYPE_10__** %685, align 8
  %687 = load i32, i32* %7, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %686, i64 %688
  %690 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %693 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %692, i32 0, i32 1
  %694 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %693, align 8
  %695 = load i64, i64* %10, align 8
  %696 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %694, i64 %695
  %697 = load %struct.TYPE_11__*, %struct.TYPE_11__** %696, align 8
  %698 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %697, i32 0, i32 0
  %699 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %698, i32 0, i32 3
  %700 = load %struct.TYPE_8__*, %struct.TYPE_8__** %699, align 8
  %701 = load i32, i32* %7, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %700, i64 %702
  %704 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %703, i32 0, i32 0
  store i32 %691, i32* %704, align 4
  %705 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %706 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %705, i32 0, i32 4
  %707 = load %struct.TYPE_10__*, %struct.TYPE_10__** %706, align 8
  %708 = load i32, i32* %7, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %714 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %713, i32 0, i32 1
  %715 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %714, align 8
  %716 = load i64, i64* %10, align 8
  %717 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %715, i64 %716
  %718 = load %struct.TYPE_11__*, %struct.TYPE_11__** %717, align 8
  %719 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %718, i32 0, i32 0
  %720 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %719, i32 0, i32 3
  %721 = load %struct.TYPE_8__*, %struct.TYPE_8__** %720, align 8
  %722 = load i32, i32* %7, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %724, i32 0, i32 1
  store i32 %712, i32* %725, align 4
  %726 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %727 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %726, i32 0, i32 4
  %728 = load %struct.TYPE_10__*, %struct.TYPE_10__** %727, align 8
  %729 = load i32, i32* %7, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %728, i64 %730
  %732 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %731, i32 0, i32 3
  %733 = load i32, i32* %732, align 4
  %734 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %735 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %734, i32 0, i32 1
  %736 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %735, align 8
  %737 = load i64, i64* %10, align 8
  %738 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %736, i64 %737
  %739 = load %struct.TYPE_11__*, %struct.TYPE_11__** %738, align 8
  %740 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %739, i32 0, i32 0
  %741 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %740, i32 0, i32 3
  %742 = load %struct.TYPE_8__*, %struct.TYPE_8__** %741, align 8
  %743 = load i32, i32* %7, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %742, i64 %744
  %746 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %745, i32 0, i32 3
  store i32 %733, i32* %746, align 4
  %747 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %748 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %747, i32 0, i32 4
  %749 = load %struct.TYPE_10__*, %struct.TYPE_10__** %748, align 8
  %750 = load i32, i32* %7, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %749, i64 %751
  %753 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %752, i32 0, i32 2
  %754 = load i32, i32* %753, align 4
  %755 = load %struct.dib8000_state*, %struct.dib8000_state** %6, align 8
  %756 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %755, i32 0, i32 1
  %757 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %756, align 8
  %758 = load i64, i64* %10, align 8
  %759 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %757, i64 %758
  %760 = load %struct.TYPE_11__*, %struct.TYPE_11__** %759, align 8
  %761 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %760, i32 0, i32 0
  %762 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %761, i32 0, i32 3
  %763 = load %struct.TYPE_8__*, %struct.TYPE_8__** %762, align 8
  %764 = load i32, i32* %7, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %763, i64 %765
  %767 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %766, i32 0, i32 2
  store i32 %754, i32* %767, align 4
  br label %768

768:                                              ; preds = %683
  %769 = load i32, i32* %7, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %7, align 4
  br label %680

771:                                              ; preds = %680
  br label %772

772:                                              ; preds = %771
  %773 = load i64, i64* %10, align 8
  %774 = add i64 %773, 1
  store i64 %774, i64* %10, align 8
  br label %610

775:                                              ; preds = %622
  store i32 0, i32* %3, align 4
  br label %776

776:                                              ; preds = %775, %306, %24
  %777 = load i32, i32* %3, align 4
  ret i32 %777
}

declare dso_local i32 @dib8000_read_status(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
