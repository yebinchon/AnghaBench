; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_s_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_s_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn88443x_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }

@CPMON1_S = common dso_local global i32 0, align 4
@CPMON1_S_FSYNC = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@CPMON1_S_W2LOCK = common dso_local global i32 0, align 4
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@AGCREAD_S = common dso_local global i32 0, align 4
@FE_SCALE_RELATIVE = common dso_local global i8* null, align 8
@CNRDXU_S = common dso_local global i32 0, align 4
@CNRDXL_S = common dso_local global i32 0, align 4
@CNRDYU_S = common dso_local global i32 0, align 4
@CNRDYL_S = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@BERCNFLG_S = common dso_local global i32 0, align 4
@BERCNFLG_S_BERVRDY = common dso_local global i32 0, align 4
@BERVRDU_S = common dso_local global i32 0, align 4
@BERVRDL_S = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mn88443x_priv*, %struct.dtv_frontend_properties*, i32*)* @mn88443x_s_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88443x_s_read_status(%struct.mn88443x_priv* %0, %struct.dtv_frontend_properties* %1, i32* %2) #0 {
  %4 = alloca %struct.mn88443x_priv*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mn88443x_priv* %0, %struct.mn88443x_priv** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.mn88443x_priv*, %struct.mn88443x_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mn88443x_priv, %struct.mn88443x_priv* %21, i32 0, i32 0
  %23 = load %struct.regmap*, %struct.regmap** %22, align 8
  store %struct.regmap* %23, %struct.regmap** %7, align 8
  %24 = load %struct.regmap*, %struct.regmap** %7, align 8
  %25 = load i32, i32* @CPMON1_S, align 4
  %26 = call i32 @regmap_read(%struct.regmap* %24, i32 %25, i32* %8)
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @CPMON1_S_FSYNC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32, i32* @FE_HAS_VITERBI, align 4
  %34 = load i32, i32* @FE_HAS_SYNC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FE_HAS_LOCK, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %3
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @CPMON1_S_W2LOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %48 = load i32, i32* @FE_HAS_CARRIER, align 4
  %49 = or i32 %47, %48
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %55 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %56 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i8* %54, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %53
  %67 = load %struct.regmap*, %struct.regmap** %7, align 8
  %68 = load i32, i32* @AGCREAD_S, align 4
  %69 = call i32 @regmap_read(%struct.regmap* %67, i32 %68, i32* %9)
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 %70, 8
  store i32 %71, i32* %13, align 4
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i8*, i8** @FE_SCALE_RELATIVE, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i8* %75, i8** %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 8
  br label %89

89:                                               ; preds = %66, %53
  %90 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i8* %90, i8** %96, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FE_HAS_VITERBI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %188

102:                                              ; preds = %89
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %103 = load %struct.regmap*, %struct.regmap** %7, align 8
  %104 = load i32, i32* @CNRDXU_S, align 4
  %105 = call i32 @regmap_read(%struct.regmap* %103, i32 %104, i32* %9)
  %106 = load %struct.regmap*, %struct.regmap** %7, align 8
  %107 = load i32, i32* @CNRDXL_S, align 4
  %108 = call i32 @regmap_read(%struct.regmap* %106, i32 %107, i32* %10)
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 8
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %15, align 4
  %113 = load %struct.regmap*, %struct.regmap** %7, align 8
  %114 = load i32, i32* @CNRDYU_S, align 4
  %115 = call i32 @regmap_read(%struct.regmap* %113, i32 %114, i32* %9)
  %116 = load %struct.regmap*, %struct.regmap** %7, align 8
  %117 = load i32, i32* @CNRDYL_S, align 4
  %118 = call i32 @regmap_read(%struct.regmap* %116, i32 %117, i32* %10)
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 8
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = shl i32 %123, 15
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sub nsw i32 %124, %127
  store i32 %128, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %102
  %132 = load i32, i32* %15, align 4
  %133 = mul nsw i32 16, %132
  %134 = load i32, i32* %15, align 4
  %135 = mul nsw i32 %133, %134
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @div_u64(i32 %135, i32 %136)
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %18, align 4
  %142 = mul nsw i32 %140, %141
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %131
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @div_u64(i32 790273982, i32 %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %145, %131
  br label %149

149:                                              ; preds = %148, %102
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %166

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = call i32 @intlog10(i32 %153)
  %155 = mul nsw i32 2, %154
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @abs(i32 %156) #3
  %158 = call i32 @intlog10(i32 %157)
  %159 = sub nsw i32 %155, %158
  %160 = load i32, i32* %18, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sub nsw i32 %161, 5033164
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = mul nsw i32 %163, 10000
  %165 = call i32 @div_u64(i32 %164, i32 16777216)
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %152, %149
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %171 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %174 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %175 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i8* %173, i8** %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %180, i32* %186, align 8
  br label %187

187:                                              ; preds = %169, %166
  br label %188

188:                                              ; preds = %187, %89
  %189 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %190 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %191 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  store i8* %189, i8** %195, align 8
  %196 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %197 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %198 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i64 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  store i8* %196, i8** %202, align 8
  %203 = load %struct.regmap*, %struct.regmap** %7, align 8
  %204 = load i32, i32* @BERCNFLG_S, align 4
  %205 = call i32 @regmap_read(%struct.regmap* %203, i32 %204, i32* %11)
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @FE_HAS_VITERBI, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %265

211:                                              ; preds = %188
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @BERCNFLG_S_BERVRDY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %265

216:                                              ; preds = %211
  %217 = load %struct.regmap*, %struct.regmap** %7, align 8
  %218 = load i32, i32* @BERVRDU_S, align 4
  %219 = call i32 @regmap_read(%struct.regmap* %217, i32 %218, i32* %9)
  %220 = load %struct.regmap*, %struct.regmap** %7, align 8
  %221 = load i32, i32* @BERVRDL_S, align 4
  %222 = call i32 @regmap_read(%struct.regmap* %220, i32 %221, i32* %10)
  %223 = load i32, i32* %9, align 4
  %224 = shl i32 %223, 8
  %225 = load i32, i32* %10, align 4
  %226 = or i32 %224, %225
  store i32 %226, i32* %19, align 4
  store i32 1671168, i32* %20, align 4
  %227 = load i32, i32* %20, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %264

229:                                              ; preds = %216
  %230 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %231 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  %233 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %234 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %235 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i64 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  store i8* %233, i8** %239, align 8
  %240 = load i32, i32* %19, align 4
  %241 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %242 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i64 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  store i32 %240, i32* %246, align 8
  %247 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %248 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  store i32 1, i32* %249, align 8
  %250 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %251 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %252 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i64 0
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  store i8* %250, i8** %256, align 8
  %257 = load i32, i32* %20, align 4
  %258 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %259 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 0
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  store i32 %257, i32* %263, align 8
  br label %264

264:                                              ; preds = %229, %216
  br label %265

265:                                              ; preds = %264, %211, %188
  ret i32 0
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @intlog10(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
