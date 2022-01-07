; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stb0899_state* }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.stb0899_state = type { i32, i32, i32, %struct.stb0899_config*, %struct.stb0899_internal, %struct.stb0899_params }
%struct.stb0899_config = type { i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.1*, i32)*, i32, i32, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.stb0899_internal = type { i32, i32, i32, i32, i32, i32 }
%struct.stb0899_params = type { i32, i32 }

@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"delivery system=%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Frequency=%d, Srate=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Parameters IN RANGE\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"DVB-S delivery system\00", align 1
@STB0899_AGCRFCFG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"running DVB-S search algo ..\00", align 1
@RANGEOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"-------------------------------------> DVB-S LOCK !\00", align 1
@DVBFE_ALGO_SEARCH_SUCCESS = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"running DVB-S2 search algo ..\00", align 1
@DVBS2_FEC_LOCK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"-------------------------------------> DVB-S2 LOCK !\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Unsupported delivery system\00", align 1
@DVBFE_ALGO_SEARCH_INVALID = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stb0899_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca %struct.stb0899_params*, align 8
  %6 = alloca %struct.stb0899_internal*, align 8
  %7 = alloca %struct.stb0899_config*, align 8
  %8 = alloca %struct.dtv_frontend_properties*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %12, align 8
  store %struct.stb0899_state* %13, %struct.stb0899_state** %4, align 8
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %15 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %14, i32 0, i32 5
  store %struct.stb0899_params* %15, %struct.stb0899_params** %5, align 8
  %16 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %17 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %16, i32 0, i32 4
  store %struct.stb0899_internal* %17, %struct.stb0899_internal** %6, align 8
  %18 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %19 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %18, i32 0, i32 3
  %20 = load %struct.stb0899_config*, %struct.stb0899_config** %19, align 8
  store %struct.stb0899_config* %20, %struct.stb0899_config** %7, align 8
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 0
  store %struct.dtv_frontend_properties* %22, %struct.dtv_frontend_properties** %8, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %27 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %32 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %8, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %37 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %39 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FE_DEBUG, align 4
  %42 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %43 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %40, i32 %41, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 10000000, i32* %9, align 4
  %46 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %47 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FE_DEBUG, align 4
  %50 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %51 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %54 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %48, i32 %49, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %58 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @INRANGE(i32 %59, i32 1000000, i32 45000000)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %311

62:                                               ; preds = %1
  %63 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %64 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FE_DEBUG, align 4
  %67 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %65, i32 %66, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %69 = call i32 @stb0899_set_delivery(%struct.stb0899_state* %68)
  %70 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %71 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %70, i32 0, i32 3
  %72 = load %struct.stb0899_config*, %struct.stb0899_config** %71, align 8
  %73 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %72, i32 0, i32 4
  %74 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %73, align 8
  %75 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %74, null
  br i1 %75, label %76, label %100

76:                                               ; preds = %62
  %77 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %78 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 15000000
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 8, i32* %10, align 4
  br label %90

82:                                               ; preds = %76
  %83 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %84 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 5000000
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 12, i32* %10, align 4
  br label %89

88:                                               ; preds = %82
  store i32 14, i32* %10, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %81
  %91 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %92 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %91, i32 0, i32 3
  %93 = load %struct.stb0899_config*, %struct.stb0899_config** %92, align 8
  %94 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %93, i32 0, i32 4
  %95 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %94, align 8
  %96 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %97 = bitcast %struct.dvb_frontend* %96 to %struct.dvb_frontend.2*
  %98 = load i32, i32* %10, align 4
  %99 = call i32 %95(%struct.dvb_frontend.2* %97, i32 %98)
  br label %100

100:                                              ; preds = %90, %62
  %101 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %102 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 5000000
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %107 = load %struct.stb0899_config*, %struct.stb0899_config** %7, align 8
  %108 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @stb0899_set_mclk(%struct.stb0899_state* %106, i32 %109)
  br label %117

111:                                              ; preds = %100
  %112 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %113 = load %struct.stb0899_config*, %struct.stb0899_config** %7, align 8
  %114 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @stb0899_set_mclk(%struct.stb0899_state* %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %105
  %118 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %119 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %304 [
    i32 129, label %121
    i32 130, label %121
    i32 128, label %219
  ]

121:                                              ; preds = %117, %117
  %122 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %123 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @FE_DEBUG, align 4
  %126 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %124, i32 %125, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %127 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %128 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %131 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %133 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %136 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1500000
  %139 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %140 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sdiv i32 %141, 5
  %143 = add nsw i32 %138, %142
  %144 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %145 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %147 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %146, i32 0, i32 2
  store i32 30, i32* %147, align 4
  %148 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %149 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %148, i32 0, i32 2
  %150 = call i32 @stb0899_i2c_gate_ctrl(i32* %149, i32 1)
  %151 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %152 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %151, i32 0, i32 3
  %153 = load %struct.stb0899_config*, %struct.stb0899_config** %152, align 8
  %154 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %153, i32 0, i32 1
  %155 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %154, align 8
  %156 = icmp ne i32 (%struct.dvb_frontend.1*, i32)* %155, null
  br i1 %156, label %157, label %172

157:                                              ; preds = %121
  %158 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %159 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %158, i32 0, i32 3
  %160 = load %struct.stb0899_config*, %struct.stb0899_config** %159, align 8
  %161 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %160, i32 0, i32 1
  %162 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %161, align 8
  %163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %164 = bitcast %struct.dvb_frontend* %163 to %struct.dvb_frontend.1*
  %165 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %166 = call i32 @stb0899_carr_width(%struct.stb0899_state* %165)
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %166, %167
  %169 = mul nsw i32 13, %168
  %170 = sdiv i32 %169, 10
  %171 = call i32 %162(%struct.dvb_frontend.1* %164, i32 %170)
  br label %172

172:                                              ; preds = %157, %121
  %173 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %174 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %173, i32 0, i32 3
  %175 = load %struct.stb0899_config*, %struct.stb0899_config** %174, align 8
  %176 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %175, i32 0, i32 0
  %177 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %176, align 8
  %178 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %177, null
  br i1 %178, label %179, label %190

179:                                              ; preds = %172
  %180 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %181 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %180, i32 0, i32 3
  %182 = load %struct.stb0899_config*, %struct.stb0899_config** %181, align 8
  %183 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %182, i32 0, i32 0
  %184 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %183, align 8
  %185 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %186 = bitcast %struct.dvb_frontend* %185 to %struct.dvb_frontend.0*
  %187 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %188 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %187, i32 0, i32 4
  %189 = call i32 %184(%struct.dvb_frontend.0* %186, i32* %188)
  br label %190

190:                                              ; preds = %179, %172
  %191 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %192 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %191, i32 0, i32 2
  %193 = call i32 @stb0899_i2c_gate_ctrl(i32* %192, i32 0)
  %194 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %195 = load i32, i32* @STB0899_AGCRFCFG, align 4
  %196 = call i32 @stb0899_write_reg(%struct.stb0899_state* %194, i32 %195, i32 17)
  %197 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %198 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @FE_DEBUG, align 4
  %201 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %199, i32 %200, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %203 = call i32 @stb0899_dvbs_algo(%struct.stb0899_state* %202)
  %204 = load i32, i32* @RANGEOK, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %190
  %207 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %208 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %207, i32 0, i32 3
  store i32 1, i32* %208, align 4
  %209 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %210 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @FE_DEBUG, align 4
  %213 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %211, i32 %212, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %214 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %214, i32* %2, align 4
  br label %313

215:                                              ; preds = %190
  %216 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %217 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %216, i32 0, i32 3
  store i32 0, i32* %217, align 4
  %218 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %218, i32* %2, align 4
  br label %313

219:                                              ; preds = %117
  %220 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %221 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %224 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %223, i32 0, i32 5
  store i32 %222, i32* %224, align 4
  %225 = load %struct.stb0899_params*, %struct.stb0899_params** %5, align 8
  %226 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %229 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %232 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 4
  %233 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %234 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %233, i32 0, i32 2
  %235 = call i32 @stb0899_i2c_gate_ctrl(i32* %234, i32 1)
  %236 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %237 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %236, i32 0, i32 3
  %238 = load %struct.stb0899_config*, %struct.stb0899_config** %237, align 8
  %239 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %238, i32 0, i32 1
  %240 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %239, align 8
  %241 = icmp ne i32 (%struct.dvb_frontend.1*, i32)* %240, null
  br i1 %241, label %242, label %255

242:                                              ; preds = %219
  %243 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %244 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %243, i32 0, i32 3
  %245 = load %struct.stb0899_config*, %struct.stb0899_config** %244, align 8
  %246 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %245, i32 0, i32 1
  %247 = load i32 (%struct.dvb_frontend.1*, i32)*, i32 (%struct.dvb_frontend.1*, i32)** %246, align 8
  %248 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %249 = bitcast %struct.dvb_frontend* %248 to %struct.dvb_frontend.1*
  %250 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %251 = call i32 @stb0899_carr_width(%struct.stb0899_state* %250)
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %251, %252
  %254 = call i32 %247(%struct.dvb_frontend.1* %249, i32 %253)
  br label %255

255:                                              ; preds = %242, %219
  %256 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %257 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %256, i32 0, i32 3
  %258 = load %struct.stb0899_config*, %struct.stb0899_config** %257, align 8
  %259 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %258, i32 0, i32 0
  %260 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %259, align 8
  %261 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %260, null
  br i1 %261, label %262, label %273

262:                                              ; preds = %255
  %263 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %264 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %263, i32 0, i32 3
  %265 = load %struct.stb0899_config*, %struct.stb0899_config** %264, align 8
  %266 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %265, i32 0, i32 0
  %267 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %266, align 8
  %268 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %269 = bitcast %struct.dvb_frontend* %268 to %struct.dvb_frontend.0*
  %270 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %271 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %270, i32 0, i32 4
  %272 = call i32 %267(%struct.dvb_frontend.0* %269, i32* %271)
  br label %273

273:                                              ; preds = %262, %255
  %274 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %275 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %274, i32 0, i32 2
  %276 = call i32 @stb0899_i2c_gate_ctrl(i32* %275, i32 0)
  %277 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %278 = load i32, i32* @STB0899_AGCRFCFG, align 4
  %279 = call i32 @stb0899_write_reg(%struct.stb0899_state* %277, i32 %278, i32 28)
  %280 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %281 = call i32 @stb0899_set_iterations(%struct.stb0899_state* %280)
  %282 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %283 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @FE_DEBUG, align 4
  %286 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %284, i32 %285, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %287 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %288 = call i32 @stb0899_dvbs2_algo(%struct.stb0899_state* %287)
  %289 = load i32, i32* @DVBS2_FEC_LOCK, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %300

291:                                              ; preds = %273
  %292 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %293 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %292, i32 0, i32 3
  store i32 1, i32* %293, align 4
  %294 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %295 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @FE_DEBUG, align 4
  %298 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %296, i32 %297, i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %299 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %299, i32* %2, align 4
  br label %313

300:                                              ; preds = %273
  %301 = load %struct.stb0899_internal*, %struct.stb0899_internal** %6, align 8
  %302 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %301, i32 0, i32 3
  store i32 0, i32* %302, align 4
  %303 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %303, i32* %2, align 4
  br label %313

304:                                              ; preds = %117
  %305 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %306 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @FE_ERROR, align 4
  %309 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %307, i32 %308, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %310 = load i32, i32* @DVBFE_ALGO_SEARCH_INVALID, align 4
  store i32 %310, i32* %2, align 4
  br label %313

311:                                              ; preds = %1
  %312 = load i32, i32* @DVBFE_ALGO_SEARCH_ERROR, align 4
  store i32 %312, i32* %2, align 4
  br label %313

313:                                              ; preds = %311, %304, %300, %291, %215, %206
  %314 = load i32, i32* %2, align 4
  ret i32 %314
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @INRANGE(i32, i32, i32) #1

declare dso_local i32 @stb0899_set_delivery(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_set_mclk(%struct.stb0899_state*, i32) #1

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #1

declare dso_local i32 @stb0899_carr_width(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_dvbs_algo(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_set_iterations(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_dvbs2_algo(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
