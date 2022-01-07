; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_autosearch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_autosearch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i64, i64, %struct.TYPE_8__, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i64, i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i64, i8*, i8* }

@AS_SEARCHING_FFT = common dso_local global i64 0, align 8
@AS_SEARCHING_GUARD = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_8K = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_8 = common dso_local global i8* null, align 8
@QAM_64 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Using list for autosearch : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_autosearch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_autosearch_start(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %3, align 8
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %12 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %11, i32 0, i32 4
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 32912
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %29 = call i32 @dib8000_read32(%struct.dib8000_state* %28, i32 23)
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %33 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %34, 32770
  br i1 %35, label %36, label %141

36:                                               ; preds = %31
  %37 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %38 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AS_SEARCHING_FFT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %141

42:                                               ; preds = %36
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %44 = call i32 @dib8000_write_word(%struct.dib8000_state* %43, i32 37, i32 101)
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %46 = call i32 @dib8000_write_word(%struct.dib8000_state* %45, i32 116, i32 0)
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %48 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %49 = call i32 @dib8000_read_word(%struct.dib8000_state* %48, i32 0)
  %50 = and i32 %49, 8191
  %51 = or i32 %50, 32768
  %52 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 0, i32 %51)
  %53 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %55 = call i32 @dib8000_read_word(%struct.dib8000_state* %54, i32 1)
  %56 = and i32 %55, 65532
  %57 = call i32 @dib8000_write_word(%struct.dib8000_state* %53, i32 1, i32 %56)
  %58 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %59 = call i32 @dib8000_write_word(%struct.dib8000_state* %58, i32 6, i32 0)
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %61 = call i32 @dib8000_write_word(%struct.dib8000_state* %60, i32 7, i32 0)
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %63 = call i32 @dib8000_write_word(%struct.dib8000_state* %62, i32 8, i32 0)
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %65 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %66 = call i32 @dib8000_read_word(%struct.dib8000_state* %65, i32 10)
  %67 = and i32 %66, 512
  %68 = or i32 %67, 256
  %69 = call i32 @dib8000_write_word(%struct.dib8000_state* %64, i32 10, i32 %68)
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 32912
  br i1 %73, label %74, label %78

74:                                               ; preds = %42
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %75, i32 %76, i32 10, i32 10, i32 10)
  store i32 %77, i32* %6, align 4
  br label %82

78:                                               ; preds = %42
  %79 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %79, i32 %80, i32 20, i32 20, i32 20)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %84 = call i32 @dib8000_write_word(%struct.dib8000_state* %83, i32 17, i32 0)
  %85 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %86 = call i32 @dib8000_write_word(%struct.dib8000_state* %85, i32 18, i32 200)
  %87 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %88 = call i32 @dib8000_write_word(%struct.dib8000_state* %87, i32 19, i32 0)
  %89 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %90 = call i32 @dib8000_write_word(%struct.dib8000_state* %89, i32 20, i32 400)
  %91 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %92 = load i32, i32* %6, align 4
  %93 = ashr i32 %92, 16
  %94 = and i32 %93, 65535
  %95 = call i32 @dib8000_write_word(%struct.dib8000_state* %91, i32 21, i32 %94)
  %96 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, 65535
  %99 = call i32 @dib8000_write_word(%struct.dib8000_state* %96, i32 22, i32 %98)
  %100 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %101 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 32912
  br i1 %103, label %104, label %110

104:                                              ; preds = %82
  %105 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %106 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %107 = call i32 @dib8000_read_word(%struct.dib8000_state* %106, i32 32)
  %108 = and i32 %107, 61695
  %109 = call i32 @dib8000_write_word(%struct.dib8000_state* %105, i32 32, i32 %108)
  br label %117

110:                                              ; preds = %82
  %111 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %112 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %113 = call i32 @dib8000_read_word(%struct.dib8000_state* %112, i32 32)
  %114 = and i32 %113, 61695
  %115 = or i32 %114, 2304
  %116 = call i32 @dib8000_write_word(%struct.dib8000_state* %111, i32 32, i32 %115)
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %119 = call i32 @dib8000_write_word(%struct.dib8000_state* %118, i32 355, i32 2)
  %120 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %121 = call i32 @dib8000_write_word(%struct.dib8000_state* %120, i32 356, i32 0)
  %122 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %123 = call i32 @dib8000_write_word(%struct.dib8000_state* %122, i32 357, i32 273)
  %124 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %125 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %126 = call i32 @dib8000_read_word(%struct.dib8000_state* %125, i32 770)
  %127 = and i32 %126, 57343
  %128 = or i32 %127, 8192
  %129 = call i32 @dib8000_write_word(%struct.dib8000_state* %124, i32 770, i32 %128)
  %130 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %131 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %132 = call i32 @dib8000_read_word(%struct.dib8000_state* %131, i32 770)
  %133 = and i32 %132, 57343
  %134 = call i32 @dib8000_write_word(%struct.dib8000_state* %130, i32 770, i32 %133)
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %136 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %137 = call i32 @dib8000_read_word(%struct.dib8000_state* %136, i32 0)
  %138 = and i32 %137, 2047
  %139 = or i32 %138, 8192
  %140 = call i32 @dib8000_write_word(%struct.dib8000_state* %135, i32 0, i32 %139)
  br label %384

141:                                              ; preds = %36, %31
  %142 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %143 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %144, 32770
  br i1 %145, label %146, label %238

146:                                              ; preds = %141
  %147 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %148 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AS_SEARCHING_GUARD, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %238

152:                                              ; preds = %146
  %153 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 4
  store i64 0, i64* %162, align 8
  %163 = load i8*, i8** @QAM_64, align 8
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 3
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 3
  store i8* %163, i8** %168, align 8
  %169 = load i8*, i8** @FEC_2_3, align 8
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 3
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  store i8* %169, i8** %174, align 8
  %175 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %175, i32 0, i32 3
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %181 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %180, i32 0, i32 3
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i64 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 13, i32* %184, align 8
  store i32 16, i32* %5, align 4
  %185 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %186 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %189 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %191 = load i32, i32* %5, align 4
  %192 = call i32 @dib8000_set_isdbt_common_channel(%struct.dib8000_state* %190, i32 %191, i32 1)
  %193 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %194 = call i32 @dib8000_write_word(%struct.dib8000_state* %193, i32 6, i32 4)
  %195 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %196 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 32912
  br i1 %198, label %199, label %202

199:                                              ; preds = %152
  %200 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %201 = call i32 @dib8000_write_word(%struct.dib8000_state* %200, i32 7, i32 7168)
  br label %205

202:                                              ; preds = %152
  %203 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %204 = call i32 @dib8000_write_word(%struct.dib8000_state* %203, i32 7, i32 8)
  br label %205

205:                                              ; preds = %202, %199
  %206 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %207 = call i32 @dib8000_write_word(%struct.dib8000_state* %206, i32 8, i32 4096)
  %208 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %209 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 32912
  br i1 %211, label %212, label %216

212:                                              ; preds = %205
  %213 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %213, i32 %214, i32 50, i32 100, i32 1000)
  br label %220

216:                                              ; preds = %205
  %217 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %217, i32 %218, i32 50, i32 200, i32 1000)
  br label %220

220:                                              ; preds = %216, %212
  %221 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %222 = call i32 @dib8000_write_word(%struct.dib8000_state* %221, i32 355, i32 3)
  %223 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %224 = call i32 @dib8000_write_word(%struct.dib8000_state* %223, i32 356, i32 0)
  %225 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %226 = call i32 @dib8000_write_word(%struct.dib8000_state* %225, i32 357, i32 15)
  %227 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %228 = call i32 @dib8000_read_word(%struct.dib8000_state* %227, i32 0)
  store i32 %228, i32* %6, align 4
  %229 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %230 = load i32, i32* %6, align 4
  %231 = or i32 32768, %230
  %232 = call i32 @dib8000_write_word(%struct.dib8000_state* %229, i32 0, i32 %231)
  %233 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %234 = call i32 @dib8000_read_word(%struct.dib8000_state* %233, i32 1284)
  %235 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @dib8000_write_word(%struct.dib8000_state* %235, i32 0, i32 %236)
  br label %383

238:                                              ; preds = %146, %141
  %239 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %240 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %239, i32 0, i32 4
  store i64 0, i64* %240, align 8
  %241 = load i8*, i8** @QAM_64, align 8
  %242 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %243 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %242, i32 0, i32 3
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  store i8* %241, i8** %246, align 8
  %247 = load i8*, i8** @FEC_2_3, align 8
  %248 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %249 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %248, i32 0, i32 3
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i64 0
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 2
  store i8* %247, i8** %252, align 8
  %253 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %254 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %253, i32 0, i32 3
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  store i64 0, i64* %257, align 8
  %258 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %259 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %258, i32 0, i32 3
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32 13, i32* %262, align 8
  %263 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %264 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %238
  %268 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %269 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %268, i32 0, i32 3
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  store i32 13, i32* %272, align 8
  br label %273

273:                                              ; preds = %267, %238
  %274 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %275 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  store i32 7, i32* %5, align 4
  %279 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %280 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %281 = call i32 @dib8000_read_word(%struct.dib8000_state* %280, i32 0)
  %282 = and i32 %281, 40959
  %283 = or i32 %282, 8192
  %284 = call i32 @dib8000_write_word(%struct.dib8000_state* %279, i32 0, i32 %283)
  br label %338

285:                                              ; preds = %273
  %286 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %287 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %318

291:                                              ; preds = %285
  %292 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %293 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %312

297:                                              ; preds = %291
  %298 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %299 = ptrtoint i8* %298 to i64
  %300 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %301 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %300, i32 0, i32 0
  store i64 %299, i64* %301, align 8
  %302 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %303 = ptrtoint i8* %302 to i64
  %304 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %305 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %304, i32 0, i32 1
  store i64 %303, i64* %305, align 8
  store i32 7, i32* %5, align 4
  %306 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %307 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %308 = call i32 @dib8000_read_word(%struct.dib8000_state* %307, i32 0)
  %309 = and i32 %308, 40959
  %310 = or i32 %309, 8192
  %311 = call i32 @dib8000_write_word(%struct.dib8000_state* %306, i32 0, i32 %310)
  br label %317

312:                                              ; preds = %291
  %313 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %314 = ptrtoint i8* %313 to i64
  %315 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %316 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %315, i32 0, i32 1
  store i64 %314, i64* %316, align 8
  store i32 3, i32* %5, align 4
  br label %317

317:                                              ; preds = %312, %297
  br label %337

318:                                              ; preds = %285
  %319 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %320 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %335

324:                                              ; preds = %318
  %325 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %326 = ptrtoint i8* %325 to i64
  %327 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %328 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %327, i32 0, i32 0
  store i64 %326, i64* %328, align 8
  store i32 2, i32* %5, align 4
  %329 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %330 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %331 = call i32 @dib8000_read_word(%struct.dib8000_state* %330, i32 0)
  %332 = and i32 %331, 40959
  %333 = or i32 %332, 8192
  %334 = call i32 @dib8000_write_word(%struct.dib8000_state* %329, i32 0, i32 %333)
  br label %336

335:                                              ; preds = %318
  store i32 0, i32* %5, align 4
  br label %336

336:                                              ; preds = %335, %324
  br label %337

337:                                              ; preds = %336, %317
  br label %338

338:                                              ; preds = %337, %278
  %339 = load i32, i32* %5, align 4
  %340 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %339)
  %341 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %342 = load i32, i32* %5, align 4
  %343 = call i32 @dib8000_set_isdbt_common_channel(%struct.dib8000_state* %341, i32 %342, i32 1)
  %344 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %345 = call i32 @dib8000_write_word(%struct.dib8000_state* %344, i32 6, i32 4)
  %346 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %347 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp eq i32 %348, 32912
  br i1 %349, label %350, label %353

350:                                              ; preds = %338
  %351 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %352 = call i32 @dib8000_write_word(%struct.dib8000_state* %351, i32 7, i32 7168)
  br label %356

353:                                              ; preds = %338
  %354 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %355 = call i32 @dib8000_write_word(%struct.dib8000_state* %354, i32 7, i32 8)
  br label %356

356:                                              ; preds = %353, %350
  %357 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %358 = call i32 @dib8000_write_word(%struct.dib8000_state* %357, i32 8, i32 4096)
  %359 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %360 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = icmp eq i32 %361, 32912
  br i1 %362, label %363, label %367

363:                                              ; preds = %356
  %364 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %365 = load i32, i32* %7, align 4
  %366 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %364, i32 %365, i32 50, i32 200, i32 1000)
  br label %371

367:                                              ; preds = %356
  %368 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %369 = load i32, i32* %7, align 4
  %370 = call i32 @dib8000_wait_lock(%struct.dib8000_state* %368, i32 %369, i32 50, i32 100, i32 1000)
  br label %371

371:                                              ; preds = %367, %363
  %372 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %373 = call i32 @dib8000_read_word(%struct.dib8000_state* %372, i32 0)
  store i32 %373, i32* %6, align 4
  %374 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %375 = load i32, i32* %6, align 4
  %376 = or i32 32768, %375
  %377 = call i32 @dib8000_write_word(%struct.dib8000_state* %374, i32 0, i32 %376)
  %378 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %379 = call i32 @dib8000_read_word(%struct.dib8000_state* %378, i32 1284)
  %380 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %381 = load i32, i32* %6, align 4
  %382 = call i32 @dib8000_write_word(%struct.dib8000_state* %380, i32 0, i32 %381)
  br label %383

383:                                              ; preds = %371, %220
  br label %384

384:                                              ; preds = %383, %117
  ret i32 0
}

declare dso_local i32 @dib8000_read32(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_wait_lock(%struct.dib8000_state*, i32, i32, i32, i32) #1

declare dso_local i32 @dib8000_set_isdbt_common_channel(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
