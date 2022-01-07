; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_get_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { %struct.TYPE_6__, %struct.TYPE_7__**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.dibDVBTChannel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@FE_SYNC_CHANNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FE_MM_R_CHANNEL_UNION = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_AUTO = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_4K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@FEC_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_fw_get_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_fw_get_channel(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib9000_state*, align 8
  %5 = alloca %struct.dibDVBTChannel*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib9000_state*, %struct.dib9000_state** %8, align 8
  store %struct.dib9000_state* %9, %struct.dib9000_state** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %11 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i64 @mutex_lock_interruptible(i32* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINTR, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %361

20:                                               ; preds = %1
  %21 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %22 = load i32, i32* @FE_SYNC_CHANNEL, align 4
  %23 = call i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %354

28:                                               ; preds = %20
  %29 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %30 = load i32, i32* @FE_MM_R_CHANNEL_UNION, align 4
  %31 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %32 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %29, i32 %30, i64 %33, i32 40)
  %35 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %36 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.dibDVBTChannel*
  store %struct.dibDVBTChannel* %38, %struct.dibDVBTChannel** %5, align 8
  %39 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %40 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 7
  switch i32 %42, label %61 [
    i32 1, label %43
    i32 0, label %52
    i32 -1, label %62
  ]

43:                                               ; preds = %28
  %44 = load i32, i32* @INVERSION_ON, align 4
  %45 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %46 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %47, i64 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 6
  store i32 %44, i32* %51, align 8
  br label %71

52:                                               ; preds = %28
  %53 = load i32, i32* @INVERSION_OFF, align 4
  %54 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %55 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %56, i64 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 6
  store i32 %53, i32* %60, align 8
  br label %71

61:                                               ; preds = %28
  br label %62

62:                                               ; preds = %28, %61
  %63 = load i32, i32* @INVERSION_AUTO, align 4
  %64 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %65 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  store i32 %63, i32* %70, align 8
  br label %71

71:                                               ; preds = %62, %52, %43
  %72 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %73 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %102 [
    i32 0, label %75
    i32 2, label %84
    i32 1, label %93
    i32 -1, label %103
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %77 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %78 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %79, i64 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  store i32 %76, i32* %83, align 4
  br label %112

84:                                               ; preds = %71
  %85 = load i32, i32* @TRANSMISSION_MODE_4K, align 4
  %86 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %87 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  store i32 %85, i32* %92, align 4
  br label %112

93:                                               ; preds = %71
  %94 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %95 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %96 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %97, i64 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 5
  store i32 %94, i32* %101, align 4
  br label %112

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %71, %102
  %104 = load i32, i32* @TRANSMISSION_MODE_AUTO, align 4
  %105 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %106 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 5
  store i32 %104, i32* %111, align 4
  br label %112

112:                                              ; preds = %103, %93, %84, %75
  %113 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %114 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %152 [
    i32 0, label %116
    i32 1, label %125
    i32 2, label %134
    i32 3, label %143
    i32 -1, label %153
  ]

116:                                              ; preds = %112
  %117 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %118 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %119 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %120, i64 0
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  store i32 %117, i32* %124, align 8
  br label %162

125:                                              ; preds = %112
  %126 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %127 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %128 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %129, i64 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 4
  store i32 %126, i32* %133, align 8
  br label %162

134:                                              ; preds = %112
  %135 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %136 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %137 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %136, i32 0, i32 1
  %138 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %138, i64 0
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  store i32 %135, i32* %142, align 8
  br label %162

143:                                              ; preds = %112
  %144 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %145 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %146 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %145, i32 0, i32 1
  %147 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %147, i64 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 4
  store i32 %144, i32* %151, align 8
  br label %162

152:                                              ; preds = %112
  br label %153

153:                                              ; preds = %112, %152
  %154 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %155 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %156 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %157, i64 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 4
  store i32 %154, i32* %161, align 8
  br label %162

162:                                              ; preds = %153, %143, %134, %125, %116
  %163 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %164 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %193 [
    i32 2, label %166
    i32 1, label %175
    i32 0, label %184
    i32 -1, label %194
  ]

166:                                              ; preds = %162
  %167 = load i32, i32* @QAM_64, align 4
  %168 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %169 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %170, i64 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 3
  store i32 %167, i32* %174, align 4
  br label %203

175:                                              ; preds = %162
  %176 = load i32, i32* @QAM_16, align 4
  %177 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %178 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %179, i64 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store i32 %176, i32* %183, align 4
  br label %203

184:                                              ; preds = %162
  %185 = load i32, i32* @QPSK, align 4
  %186 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %187 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %186, i32 0, i32 1
  %188 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %188, i64 0
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  store i32 %185, i32* %192, align 4
  br label %203

193:                                              ; preds = %162
  br label %194

194:                                              ; preds = %162, %193
  %195 = load i32, i32* @QAM_AUTO, align 4
  %196 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %197 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %196, i32 0, i32 1
  %198 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %198, i64 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 3
  store i32 %195, i32* %202, align 4
  br label %203

203:                                              ; preds = %194, %184, %175, %166
  %204 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %205 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %225 [
    i32 0, label %207
    i32 1, label %216
    i32 -1, label %226
  ]

207:                                              ; preds = %203
  %208 = load i32, i32* @HIERARCHY_NONE, align 4
  %209 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %210 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %209, i32 0, i32 1
  %211 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %211, i64 0
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  store i32 %208, i32* %215, align 8
  br label %235

216:                                              ; preds = %203
  %217 = load i32, i32* @HIERARCHY_1, align 4
  %218 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %219 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %218, i32 0, i32 1
  %220 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %220, i64 0
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  store i32 %217, i32* %224, align 8
  br label %235

225:                                              ; preds = %203
  br label %226

226:                                              ; preds = %203, %225
  %227 = load i32, i32* @HIERARCHY_AUTO, align 4
  %228 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %229 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %230, i64 0
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  store i32 %227, i32* %234, align 8
  br label %235

235:                                              ; preds = %226, %216, %207
  %236 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %237 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %284 [
    i32 1, label %239
    i32 2, label %248
    i32 3, label %257
    i32 5, label %266
    i32 7, label %275
    i32 -1, label %285
  ]

239:                                              ; preds = %235
  %240 = load i8*, i8** @FEC_1_2, align 8
  %241 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %242 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %241, i32 0, i32 1
  %243 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %243, i64 0
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  store i8* %240, i8** %247, align 8
  br label %294

248:                                              ; preds = %235
  %249 = load i8*, i8** @FEC_2_3, align 8
  %250 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %251 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %250, i32 0, i32 1
  %252 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %252, i64 0
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  store i8* %249, i8** %256, align 8
  br label %294

257:                                              ; preds = %235
  %258 = load i8*, i8** @FEC_3_4, align 8
  %259 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %260 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %259, i32 0, i32 1
  %261 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %261, i64 0
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 1
  store i8* %258, i8** %265, align 8
  br label %294

266:                                              ; preds = %235
  %267 = load i8*, i8** @FEC_5_6, align 8
  %268 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %269 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %268, i32 0, i32 1
  %270 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %270, i64 0
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  store i8* %267, i8** %274, align 8
  br label %294

275:                                              ; preds = %235
  %276 = load i8*, i8** @FEC_7_8, align 8
  %277 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %278 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %277, i32 0, i32 1
  %279 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %279, i64 0
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 1
  store i8* %276, i8** %283, align 8
  br label %294

284:                                              ; preds = %235
  br label %285

285:                                              ; preds = %235, %284
  %286 = load i8*, i8** @FEC_AUTO, align 8
  %287 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %288 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %287, i32 0, i32 1
  %289 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %289, i64 0
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store i8* %286, i8** %293, align 8
  br label %294

294:                                              ; preds = %285, %275, %266, %257, %248, %239
  %295 = load %struct.dibDVBTChannel*, %struct.dibDVBTChannel** %5, align 8
  %296 = getelementptr inbounds %struct.dibDVBTChannel, %struct.dibDVBTChannel* %295, i32 0, i32 7
  %297 = load i32, i32* %296, align 4
  switch i32 %297, label %343 [
    i32 1, label %298
    i32 2, label %307
    i32 3, label %316
    i32 5, label %325
    i32 7, label %334
    i32 -1, label %344
  ]

298:                                              ; preds = %294
  %299 = load i8*, i8** @FEC_1_2, align 8
  %300 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %301 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %300, i32 0, i32 1
  %302 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %302, i64 0
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  store i8* %299, i8** %306, align 8
  br label %353

307:                                              ; preds = %294
  %308 = load i8*, i8** @FEC_2_3, align 8
  %309 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %310 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %309, i32 0, i32 1
  %311 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %311, i64 0
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 0
  store i8* %308, i8** %315, align 8
  br label %353

316:                                              ; preds = %294
  %317 = load i8*, i8** @FEC_3_4, align 8
  %318 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %319 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %318, i32 0, i32 1
  %320 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %320, i64 0
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  store i8* %317, i8** %324, align 8
  br label %353

325:                                              ; preds = %294
  %326 = load i8*, i8** @FEC_5_6, align 8
  %327 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %328 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %327, i32 0, i32 1
  %329 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %329, i64 0
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  store i8* %326, i8** %333, align 8
  br label %353

334:                                              ; preds = %294
  %335 = load i8*, i8** @FEC_7_8, align 8
  %336 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %337 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %336, i32 0, i32 1
  %338 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %338, i64 0
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i8* %335, i8** %342, align 8
  br label %353

343:                                              ; preds = %294
  br label %344

344:                                              ; preds = %294, %343
  %345 = load i8*, i8** @FEC_AUTO, align 8
  %346 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %347 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %346, i32 0, i32 1
  %348 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %348, i64 0
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 0
  store i8* %345, i8** %352, align 8
  br label %353

353:                                              ; preds = %344, %334, %325, %316, %307, %298
  br label %354

354:                                              ; preds = %353, %25
  %355 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %356 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  %359 = call i32 @mutex_unlock(i32* %358)
  %360 = load i32, i32* %6, align 4
  store i32 %360, i32* %2, align 4
  br label %361

361:                                              ; preds = %354, %16
  %362 = load i32, i32* %2, align 4
  ret i32 %362
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state*, i32) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
