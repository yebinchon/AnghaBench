; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state*, %struct.dtv_frontend_properties }
%struct.cx24120_state = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"DVB-S2\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DVB-S\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"delivery system(%d) not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"delsys      = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"modulation  = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"frequency   = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"pilot       = %d (val = 0x%02x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"symbol_rate = %d (clkdiv/ratediv = 0x%02x/0x%02x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"FEC         = %d (mask/val = 0x%02x/0x%02x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Inversion   = %d (val = 0x%02x)\0A\00", align 1
@CMD_TUNEREQUEST = common dso_local global i32 0, align 4
@CX24120_SEARCH_RANGE_KHZ = common dso_local global i32 0, align 4
@CX24120_REG_CLKDIV = common dso_local global i32 0, align 4
@CX24120_REG_RATEDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24120_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.cx24120_state*, align 8
  %6 = alloca %struct.cx24120_cmd, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  store %struct.dtv_frontend_properties* %9, %struct.dtv_frontend_properties** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cx24120_state*, %struct.cx24120_state** %11, align 8
  store %struct.cx24120_state* %12, %struct.cx24120_state** %5, align 8
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %14 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %28 [
    i32 128, label %16
    i32 129, label %22
  ]

16:                                               ; preds = %1
  %17 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %18 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %39

22:                                               ; preds = %1
  %23 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %24 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %30 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %34 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %334

39:                                               ; preds = %22, %16
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %44 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %50 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %56 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %62 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cx24120_set_inversion(%struct.cx24120_state* %64, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %39
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %334

73:                                               ; preds = %39
  %74 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %79 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cx24120_set_fec(%struct.cx24120_state* %74, i32 %77, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %334

86:                                               ; preds = %73
  %87 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %88 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %89 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cx24120_set_pilot(%struct.cx24120_state* %87, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %334

96:                                               ; preds = %86
  %97 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @cx24120_set_symbolrate(%struct.cx24120_state* %97, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %334

106:                                              ; preds = %96
  %107 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %108 = call i32 @cx24120_clone_params(%struct.dvb_frontend* %107)
  %109 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %110 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %114 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %119 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %123 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %128 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %132 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  %136 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %137 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %141 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %145 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %143, i32 %147)
  %149 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %150 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %149, i32 0, i32 2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %154 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %158 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %162 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %156, i32 %160, i32 %164)
  %166 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %167 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %171 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %175 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %179 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %169, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %173, i32 %177, i32 %181)
  %183 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %184 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %183, i32 0, i32 2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %188 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %192 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 9
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %190, i32 %194)
  %196 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %197 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load i32, i32* @CMD_TUNEREQUEST, align 4
  %199 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 2
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 0
  store i32 15, i32* %200, align 8
  %201 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 0, i32* %203, align 4
  %204 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %205 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 16711680
  %209 = ashr i32 %208, 16
  %210 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %209, i32* %212, align 4
  %213 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %214 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, 65280
  %218 = ashr i32 %217, 8
  %219 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32 %218, i32* %221, align 4
  %222 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %223 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 3
  store i32 %226, i32* %229, align 4
  %230 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %231 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = sdiv i32 %233, 1000
  %235 = and i32 %234, 65280
  %236 = ashr i32 %235, 8
  %237 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  store i32 %236, i32* %239, align 4
  %240 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %241 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = sdiv i32 %243, 1000
  %245 = and i32 %244, 255
  %246 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 5
  store i32 %245, i32* %248, align 4
  %249 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %250 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 6
  store i32 %252, i32* %255, align 4
  %256 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %257 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %261 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %259, %263
  %265 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 7
  store i32 %264, i32* %267, align 4
  %268 = load i32, i32* @CX24120_SEARCH_RANGE_KHZ, align 4
  %269 = ashr i32 %268, 8
  %270 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 8
  store i32 %269, i32* %272, align 4
  %273 = load i32, i32* @CX24120_SEARCH_RANGE_KHZ, align 4
  %274 = and i32 %273, 255
  %275 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 9
  store i32 %274, i32* %277, align 4
  %278 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 10
  store i32 0, i32* %280, align 4
  %281 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %282 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 11
  store i32 %284, i32* %287, align 4
  %288 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %289 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 12
  store i32 %291, i32* %294, align 4
  %295 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %296 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 13
  store i32 %298, i32* %301, align 4
  %302 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %6, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 14
  store i32 0, i32* %304, align 4
  %305 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %306 = call i32 @cx24120_message_send(%struct.cx24120_state* %305, %struct.cx24120_cmd* %6)
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* %7, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %106
  %310 = load i32, i32* %7, align 4
  store i32 %310, i32* %2, align 4
  br label %334

311:                                              ; preds = %106
  %312 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %313 = load i32, i32* @CX24120_REG_CLKDIV, align 4
  %314 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %315 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @cx24120_writereg(%struct.cx24120_state* %312, i32 %313, i32 %317)
  store i32 %318, i32* %7, align 4
  %319 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %320 = load i32, i32* @CX24120_REG_RATEDIV, align 4
  %321 = call i32 @cx24120_readreg(%struct.cx24120_state* %319, i32 %320)
  store i32 %321, i32* %7, align 4
  %322 = load i32, i32* %7, align 4
  %323 = and i32 %322, -16
  store i32 %323, i32* %7, align 4
  %324 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %325 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 5
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %7, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %7, align 4
  %330 = load %struct.cx24120_state*, %struct.cx24120_state** %5, align 8
  %331 = load i32, i32* @CX24120_REG_RATEDIV, align 4
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @cx24120_writereg(%struct.cx24120_state* %330, i32 %331, i32 %332)
  store i32 %333, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %334

334:                                              ; preds = %311, %309, %104, %94, %84, %71, %28
  %335 = load i32, i32* %2, align 4
  ret i32 %335
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @cx24120_set_inversion(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_set_fec(%struct.cx24120_state*, i32, i32) #1

declare dso_local i32 @cx24120_set_pilot(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_set_symbolrate(%struct.cx24120_state*, i32) #1

declare dso_local i32 @cx24120_clone_params(%struct.dvb_frontend*) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @cx24120_writereg(%struct.cx24120_state*, i32, i32) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
