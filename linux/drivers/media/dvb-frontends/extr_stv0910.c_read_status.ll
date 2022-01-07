; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stv* }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.stv = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i64, i32 }

@RCVMODE_NONE = common dso_local global i32 0, align 4
@RSTV0910_P2_DMDSTATE = common dso_local global i64 0, align 8
@RSTV0910_P2_DSTATUS = common dso_local global i64 0, align 8
@RCVMODE_DVBS = common dso_local global i64 0, align 8
@RCVMODE_DVBS2 = common dso_local global i64 0, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RSTV0910_P2_TSCFGH = common dso_local global i64 0, align 8
@RSTV0910_P2_PDELSTATUS1 = common dso_local global i64 0, align 8
@RSTV0910_P2_VSTATUSVIT = common dso_local global i64 0, align 8
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@RSTV0910_P2_DEMOD = common dso_local global i64 0, align 8
@RSTV0910_P2_PDELCTRL2 = common dso_local global i64 0, align 8
@RSTV0910_P2_ERRCTRL1 = common dso_local global i64 0, align 8
@BER_SRC_S2 = common dso_local global i32 0, align 4
@BER_SRC_S = common dso_local global i32 0, align 4
@RSTV0910_P2_FBERCPT4 = common dso_local global i64 0, align 8
@RSTV0910_P2_ERRCTRL2 = common dso_local global i64 0, align 8
@RSTV0910_P2_DMDMODCOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.stv*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.stv*, %struct.stv** %18, align 8
  store %struct.stv* %19, %struct.stv** %6, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  store %struct.dtv_frontend_properties* %21, %struct.dtv_frontend_properties** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load i32, i32* @RCVMODE_NONE, align 4
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.stv*, %struct.stv** %6, align 8
  %25 = load i64, i64* @RSTV0910_P2_DMDSTATE, align 8
  %26 = load %struct.stv*, %struct.stv** %6, align 8
  %27 = getelementptr inbounds %struct.stv, %struct.stv* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = call i32 @read_reg(%struct.stv* %24, i64 %29, i32* %8)
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 64
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %2
  %35 = load %struct.stv*, %struct.stv** %6, align 8
  %36 = load i64, i64* @RSTV0910_P2_DSTATUS, align 8
  %37 = load %struct.stv*, %struct.stv** %6, align 8
  %38 = getelementptr inbounds %struct.stv, %struct.stv* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = call i32 @read_reg(%struct.stv* %35, i64 %40, i32* %9)
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @RCVMODE_DVBS, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @RCVMODE_DVBS2, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %34
  br label %57

57:                                               ; preds = %56, %2
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @RCVMODE_NONE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %57
  %62 = load %struct.stv*, %struct.stv** %6, align 8
  %63 = call i32 @set_vth(%struct.stv* %62)
  %64 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  store i8* %64, i8** %70, align 8
  %71 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i8* %71, i8** %77, align 8
  %78 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i8* %78, i8** %84, align 8
  %85 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i8* %85, i8** %91, align 8
  store i32 0, i32* %3, align 4
  br label %392

92:                                               ; preds = %57
  %93 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %94 = load i32, i32* @FE_HAS_CARRIER, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @FE_HAS_VITERBI, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @FE_HAS_SYNC, align 4
  %99 = or i32 %97, %98
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load %struct.stv*, %struct.stv** %6, align 8
  %104 = getelementptr inbounds %struct.stv, %struct.stv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RCVMODE_NONE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %153

108:                                              ; preds = %92
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.stv*, %struct.stv** %6, align 8
  %111 = getelementptr inbounds %struct.stv, %struct.stv* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @jiffies, align 4
  %113 = load %struct.stv*, %struct.stv** %6, align 8
  %114 = getelementptr inbounds %struct.stv, %struct.stv* %113, i32 0, i32 11
  store i32 %112, i32* %114, align 8
  %115 = load %struct.stv*, %struct.stv** %6, align 8
  %116 = getelementptr inbounds %struct.stv, %struct.stv* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.stv*, %struct.stv** %6, align 8
  %118 = call i32 @get_signal_parameters(%struct.stv* %117)
  %119 = load %struct.stv*, %struct.stv** %6, align 8
  %120 = call i32 @tracking_optimization(%struct.stv* %119)
  %121 = load %struct.stv*, %struct.stv** %6, align 8
  %122 = load i64, i64* @RSTV0910_P2_TSCFGH, align 8
  %123 = load %struct.stv*, %struct.stv** %6, align 8
  %124 = getelementptr inbounds %struct.stv, %struct.stv* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load %struct.stv*, %struct.stv** %6, align 8
  %128 = getelementptr inbounds %struct.stv, %struct.stv* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @write_reg(%struct.stv* %121, i64 %126, i32 %129)
  %131 = call i32 @usleep_range(i32 3000, i32 4000)
  %132 = load %struct.stv*, %struct.stv** %6, align 8
  %133 = load i64, i64* @RSTV0910_P2_TSCFGH, align 8
  %134 = load %struct.stv*, %struct.stv** %6, align 8
  %135 = getelementptr inbounds %struct.stv, %struct.stv* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = load %struct.stv*, %struct.stv** %6, align 8
  %139 = getelementptr inbounds %struct.stv, %struct.stv* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, 1
  %142 = call i32 @write_reg(%struct.stv* %132, i64 %137, i32 %141)
  %143 = load %struct.stv*, %struct.stv** %6, align 8
  %144 = load i64, i64* @RSTV0910_P2_TSCFGH, align 8
  %145 = load %struct.stv*, %struct.stv** %6, align 8
  %146 = getelementptr inbounds %struct.stv, %struct.stv* %145, i32 0, i32 7
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = load %struct.stv*, %struct.stv** %6, align 8
  %150 = getelementptr inbounds %struct.stv, %struct.stv* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @write_reg(%struct.stv* %143, i64 %148, i32 %151)
  br label %153

153:                                              ; preds = %108, %92
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, 64
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %189

157:                                              ; preds = %153
  %158 = load %struct.stv*, %struct.stv** %6, align 8
  %159 = getelementptr inbounds %struct.stv, %struct.stv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @RCVMODE_DVBS2, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %157
  %165 = load %struct.stv*, %struct.stv** %6, align 8
  %166 = load i64, i64* @RSTV0910_P2_PDELSTATUS1, align 8
  %167 = load %struct.stv*, %struct.stv** %6, align 8
  %168 = getelementptr inbounds %struct.stv, %struct.stv* %167, i32 0, i32 7
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %166, %169
  %171 = call i32 @read_reg(%struct.stv* %165, i64 %170, i32* %12)
  %172 = load i32, i32* %12, align 4
  %173 = and i32 %172, 2
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  store i32 %175, i32* %11, align 4
  br label %188

176:                                              ; preds = %157
  %177 = load %struct.stv*, %struct.stv** %6, align 8
  %178 = load i64, i64* @RSTV0910_P2_VSTATUSVIT, align 8
  %179 = load %struct.stv*, %struct.stv** %6, align 8
  %180 = getelementptr inbounds %struct.stv, %struct.stv* %179, i32 0, i32 7
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = call i32 @read_reg(%struct.stv* %177, i64 %182, i32* %13)
  %184 = load i32, i32* %13, align 4
  %185 = and i32 %184, 8
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  store i32 %187, i32* %11, align 4
  br label %188

188:                                              ; preds = %176, %164
  br label %189

189:                                              ; preds = %188, %153
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %348

192:                                              ; preds = %189
  %193 = load i32, i32* @FE_HAS_LOCK, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4
  %197 = load %struct.stv*, %struct.stv** %6, align 8
  %198 = getelementptr inbounds %struct.stv, %struct.stv* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %321

201:                                              ; preds = %192
  %202 = load %struct.stv*, %struct.stv** %6, align 8
  %203 = getelementptr inbounds %struct.stv, %struct.stv* %202, i32 0, i32 1
  store i32 0, i32* %203, align 4
  %204 = load %struct.stv*, %struct.stv** %6, align 8
  %205 = call i32 @manage_matype_info(%struct.stv* %204)
  %206 = load %struct.stv*, %struct.stv** %6, align 8
  %207 = getelementptr inbounds %struct.stv, %struct.stv* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @RCVMODE_DVBS2, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %272

212:                                              ; preds = %201
  %213 = load %struct.stv*, %struct.stv** %6, align 8
  %214 = getelementptr inbounds %struct.stv, %struct.stv* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, -133
  store i32 %216, i32* %214, align 4
  %217 = load %struct.stv*, %struct.stv** %6, align 8
  %218 = load i64, i64* @RSTV0910_P2_DEMOD, align 8
  %219 = load %struct.stv*, %struct.stv** %6, align 8
  %220 = getelementptr inbounds %struct.stv, %struct.stv* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = add nsw i64 %218, %221
  %223 = load %struct.stv*, %struct.stv** %6, align 8
  %224 = getelementptr inbounds %struct.stv, %struct.stv* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @write_reg(%struct.stv* %217, i64 %222, i32 %225)
  %227 = load %struct.stv*, %struct.stv** %6, align 8
  %228 = load i64, i64* @RSTV0910_P2_PDELCTRL2, align 8
  %229 = load %struct.stv*, %struct.stv** %6, align 8
  %230 = getelementptr inbounds %struct.stv, %struct.stv* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %228, %231
  %233 = call i32 @read_reg(%struct.stv* %227, i64 %232, i32* %14)
  %234 = load i32, i32* %14, align 4
  %235 = or i32 %234, 64
  store i32 %235, i32* %14, align 4
  %236 = load %struct.stv*, %struct.stv** %6, align 8
  %237 = load i64, i64* @RSTV0910_P2_PDELCTRL2, align 8
  %238 = load %struct.stv*, %struct.stv** %6, align 8
  %239 = getelementptr inbounds %struct.stv, %struct.stv* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = load i32, i32* %14, align 4
  %243 = call i32 @write_reg(%struct.stv* %236, i64 %241, i32 %242)
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %244, -65
  store i32 %245, i32* %14, align 4
  %246 = load %struct.stv*, %struct.stv** %6, align 8
  %247 = load i64, i64* @RSTV0910_P2_PDELCTRL2, align 8
  %248 = load %struct.stv*, %struct.stv** %6, align 8
  %249 = getelementptr inbounds %struct.stv, %struct.stv* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %247, %250
  %252 = load i32, i32* %14, align 4
  %253 = call i32 @write_reg(%struct.stv* %246, i64 %251, i32 %252)
  %254 = load %struct.stv*, %struct.stv** %6, align 8
  %255 = getelementptr inbounds %struct.stv, %struct.stv* %254, i32 0, i32 4
  store i32 2, i32* %255, align 8
  %256 = load %struct.stv*, %struct.stv** %6, align 8
  %257 = getelementptr inbounds %struct.stv, %struct.stv* %256, i32 0, i32 10
  store i64 0, i64* %257, align 8
  %258 = load %struct.stv*, %struct.stv** %6, align 8
  %259 = getelementptr inbounds %struct.stv, %struct.stv* %258, i32 0, i32 5
  store i32 1, i32* %259, align 4
  %260 = load %struct.stv*, %struct.stv** %6, align 8
  %261 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %262 = load %struct.stv*, %struct.stv** %6, align 8
  %263 = getelementptr inbounds %struct.stv, %struct.stv* %262, i32 0, i32 7
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %261, %264
  %266 = load i32, i32* @BER_SRC_S2, align 4
  %267 = load %struct.stv*, %struct.stv** %6, align 8
  %268 = getelementptr inbounds %struct.stv, %struct.stv* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %266, %269
  %271 = call i32 @write_reg(%struct.stv* %260, i64 %265, i32 %270)
  br label %291

272:                                              ; preds = %201
  %273 = load %struct.stv*, %struct.stv** %6, align 8
  %274 = getelementptr inbounds %struct.stv, %struct.stv* %273, i32 0, i32 4
  store i32 2, i32* %274, align 8
  %275 = load %struct.stv*, %struct.stv** %6, align 8
  %276 = getelementptr inbounds %struct.stv, %struct.stv* %275, i32 0, i32 10
  store i64 0, i64* %276, align 8
  %277 = load %struct.stv*, %struct.stv** %6, align 8
  %278 = getelementptr inbounds %struct.stv, %struct.stv* %277, i32 0, i32 5
  store i32 1, i32* %278, align 4
  %279 = load %struct.stv*, %struct.stv** %6, align 8
  %280 = load i64, i64* @RSTV0910_P2_ERRCTRL1, align 8
  %281 = load %struct.stv*, %struct.stv** %6, align 8
  %282 = getelementptr inbounds %struct.stv, %struct.stv* %281, i32 0, i32 7
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %280, %283
  %285 = load i32, i32* @BER_SRC_S, align 4
  %286 = load %struct.stv*, %struct.stv** %6, align 8
  %287 = getelementptr inbounds %struct.stv, %struct.stv* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %285, %288
  %290 = call i32 @write_reg(%struct.stv* %279, i64 %284, i32 %289)
  br label %291

291:                                              ; preds = %272, %212
  %292 = load %struct.stv*, %struct.stv** %6, align 8
  %293 = load i64, i64* @RSTV0910_P2_FBERCPT4, align 8
  %294 = load %struct.stv*, %struct.stv** %6, align 8
  %295 = getelementptr inbounds %struct.stv, %struct.stv* %294, i32 0, i32 7
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %293, %296
  %298 = call i32 @write_reg(%struct.stv* %292, i64 %297, i32 0)
  %299 = load %struct.stv*, %struct.stv** %6, align 8
  %300 = load i64, i64* @RSTV0910_P2_ERRCTRL2, align 8
  %301 = load %struct.stv*, %struct.stv** %6, align 8
  %302 = getelementptr inbounds %struct.stv, %struct.stv* %301, i32 0, i32 7
  %303 = load i64, i64* %302, align 8
  %304 = add nsw i64 %300, %303
  %305 = call i32 @write_reg(%struct.stv* %299, i64 %304, i32 193)
  %306 = load %struct.stv*, %struct.stv** %6, align 8
  %307 = call i32 @set_vth_default(%struct.stv* %306)
  %308 = load %struct.stv*, %struct.stv** %6, align 8
  %309 = getelementptr inbounds %struct.stv, %struct.stv* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = load i64, i64* @RCVMODE_DVBS, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %320

314:                                              ; preds = %291
  %315 = load %struct.stv*, %struct.stv** %6, align 8
  %316 = load %struct.stv*, %struct.stv** %6, align 8
  %317 = getelementptr inbounds %struct.stv, %struct.stv* %316, i32 0, i32 9
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @enable_puncture_rate(%struct.stv* %315, i32 %318)
  br label %320

320:                                              ; preds = %314, %291
  br label %321

321:                                              ; preds = %320, %192
  %322 = load %struct.stv*, %struct.stv** %6, align 8
  %323 = getelementptr inbounds %struct.stv, %struct.stv* %322, i32 0, i32 8
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %347

326:                                              ; preds = %321
  %327 = load %struct.stv*, %struct.stv** %6, align 8
  %328 = load i64, i64* @RSTV0910_P2_DMDMODCOD, align 8
  %329 = load %struct.stv*, %struct.stv** %6, align 8
  %330 = getelementptr inbounds %struct.stv, %struct.stv* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %328, %331
  %333 = call i32 @read_reg(%struct.stv* %327, i64 %332, i32* %15)
  %334 = load i32, i32* %15, align 4
  %335 = and i32 %334, 124
  %336 = ashr i32 %335, 2
  store i32 %336, i32* %16, align 4
  %337 = load i32, i32* %16, align 4
  %338 = load %struct.stv*, %struct.stv** %6, align 8
  %339 = getelementptr inbounds %struct.stv, %struct.stv* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = icmp ugt i32 %337, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %326
  %343 = load i32, i32* %16, align 4
  %344 = load %struct.stv*, %struct.stv** %6, align 8
  %345 = getelementptr inbounds %struct.stv, %struct.stv* %344, i32 0, i32 6
  store i32 %343, i32* %345, align 8
  br label %346

346:                                              ; preds = %342, %326
  br label %347

347:                                              ; preds = %346, %321
  br label %348

348:                                              ; preds = %347, %189
  %349 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %350 = call i32 @read_signal_strength(%struct.dvb_frontend* %349)
  %351 = load i32*, i32** %5, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @FE_HAS_CARRIER, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %348
  %357 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %358 = call i32 @read_snr(%struct.dvb_frontend* %357)
  br label %367

359:                                              ; preds = %348
  %360 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %361 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %362 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i64 0
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  store i8* %360, i8** %366, align 8
  br label %367

367:                                              ; preds = %359, %356
  %368 = load i32*, i32** %5, align 8
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @FE_HAS_VITERBI, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %367
  %374 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %375 = call i32 @read_ber(%struct.dvb_frontend* %374)
  br label %391

376:                                              ; preds = %367
  %377 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %378 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %379 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %381, i64 0
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  store i8* %377, i8** %383, align 8
  %384 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %385 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %386 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i32 0, i32 0
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i64 0
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  store i8* %384, i8** %390, align 8
  br label %391

391:                                              ; preds = %376, %373
  store i32 0, i32* %3, align 4
  br label %392

392:                                              ; preds = %391, %61
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i32 @read_reg(%struct.stv*, i64, i32*) #1

declare dso_local i32 @set_vth(%struct.stv*) #1

declare dso_local i32 @get_signal_parameters(%struct.stv*) #1

declare dso_local i32 @tracking_optimization(%struct.stv*) #1

declare dso_local i32 @write_reg(%struct.stv*, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @manage_matype_info(%struct.stv*) #1

declare dso_local i32 @set_vth_default(%struct.stv*) #1

declare dso_local i32 @enable_puncture_rate(%struct.stv*, i32) #1

declare dso_local i32 @read_signal_strength(%struct.dvb_frontend*) #1

declare dso_local i32 @read_snr(%struct.dvb_frontend*) #1

declare dso_local i32 @read_ber(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
