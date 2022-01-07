; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs_algo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, i32, %struct.stb0899_config*, %struct.stb0899_internal, %struct.stb0899_params }
%struct.stb0899_config = type { i32 (i32*, i32*)*, i32 (i32*, i64*)*, i32 (i32*, i64)* }
%struct.stb0899_internal = type { i32, i64, i64, i64, i32, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.stb0899_params = type { i32, i64 }

@__const.stb0899_dvbs_algo.betaTab = private unnamed_addr constant [5 x [4 x i64]] [[4 x i64] [i64 37, i64 34, i64 32, i64 31], [4 x i64] [i64 37, i64 35, i64 33, i64 31], [4 x i64] [i64 37, i64 35, i64 33, i64 31], [4 x i64] [i64 37, i64 36, i64 33, i64 32], [4 x i64] [i64 37, i64 36, i64 33, i64 32]], align 16
@STB0899_ACLC = common dso_local global i32 0, align 4
@STB0899_BCLC = common dso_local global i32 0, align 4
@BETA = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Set the timing loop to acquisition\00", align 1
@STB0899_RTC = common dso_local global i32 0, align 4
@STB0899_CFD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Derot Percent=%d Srate=%d mclk=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"RESET stream merger\00", align 1
@STB0899_TSTRES = common dso_local global i32 0, align 4
@FRESRS = common dso_local global i32 0, align 4
@STB0899_DEMAPVIT = common dso_local global i32 0, align 4
@DEMAPVIT_KDIVIDER = common dso_local global i32 0, align 4
@STB0899_EQON = common dso_local global i32 0, align 4
@STB0899_VITSYNC = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@STB0899_RTF = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@NOAGC1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Tuner set frequency\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"current derot freq=%d\00", align 1
@AGC1OK = common dso_local global i64 0, align 8
@TIMINGOK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"TIMING OK ! Derot freq=%d, mclk=%d\00", align 1
@CARRIEROK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"CARRIER OK ! Derot freq=%d, mclk=%d\00", align 1
@DATAOK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [33 x i8] c"DATA OK ! Derot freq=%d, mclk=%d\00", align 1
@RANGEOK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"RANGE OK ! derot freq=%d, mclk=%d\00", align 1
@STB0899_PLPARM = common dso_local global i32 0, align 4
@VITCURPUN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"freq=%d, internal resultant freq=%d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"internal puncture rate=%d\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Locked & Range OK !\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"Unsupported Puncture Rate\00", align 1
@STB0899_EQUAI1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb0899_dvbs_algo(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_params*, align 8
  %4 = alloca %struct.stb0899_internal*, align 8
  %5 = alloca %struct.stb0899_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [5 x [4 x i64]], align 16
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 4
  store %struct.stb0899_params* %14, %struct.stb0899_params** %3, align 8
  %15 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %16 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %15, i32 0, i32 3
  store %struct.stb0899_internal* %16, %struct.stb0899_internal** %4, align 8
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %17, i32 0, i32 2
  %19 = load %struct.stb0899_config*, %struct.stb0899_config** %18, align 8
  store %struct.stb0899_config* %19, %struct.stb0899_config** %5, align 8
  store i64 3, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = bitcast [5 x [4 x i64]]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([5 x [4 x i64]]* @__const.stb0899_dvbs_algo.betaTab to i8*), i64 160, i1 false)
  %21 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %22 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %24 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %25 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %24, i32 0, i32 13
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %28 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @stb0899_set_srate(%struct.stb0899_state* %23, i32 %26, i32 %29)
  %31 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %32 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 5000000
  br i1 %34, label %35, label %49

35:                                               ; preds = %1
  %36 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %37 = load i32, i32* @STB0899_ACLC, align 4
  %38 = call i32 @stb0899_write_reg(%struct.stb0899_state* %36, i32 %37, i32 137)
  %39 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %40 = load i32, i32* @STB0899_BCLC, align 4
  %41 = call i32 @stb0899_read_reg(%struct.stb0899_state* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @BETA, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @STB0899_SETFIELD_VAL(i32 %42, i32 %43, i64 28)
  %45 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %46 = load i32, i32* @STB0899_BCLC, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @stb0899_write_reg(%struct.stb0899_state* %45, i32 %46, i32 %47)
  store i64 0, i64* %10, align 8
  br label %103

49:                                               ; preds = %1
  %50 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %51 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 15000000
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %56 = load i32, i32* @STB0899_ACLC, align 4
  %57 = call i32 @stb0899_write_reg(%struct.stb0899_state* %55, i32 %56, i32 201)
  %58 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %59 = load i32, i32* @STB0899_BCLC, align 4
  %60 = call i32 @stb0899_read_reg(%struct.stb0899_state* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @BETA, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @STB0899_SETFIELD_VAL(i32 %61, i32 %62, i64 34)
  %64 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %65 = load i32, i32* @STB0899_BCLC, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @stb0899_write_reg(%struct.stb0899_state* %64, i32 %65, i32 %66)
  store i64 1, i64* %10, align 8
  br label %102

68:                                               ; preds = %49
  %69 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %70 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sle i32 %71, 25000000
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %75 = load i32, i32* @STB0899_ACLC, align 4
  %76 = call i32 @stb0899_write_reg(%struct.stb0899_state* %74, i32 %75, i32 137)
  %77 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %78 = load i32, i32* @STB0899_BCLC, align 4
  %79 = call i32 @stb0899_read_reg(%struct.stb0899_state* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @BETA, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @STB0899_SETFIELD_VAL(i32 %80, i32 %81, i64 39)
  %83 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %84 = load i32, i32* @STB0899_BCLC, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @stb0899_write_reg(%struct.stb0899_state* %83, i32 %84, i32 %85)
  store i64 2, i64* %10, align 8
  br label %101

87:                                               ; preds = %68
  %88 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %89 = load i32, i32* @STB0899_ACLC, align 4
  %90 = call i32 @stb0899_write_reg(%struct.stb0899_state* %88, i32 %89, i32 200)
  %91 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %92 = load i32, i32* @STB0899_BCLC, align 4
  %93 = call i32 @stb0899_read_reg(%struct.stb0899_state* %91, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @BETA, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @STB0899_SETFIELD_VAL(i32 %94, i32 %95, i64 41)
  %97 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %98 = load i32, i32* @STB0899_BCLC, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @stb0899_write_reg(%struct.stb0899_state* %97, i32 %98, i32 %99)
  store i64 3, i64* %10, align 8
  br label %101

101:                                              ; preds = %87, %73
  br label %102

102:                                              ; preds = %101, %54
  br label %103

103:                                              ; preds = %102, %35
  %104 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %105 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @FE_DEBUG, align 4
  %108 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %106, i32 %107, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %109 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %110 = load i32, i32* @STB0899_RTC, align 4
  %111 = call i32 @stb0899_write_reg(%struct.stb0899_state* %109, i32 %110, i32 70)
  %112 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %113 = load i32, i32* @STB0899_CFD, align 4
  %114 = call i32 @stb0899_write_reg(%struct.stb0899_state* %112, i32 %113, i32 238)
  %115 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %116 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @FE_DEBUG, align 4
  %119 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %120 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %123 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %126 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %117, i32 %118, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %121, i32 %124, i64 %127)
  %129 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %130 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %133 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = sdiv i64 %135, 1000
  %137 = mul nsw i64 %131, %136
  %138 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %139 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = sdiv i64 %137, %140
  %142 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %143 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %145 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i64 @stb0899_calc_derot_time(i64 %147)
  %149 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %150 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %149, i32 0, i32 9
  store i64 %148, i64* %150, align 8
  %151 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %152 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %151, i32 0, i32 4
  store i32 500, i32* %152, align 8
  %153 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %154 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @FE_DEBUG, align 4
  %157 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %155, i32 %156, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %158 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %159 = load i32, i32* @STB0899_TSTRES, align 4
  %160 = call i32 @stb0899_read_reg(%struct.stb0899_state* %158, i32 %159)
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* @FRESRS, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @STB0899_SETFIELD_VAL(i32 %161, i32 %162, i64 1)
  %164 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %165 = load i32, i32* @STB0899_TSTRES, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @stb0899_write_reg(%struct.stb0899_state* %164, i32 %165, i32 %166)
  %168 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %169 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %170 = call i32 @stb0899_read_reg(%struct.stb0899_state* %168, i32 %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* @DEMAPVIT_KDIVIDER, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @STB0899_SETFIELD_VAL(i32 %171, i32 %172, i64 60)
  %174 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %175 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %176 = load i32, i32* %7, align 4
  %177 = call i32 @stb0899_write_reg(%struct.stb0899_state* %174, i32 %175, i32 %176)
  %178 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %179 = load i32, i32* @STB0899_EQON, align 4
  %180 = call i32 @stb0899_write_reg(%struct.stb0899_state* %178, i32 %179, i32 1)
  %181 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %182 = load i32, i32* @STB0899_VITSYNC, align 4
  %183 = call i32 @stb0899_write_reg(%struct.stb0899_state* %181, i32 %182, i32 25)
  %184 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %185 = call i32 @stb0899_first_subrange(%struct.stb0899_state* %184)
  br label %186

186:                                              ; preds = %438, %103
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %187, align 4
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %188, align 4
  %189 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %190 = load i32, i32* @STB0899_CFRM, align 4
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %192 = call i32 @stb0899_write_regs(%struct.stb0899_state* %189, i32 %190, i32* %191, i32 2)
  %193 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %194 = load i32, i32* @STB0899_RTF, align 4
  %195 = call i32 @stb0899_write_reg(%struct.stb0899_state* %193, i32 %194, i32 0)
  %196 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %197 = load i32, i32* @STB0899_CFD, align 4
  %198 = call i32 @stb0899_read_reg(%struct.stb0899_state* %196, i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* @CFD_ON, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @STB0899_SETFIELD_VAL(i32 %199, i32 %200, i64 1)
  %202 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %203 = load i32, i32* @STB0899_CFD, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @stb0899_write_reg(%struct.stb0899_state* %202, i32 %203, i32 %204)
  %206 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %207 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %206, i32 0, i32 6
  store i32 0, i32* %207, align 8
  %208 = load i64, i64* @NOAGC1, align 8
  %209 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %210 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %209, i32 0, i32 5
  store i64 %208, i64* %210, align 8
  %211 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %212 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %211, i32 0, i32 1
  %213 = call i32 @stb0899_i2c_gate_ctrl(i32* %212, i32 1)
  %214 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %215 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @FE_DEBUG, align 4
  %218 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %216, i32 %217, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %219 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %220 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %219, i32 0, i32 2
  %221 = load %struct.stb0899_config*, %struct.stb0899_config** %220, align 8
  %222 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %221, i32 0, i32 2
  %223 = load i32 (i32*, i64)*, i32 (i32*, i64)** %222, align 8
  %224 = icmp ne i32 (i32*, i64)* %223, null
  br i1 %224, label %225, label %237

225:                                              ; preds = %186
  %226 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %227 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %226, i32 0, i32 2
  %228 = load %struct.stb0899_config*, %struct.stb0899_config** %227, align 8
  %229 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %228, i32 0, i32 2
  %230 = load i32 (i32*, i64)*, i32 (i32*, i64)** %229, align 8
  %231 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %232 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %231, i32 0, i32 1
  %233 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %234 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %233, i32 0, i32 8
  %235 = load i64, i64* %234, align 8
  %236 = call i32 %230(i32* %232, i64 %235)
  br label %237

237:                                              ; preds = %225, %186
  %238 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %239 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %238, i32 0, i32 2
  %240 = load %struct.stb0899_config*, %struct.stb0899_config** %239, align 8
  %241 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %240, i32 0, i32 1
  %242 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %241, align 8
  %243 = icmp ne i32 (i32*, i64*)* %242, null
  br i1 %243, label %244, label %255

244:                                              ; preds = %237
  %245 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %246 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %245, i32 0, i32 2
  %247 = load %struct.stb0899_config*, %struct.stb0899_config** %246, align 8
  %248 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %247, i32 0, i32 1
  %249 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %248, align 8
  %250 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %251 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %250, i32 0, i32 1
  %252 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %253 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %252, i32 0, i32 8
  %254 = call i32 %249(i32* %251, i64* %253)
  br label %255

255:                                              ; preds = %244, %237
  %256 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %257 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %256, i32 0, i32 11
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %260 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %259, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %258, %261
  %263 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %264 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %263, i32 0, i32 9
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = call i32 @msleep(i64 %266)
  %268 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %269 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @FE_DEBUG, align 4
  %272 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %273 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %270, i32 %271, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %274)
  %276 = load i64, i64* @AGC1OK, align 8
  %277 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %278 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %277, i32 0, i32 5
  store i64 %276, i64* %278, align 8
  %279 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %280 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %279, i32 0, i32 0
  %281 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %280, align 8
  %282 = icmp ne i32 (i32*, i32*)* %281, null
  br i1 %282, label %283, label %290

283:                                              ; preds = %255
  %284 = load %struct.stb0899_config*, %struct.stb0899_config** %5, align 8
  %285 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %284, i32 0, i32 0
  %286 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %285, align 8
  %287 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %288 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %287, i32 0, i32 1
  %289 = call i32 %286(i32* %288, i32* %11)
  br label %290

290:                                              ; preds = %283, %255
  %291 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %292 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %291, i32 0, i32 1
  %293 = call i32 @stb0899_i2c_gate_ctrl(i32* %292, i32 0)
  %294 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %295 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %11, align 4
  %298 = sdiv i32 %297, 2
  %299 = icmp sle i32 %296, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %290
  %301 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %302 = call i32 @stb0899_search_tmg(%struct.stb0899_state* %301)
  br label %306

303:                                              ; preds = %290
  %304 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %305 = call i32 @stb0899_check_tmg(%struct.stb0899_state* %304)
  br label %306

306:                                              ; preds = %303, %300
  %307 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %308 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @TIMINGOK, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %417

312:                                              ; preds = %306
  %313 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %314 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @FE_DEBUG, align 4
  %317 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %318 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %321 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %320, i32 0, i32 2
  %322 = load i64, i64* %321, align 8
  %323 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %315, i32 %316, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %319, i64 %322)
  %324 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %325 = call i64 @stb0899_search_carrier(%struct.stb0899_state* %324)
  %326 = load i64, i64* @CARRIEROK, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %416

328:                                              ; preds = %312
  %329 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %330 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* @FE_DEBUG, align 4
  %333 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %334 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %337 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %336, i32 0, i32 2
  %338 = load i64, i64* %337, align 8
  %339 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %331, i32 %332, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %335, i64 %338)
  %340 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %341 = call i64 @stb0899_search_data(%struct.stb0899_state* %340)
  %342 = load i64, i64* @DATAOK, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %415

344:                                              ; preds = %328
  %345 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %346 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @FE_DEBUG, align 4
  %349 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %350 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %353 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %347, i32 %348, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %351, i64 %354)
  %356 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %357 = call i64 @stb0899_check_range(%struct.stb0899_state* %356)
  %358 = load i64, i64* @RANGEOK, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %414

360:                                              ; preds = %344
  %361 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %362 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @FE_DEBUG, align 4
  %365 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %366 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %369 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %368, i32 0, i32 2
  %370 = load i64, i64* %369, align 8
  %371 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %363, i32 %364, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %367, i64 %370)
  %372 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %373 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %376 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %375, i32 0, i32 6
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %380 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = mul nsw i64 %378, %381
  %383 = sdiv i64 %382, 1000
  %384 = sub nsw i64 %374, %383
  %385 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %386 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %385, i32 0, i32 8
  store i64 %384, i64* %386, align 8
  %387 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %388 = load i32, i32* @STB0899_PLPARM, align 4
  %389 = call i32 @stb0899_read_reg(%struct.stb0899_state* %387, i32 %388)
  store i32 %389, i32* %7, align 4
  %390 = load i32, i32* @VITCURPUN, align 4
  %391 = load i32, i32* %7, align 4
  %392 = call i32 @STB0899_GETFIELD(i32 %390, i32 %391)
  %393 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %394 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %393, i32 0, i32 7
  store i32 %392, i32* %394, align 4
  %395 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %396 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @FE_DEBUG, align 4
  %399 = load %struct.stb0899_params*, %struct.stb0899_params** %3, align 8
  %400 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %403 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %402, i32 0, i32 8
  %404 = load i64, i64* %403, align 8
  %405 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %397, i32 %398, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %401, i64 %404)
  %406 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %407 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @FE_DEBUG, align 4
  %410 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %411 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %408, i32 %409, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %412)
  br label %414

414:                                              ; preds = %360, %344
  br label %415

415:                                              ; preds = %414, %328
  br label %416

416:                                              ; preds = %415, %312
  br label %417

417:                                              ; preds = %416, %306
  %418 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %419 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %418, i32 0, i32 5
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @RANGEOK, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %417
  %424 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %425 = call i32 @next_sub_range(%struct.stb0899_state* %424)
  br label %426

426:                                              ; preds = %423, %417
  br label %427

427:                                              ; preds = %426
  %428 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %429 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %428, i32 0, i32 12
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %438

432:                                              ; preds = %427
  %433 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %434 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %433, i32 0, i32 5
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @RANGEOK, align 8
  %437 = icmp ne i64 %435, %436
  br label %438

438:                                              ; preds = %432, %427
  %439 = phi i1 [ false, %427 ], [ %437, %432 ]
  br i1 %439, label %186, label %440

440:                                              ; preds = %438
  %441 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %442 = load i32, i32* @STB0899_RTC, align 4
  %443 = call i32 @stb0899_write_reg(%struct.stb0899_state* %441, i32 %442, i32 51)
  %444 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %445 = load i32, i32* @STB0899_CFD, align 4
  %446 = call i32 @stb0899_write_reg(%struct.stb0899_state* %444, i32 %445, i32 247)
  %447 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %448 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %447, i32 0, i32 5
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @RANGEOK, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %586

452:                                              ; preds = %440
  %453 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %454 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = load i32, i32* @FE_DEBUG, align 4
  %457 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %455, i32 %456, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %458 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %459 = load i32, i32* @STB0899_EQON, align 4
  %460 = call i32 @stb0899_write_reg(%struct.stb0899_state* %458, i32 %459, i32 65)
  %461 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %462 = load i32, i32* @STB0899_VITSYNC, align 4
  %463 = call i32 @stb0899_write_reg(%struct.stb0899_state* %461, i32 %462, i32 57)
  %464 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %465 = load i32, i32* @STB0899_BCLC, align 4
  %466 = call i32 @stb0899_read_reg(%struct.stb0899_state* %464, i32 %465)
  store i32 %466, i32* %7, align 4
  %467 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %468 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %467, i32 0, i32 7
  %469 = load i32, i32* %468, align 4
  switch i32 %469, label %555 [
    i32 133, label %470
    i32 132, label %485
    i32 131, label %500
    i32 130, label %515
    i32 129, label %530
    i32 128, label %540
  ]

470:                                              ; preds = %452
  %471 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %472 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %473 = call i32 @stb0899_write_reg(%struct.stb0899_state* %471, i32 %472, i32 26)
  %474 = load i32, i32* @BETA, align 4
  %475 = load i32, i32* %7, align 4
  %476 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* %12, i64 0, i64 0
  %477 = load i64, i64* %10, align 8
  %478 = getelementptr inbounds [4 x i64], [4 x i64]* %476, i64 0, i64 %477
  %479 = load i64, i64* %478, align 8
  %480 = call i32 @STB0899_SETFIELD_VAL(i32 %474, i32 %475, i64 %479)
  %481 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %482 = load i32, i32* @STB0899_BCLC, align 4
  %483 = load i32, i32* %7, align 4
  %484 = call i32 @stb0899_write_reg(%struct.stb0899_state* %481, i32 %482, i32 %483)
  br label %561

485:                                              ; preds = %452
  %486 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %487 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %488 = call i32 @stb0899_write_reg(%struct.stb0899_state* %486, i32 %487, i32 44)
  %489 = load i32, i32* @BETA, align 4
  %490 = load i32, i32* %7, align 4
  %491 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* %12, i64 0, i64 1
  %492 = load i64, i64* %10, align 8
  %493 = getelementptr inbounds [4 x i64], [4 x i64]* %491, i64 0, i64 %492
  %494 = load i64, i64* %493, align 8
  %495 = call i32 @STB0899_SETFIELD_VAL(i32 %489, i32 %490, i64 %494)
  %496 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %497 = load i32, i32* @STB0899_BCLC, align 4
  %498 = load i32, i32* %7, align 4
  %499 = call i32 @stb0899_write_reg(%struct.stb0899_state* %496, i32 %497, i32 %498)
  br label %561

500:                                              ; preds = %452
  %501 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %502 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %503 = call i32 @stb0899_write_reg(%struct.stb0899_state* %501, i32 %502, i32 60)
  %504 = load i32, i32* @BETA, align 4
  %505 = load i32, i32* %7, align 4
  %506 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* %12, i64 0, i64 2
  %507 = load i64, i64* %10, align 8
  %508 = getelementptr inbounds [4 x i64], [4 x i64]* %506, i64 0, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = call i32 @STB0899_SETFIELD_VAL(i32 %504, i32 %505, i64 %509)
  %511 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %512 = load i32, i32* @STB0899_BCLC, align 4
  %513 = load i32, i32* %7, align 4
  %514 = call i32 @stb0899_write_reg(%struct.stb0899_state* %511, i32 %512, i32 %513)
  br label %561

515:                                              ; preds = %452
  %516 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %517 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %518 = call i32 @stb0899_write_reg(%struct.stb0899_state* %516, i32 %517, i32 75)
  %519 = load i32, i32* @BETA, align 4
  %520 = load i32, i32* %7, align 4
  %521 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* %12, i64 0, i64 3
  %522 = load i64, i64* %10, align 8
  %523 = getelementptr inbounds [4 x i64], [4 x i64]* %521, i64 0, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = call i32 @STB0899_SETFIELD_VAL(i32 %519, i32 %520, i64 %524)
  %526 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %527 = load i32, i32* @STB0899_BCLC, align 4
  %528 = load i32, i32* %7, align 4
  %529 = call i32 @stb0899_write_reg(%struct.stb0899_state* %526, i32 %527, i32 %528)
  br label %561

530:                                              ; preds = %452
  %531 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %532 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %533 = call i32 @stb0899_write_reg(%struct.stb0899_state* %531, i32 %532, i32 88)
  %534 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %535 = load i32, i32* @STB0899_ACLC, align 4
  %536 = call i32 @stb0899_write_reg(%struct.stb0899_state* %534, i32 %535, i32 136)
  %537 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %538 = load i32, i32* @STB0899_BCLC, align 4
  %539 = call i32 @stb0899_write_reg(%struct.stb0899_state* %537, i32 %538, i32 154)
  br label %561

540:                                              ; preds = %452
  %541 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %542 = load i32, i32* @STB0899_DEMAPVIT, align 4
  %543 = call i32 @stb0899_write_reg(%struct.stb0899_state* %541, i32 %542, i32 94)
  %544 = load i32, i32* @BETA, align 4
  %545 = load i32, i32* %7, align 4
  %546 = getelementptr inbounds [5 x [4 x i64]], [5 x [4 x i64]]* %12, i64 0, i64 4
  %547 = load i64, i64* %10, align 8
  %548 = getelementptr inbounds [4 x i64], [4 x i64]* %546, i64 0, i64 %547
  %549 = load i64, i64* %548, align 8
  %550 = call i32 @STB0899_SETFIELD_VAL(i32 %544, i32 %545, i64 %549)
  %551 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %552 = load i32, i32* @STB0899_BCLC, align 4
  %553 = load i32, i32* %7, align 4
  %554 = call i32 @stb0899_write_reg(%struct.stb0899_state* %551, i32 %552, i32 %553)
  br label %561

555:                                              ; preds = %452
  %556 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %557 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @FE_DEBUG, align 4
  %560 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %558, i32 %559, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %561

561:                                              ; preds = %555, %540, %530, %515, %500, %485, %470
  %562 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %563 = load i32, i32* @STB0899_TSTRES, align 4
  %564 = call i32 @stb0899_read_reg(%struct.stb0899_state* %562, i32 %563)
  store i32 %564, i32* %7, align 4
  %565 = load i32, i32* @FRESRS, align 4
  %566 = load i32, i32* %7, align 4
  %567 = call i32 @STB0899_SETFIELD_VAL(i32 %565, i32 %566, i64 0)
  %568 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %569 = load i32, i32* @STB0899_TSTRES, align 4
  %570 = load i32, i32* %7, align 4
  %571 = call i32 @stb0899_write_reg(%struct.stb0899_state* %568, i32 %569, i32 %570)
  %572 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %573 = load i32, i32* @STB0899_CFD, align 4
  %574 = call i32 @stb0899_read_reg(%struct.stb0899_state* %572, i32 %573)
  store i32 %574, i32* %7, align 4
  %575 = load i32, i32* @CFD_ON, align 4
  %576 = load i32, i32* %7, align 4
  %577 = call i32 @STB0899_SETFIELD_VAL(i32 %575, i32 %576, i64 0)
  %578 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %579 = load i32, i32* @STB0899_CFD, align 4
  %580 = load i32, i32* %7, align 4
  %581 = call i32 @stb0899_write_reg(%struct.stb0899_state* %578, i32 %579, i32 %580)
  %582 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %583 = load i32, i32* @STB0899_EQUAI1, align 4
  %584 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %585 = call i32 @stb0899_read_regs(%struct.stb0899_state* %582, i32 %583, i32* %584, i32 10)
  br label %586

586:                                              ; preds = %561, %440
  %587 = load %struct.stb0899_internal*, %struct.stb0899_internal** %4, align 8
  %588 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %587, i32 0, i32 5
  %589 = load i64, i64* %588, align 8
  %590 = trunc i64 %589 to i32
  ret i32 %590
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @stb0899_set_srate(%struct.stb0899_state*, i32, i32) #2

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #2

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #2

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i64) #2

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #2

declare dso_local i64 @stb0899_calc_derot_time(i64) #2

declare dso_local i32 @stb0899_first_subrange(%struct.stb0899_state*) #2

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #2

declare dso_local i32 @stb0899_i2c_gate_ctrl(i32*, i32) #2

declare dso_local i32 @msleep(i64) #2

declare dso_local i32 @stb0899_search_tmg(%struct.stb0899_state*) #2

declare dso_local i32 @stb0899_check_tmg(%struct.stb0899_state*) #2

declare dso_local i64 @stb0899_search_carrier(%struct.stb0899_state*) #2

declare dso_local i64 @stb0899_search_data(%struct.stb0899_state*) #2

declare dso_local i64 @stb0899_check_range(%struct.stb0899_state*) #2

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #2

declare dso_local i32 @next_sub_range(%struct.stb0899_state*) #2

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
