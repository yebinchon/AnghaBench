; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_clear_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_clear_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { %struct.TYPE_10__*, i64*, i64, i32, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.hifn_dma = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"ring cleanup 1: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", align 1
@HIFN_D_VALID = common dso_local global i32 0, align 4
@HIFN_D_RES_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_SRC_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_CMD_RSIZE = common dso_local global i32 0, align 4
@HIFN_D_DST_RSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"ring cleanup 2: i: %d.%d.%d.%d, u: %d.%d.%d.%d, k: %d.%d.%d.%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hifn_device*, i32)* @hifn_clear_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_clear_rings(%struct.hifn_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hifn_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hifn_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %9 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hifn_dma*
  store %struct.hifn_dma* %11, %struct.hifn_dma** %5, align 8
  %12 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %13 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %17 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %20 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %23 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %26 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %29 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %32 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %35 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %38 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %41 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %44 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %47 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %50 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %54 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %57 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %110, %2
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %59
  %63 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %64 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %63, i32 0, i32 15
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @HIFN_D_VALID, align 4
  %72 = call i32 @__cpu_to_le32(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %113

76:                                               ; preds = %62
  %77 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %78 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %76
  %86 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %87 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %91 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %93 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @hifn_process_ready(i64 %98, i32 %99)
  %101 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @hifn_complete_sa(%struct.hifn_device* %101, i32 %102)
  br label %104

104:                                              ; preds = %85, %76
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* @HIFN_D_RES_RSIZE, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  br label %59

113:                                              ; preds = %75, %59
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %116 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %119 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %121 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %6, align 4
  %123 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %124 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %149, %113
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %152

129:                                              ; preds = %126
  %130 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %131 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %130, i32 0, i32 14
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @HIFN_D_VALID, align 4
  %139 = call i32 @__cpu_to_le32(i32 %138)
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %152

143:                                              ; preds = %129
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* @HIFN_D_SRC_RSIZE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %148, %143
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %7, align 4
  br label %126

152:                                              ; preds = %142, %126
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %155 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %158 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %160 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %6, align 4
  %162 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %163 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %188, %152
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %165
  %169 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %170 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %169, i32 0, i32 13
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @HIFN_D_VALID, align 4
  %178 = call i32 @__cpu_to_le32(i32 %177)
  %179 = and i32 %176, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %191

182:                                              ; preds = %168
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* @HIFN_D_CMD_RSIZE, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %182
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %7, align 4
  br label %165

191:                                              ; preds = %181, %165
  %192 = load i32, i32* %6, align 4
  %193 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %194 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %197 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  %198 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %199 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %6, align 4
  %201 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %202 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %227, %191
  %205 = load i32, i32* %7, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %204
  %208 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %209 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %208, i32 0, i32 12
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @HIFN_D_VALID, align 4
  %217 = call i32 @__cpu_to_le32(i32 %216)
  %218 = and i32 %215, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %230

221:                                              ; preds = %207
  %222 = load i32, i32* %6, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* @HIFN_D_DST_RSIZE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %226, %221
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, -1
  store i32 %229, i32* %7, align 4
  br label %204

230:                                              ; preds = %220, %204
  %231 = load i32, i32* %6, align 4
  %232 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %233 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %236 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load %struct.hifn_device*, %struct.hifn_device** %3, align 8
  %238 = getelementptr inbounds %struct.hifn_device, %struct.hifn_device* %237, i32 0, i32 0
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %242 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %241, i32 0, i32 11
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %245 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %244, i32 0, i32 10
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %248 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %251 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %254 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %257 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %260 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %263 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %266 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %269 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %272 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.hifn_dma*, %struct.hifn_dma** %5, align 8
  %275 = getelementptr inbounds %struct.hifn_dma, %struct.hifn_dma* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @dev_dbg(i32* %240, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %243, i32 %246, i32 %249, i32 %252, i32 %255, i32 %258, i32 %261, i32 %264, i32 %267, i32 %270, i32 %273, i32 %276)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @hifn_process_ready(i64, i32) #1

declare dso_local i32 @hifn_complete_sa(%struct.hifn_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
