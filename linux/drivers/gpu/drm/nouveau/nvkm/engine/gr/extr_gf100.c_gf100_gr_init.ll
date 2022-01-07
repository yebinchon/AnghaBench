; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32, i32*, i32, %struct.TYPE_8__*, i64, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { {}*, {}*, i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, {}*, i64, {}*, i64, {}*, {}* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_gr_init(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %7 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %8 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %3, align 8
  %13 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %14 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %13, i32 0, i32 3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 24
  %17 = bitcast {}** %16 to i32 (%struct.gf100_gr*)**
  %18 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %17, align 8
  %19 = icmp ne i32 (%struct.gf100_gr*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 24
  %25 = bitcast {}** %24 to i32 (%struct.gf100_gr*)**
  %26 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %25, align 8
  %27 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %28 = call i32 %26(%struct.gf100_gr* %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %31 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 23
  %34 = bitcast {}** %33 to i32 (%struct.gf100_gr*)**
  %35 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %34, align 8
  %36 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %37 = call i32 %35(%struct.gf100_gr* %36)
  %38 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %39 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %44 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %45 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @gf100_gr_mmio(%struct.gf100_gr* %43, i64 %46)
  br label %56

48:                                               ; preds = %29
  %49 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %50 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %51 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 22
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @gf100_gr_mmio(%struct.gf100_gr* %49, i64 %54)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %58 = call i32 @gf100_gr_wait_idle(%struct.gf100_gr* %57)
  %59 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %60 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %59, i32 0, i32 3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 21
  %63 = bitcast {}** %62 to i32 (%struct.gf100_gr*)**
  %64 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %63, align 8
  %65 = icmp ne i32 (%struct.gf100_gr*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %56
  %67 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %68 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 21
  %71 = bitcast {}** %70 to i32 (%struct.gf100_gr*)**
  %72 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %71, align 8
  %73 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %74 = call i32 %72(%struct.gf100_gr* %73)
  br label %75

75:                                               ; preds = %66, %56
  %76 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %77 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 20
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %84 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %87 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %86, i32 0, i32 3
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 20
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @nvkm_therm_clkgate_init(i32 %85, i64 %90)
  br label %92

92:                                               ; preds = %82, %75
  %93 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %94 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 19
  %97 = bitcast {}** %96 to i32 (%struct.gf100_gr*)**
  %98 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %97, align 8
  %99 = icmp ne i32 (%struct.gf100_gr*)* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %92
  %101 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %102 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %101, i32 0, i32 3
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 19
  %105 = bitcast {}** %104 to i32 (%struct.gf100_gr*)**
  %106 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %105, align 8
  %107 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %108 = call i32 %106(%struct.gf100_gr* %107)
  br label %109

109:                                              ; preds = %100, %92
  %110 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %111 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %110, i32 0, i32 3
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 18
  %114 = bitcast {}** %113 to i32 (%struct.gf100_gr*)**
  %115 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %114, align 8
  %116 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %117 = call i32 %115(%struct.gf100_gr* %116)
  %118 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %119 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 17
  %122 = bitcast {}** %121 to i32 (%struct.gf100_gr*)**
  %123 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %122, align 8
  %124 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %125 = call i32 %123(%struct.gf100_gr* %124)
  %126 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %127 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %126, i32 0, i32 3
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 16
  %130 = bitcast {}** %129 to i32 (%struct.gf100_gr*)**
  %131 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %130, align 8
  %132 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %133 = call i32 %131(%struct.gf100_gr* %132)
  %134 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %135 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %134, i32 0, i32 3
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 15
  %138 = bitcast {}** %137 to i32 (%struct.gf100_gr*)**
  %139 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %138, align 8
  %140 = icmp ne i32 (%struct.gf100_gr*)* %139, null
  br i1 %140, label %141, label %150

141:                                              ; preds = %109
  %142 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %143 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %142, i32 0, i32 3
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 15
  %146 = bitcast {}** %145 to i32 (%struct.gf100_gr*)**
  %147 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %146, align 8
  %148 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %149 = call i32 %147(%struct.gf100_gr* %148)
  br label %150

150:                                              ; preds = %141, %109
  %151 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %152 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %151, i32 0, i32 3
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 14
  %155 = bitcast {}** %154 to i32 (%struct.gf100_gr*)**
  %156 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %155, align 8
  %157 = icmp ne i32 (%struct.gf100_gr*)* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %150
  %159 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %160 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %159, i32 0, i32 3
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 14
  %163 = bitcast {}** %162 to i32 (%struct.gf100_gr*)**
  %164 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %163, align 8
  %165 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %166 = call i32 %164(%struct.gf100_gr* %165)
  br label %167

167:                                              ; preds = %158, %150
  %168 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %169 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %168, i32 0, i32 3
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 13
  %172 = bitcast {}** %171 to i32 (%struct.gf100_gr*)**
  %173 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %172, align 8
  %174 = icmp ne i32 (%struct.gf100_gr*)* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %167
  %176 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %177 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %176, i32 0, i32 3
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 13
  %180 = bitcast {}** %179 to i32 (%struct.gf100_gr*)**
  %181 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %180, align 8
  %182 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %183 = call i32 %181(%struct.gf100_gr* %182)
  br label %184

184:                                              ; preds = %175, %167
  %185 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %186 = call i32 @nvkm_wr32(%struct.nvkm_device* %185, i32 4195584, i32 65537)
  %187 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %188 = call i32 @nvkm_wr32(%struct.nvkm_device* %187, i32 4194560, i32 -1)
  %189 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %190 = call i32 @nvkm_wr32(%struct.nvkm_device* %189, i32 4194620, i32 -1)
  %191 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %192 = call i32 @nvkm_wr32(%struct.nvkm_device* %191, i32 4194596, i32 2)
  %193 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %194 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %193, i32 0, i32 3
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 12
  %197 = bitcast {}** %196 to i32 (%struct.gf100_gr*)**
  %198 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %197, align 8
  %199 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %200 = call i32 %198(%struct.gf100_gr* %199)
  %201 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %202 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %201, i32 0, i32 3
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 11
  %205 = bitcast {}** %204 to i32 (%struct.gf100_gr*)**
  %206 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %205, align 8
  %207 = icmp ne i32 (%struct.gf100_gr*)* %206, null
  br i1 %207, label %208, label %217

208:                                              ; preds = %184
  %209 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %210 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %209, i32 0, i32 3
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 11
  %213 = bitcast {}** %212 to i32 (%struct.gf100_gr*)**
  %214 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %213, align 8
  %215 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %216 = call i32 %214(%struct.gf100_gr* %215)
  br label %217

217:                                              ; preds = %208, %184
  %218 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %219 = call i32 @nvkm_wr32(%struct.nvkm_device* %218, i32 4210688, i32 -1073741824)
  %220 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %221 = call i32 @nvkm_wr32(%struct.nvkm_device* %220, i32 4212224, i32 -1073741824)
  %222 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %223 = call i32 @nvkm_wr32(%struct.nvkm_device* %222, i32 4227120, i32 -1073741824)
  %224 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %225 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %224, i32 0, i32 3
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 10
  %228 = bitcast {}** %227 to i32 (%struct.gf100_gr*)**
  %229 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %228, align 8
  %230 = icmp ne i32 (%struct.gf100_gr*)* %229, null
  br i1 %230, label %231, label %240

231:                                              ; preds = %217
  %232 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %233 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %232, i32 0, i32 3
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 10
  %236 = bitcast {}** %235 to i32 (%struct.gf100_gr*)**
  %237 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %236, align 8
  %238 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %239 = call i32 %237(%struct.gf100_gr* %238)
  br label %240

240:                                              ; preds = %231, %217
  %241 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %242 = call i32 @nvkm_wr32(%struct.nvkm_device* %241, i32 4211856, i32 -1073741824)
  %243 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %244 = call i32 @nvkm_wr32(%struct.nvkm_device* %243, i32 4218904, i32 -1073741824)
  %245 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %246 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %245, i32 0, i32 3
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 9
  %249 = bitcast {}** %248 to i32 (%struct.gf100_gr*)**
  %250 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %249, align 8
  %251 = icmp ne i32 (%struct.gf100_gr*)* %250, null
  br i1 %251, label %252, label %261

252:                                              ; preds = %240
  %253 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %254 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %253, i32 0, i32 3
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 9
  %257 = bitcast {}** %256 to i32 (%struct.gf100_gr*)**
  %258 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %257, align 8
  %259 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %260 = call i32 %258(%struct.gf100_gr* %259)
  br label %261

261:                                              ; preds = %252, %240
  %262 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %263 = call i32 @nvkm_wr32(%struct.nvkm_device* %262, i32 4216896, i32 -1073741824)
  %264 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %265 = call i32 @nvkm_wr32(%struct.nvkm_device* %264, i32 4216900, i32 16777215)
  %266 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %267 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %266, i32 0, i32 3
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 8
  %270 = bitcast {}** %269 to i32 (%struct.gf100_gr*)**
  %271 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %270, align 8
  %272 = icmp ne i32 (%struct.gf100_gr*)* %271, null
  br i1 %272, label %273, label %282

273:                                              ; preds = %261
  %274 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %275 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %274, i32 0, i32 3
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 8
  %278 = bitcast {}** %277 to i32 (%struct.gf100_gr*)**
  %279 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %278, align 8
  %280 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %281 = call i32 %279(%struct.gf100_gr* %280)
  br label %282

282:                                              ; preds = %273, %261
  %283 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %284 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %283, i32 0, i32 3
  %285 = load %struct.TYPE_8__*, %struct.TYPE_8__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 7
  %287 = bitcast {}** %286 to i32 (%struct.gf100_gr*)**
  %288 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %287, align 8
  %289 = icmp ne i32 (%struct.gf100_gr*)* %288, null
  br i1 %289, label %290, label %299

290:                                              ; preds = %282
  %291 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %292 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %291, i32 0, i32 3
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 7
  %295 = bitcast {}** %294 to i32 (%struct.gf100_gr*)**
  %296 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %295, align 8
  %297 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %298 = call i32 %296(%struct.gf100_gr* %297)
  br label %299

299:                                              ; preds = %290, %282
  %300 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %301 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %300, i32 0, i32 3
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 6
  %304 = bitcast {}** %303 to i32 (%struct.gf100_gr*)**
  %305 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %304, align 8
  %306 = icmp ne i32 (%struct.gf100_gr*)* %305, null
  br i1 %306, label %307, label %316

307:                                              ; preds = %299
  %308 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %309 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %308, i32 0, i32 3
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 6
  %312 = bitcast {}** %311 to i32 (%struct.gf100_gr*)**
  %313 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %312, align 8
  %314 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %315 = call i32 %313(%struct.gf100_gr* %314)
  br label %316

316:                                              ; preds = %307, %299
  %317 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %318 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %317, i32 0, i32 3
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 5
  %321 = bitcast {}** %320 to i32 (%struct.gf100_gr*)**
  %322 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %321, align 8
  %323 = icmp ne i32 (%struct.gf100_gr*)* %322, null
  br i1 %323, label %324, label %333

324:                                              ; preds = %316
  %325 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %326 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %325, i32 0, i32 3
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 5
  %329 = bitcast {}** %328 to i32 (%struct.gf100_gr*)**
  %330 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %329, align 8
  %331 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %332 = call i32 %330(%struct.gf100_gr* %331)
  br label %333

333:                                              ; preds = %324, %316
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %438, %333
  %335 = load i32, i32* %4, align 4
  %336 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %337 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp slt i32 %335, %338
  br i1 %339, label %340, label %441

340:                                              ; preds = %334
  %341 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %342 = load i32, i32* %4, align 4
  %343 = call i32 @GPC_UNIT(i32 %342, i32 1056)
  %344 = call i32 @nvkm_wr32(%struct.nvkm_device* %341, i32 %343, i32 -1073741824)
  %345 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %346 = load i32, i32* %4, align 4
  %347 = call i32 @GPC_UNIT(i32 %346, i32 2304)
  %348 = call i32 @nvkm_wr32(%struct.nvkm_device* %345, i32 %347, i32 -1073741824)
  %349 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %350 = load i32, i32* %4, align 4
  %351 = call i32 @GPC_UNIT(i32 %350, i32 4136)
  %352 = call i32 @nvkm_wr32(%struct.nvkm_device* %349, i32 %351, i32 -1073741824)
  %353 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %354 = load i32, i32* %4, align 4
  %355 = call i32 @GPC_UNIT(i32 %354, i32 2084)
  %356 = call i32 @nvkm_wr32(%struct.nvkm_device* %353, i32 %355, i32 -1073741824)
  store i32 0, i32* %5, align 4
  br label %357

357:                                              ; preds = %426, %340
  %358 = load i32, i32* %5, align 4
  %359 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %360 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %4, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %358, %365
  br i1 %366, label %367, label %429

367:                                              ; preds = %357
  %368 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %369 = load i32, i32* %4, align 4
  %370 = load i32, i32* %5, align 4
  %371 = call i32 @TPC_UNIT(i32 %369, i32 %370, i32 1288)
  %372 = call i32 @nvkm_wr32(%struct.nvkm_device* %368, i32 %371, i32 -1)
  %373 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %374 = load i32, i32* %4, align 4
  %375 = load i32, i32* %5, align 4
  %376 = call i32 @TPC_UNIT(i32 %374, i32 %375, i32 1292)
  %377 = call i32 @nvkm_wr32(%struct.nvkm_device* %373, i32 %376, i32 -1)
  %378 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %379 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %378, i32 0, i32 3
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 4
  %382 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %381, align 8
  %383 = icmp ne i32 (%struct.gf100_gr*, i32, i32)* %382, null
  br i1 %383, label %384, label %394

384:                                              ; preds = %367
  %385 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %386 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %385, i32 0, i32 3
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i32 0, i32 4
  %389 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %388, align 8
  %390 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %391 = load i32, i32* %4, align 4
  %392 = load i32, i32* %5, align 4
  %393 = call i32 %389(%struct.gf100_gr* %390, i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %384, %367
  %395 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %396 = load i32, i32* %4, align 4
  %397 = load i32, i32* %5, align 4
  %398 = call i32 @TPC_UNIT(i32 %396, i32 %397, i32 132)
  %399 = call i32 @nvkm_wr32(%struct.nvkm_device* %395, i32 %398, i32 -1073741824)
  %400 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %401 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %400, i32 0, i32 3
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 3
  %404 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %403, align 8
  %405 = icmp ne i32 (%struct.gf100_gr*, i32, i32)* %404, null
  br i1 %405, label %406, label %416

406:                                              ; preds = %394
  %407 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %408 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %407, i32 0, i32 3
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 3
  %411 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %410, align 8
  %412 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %413 = load i32, i32* %4, align 4
  %414 = load i32, i32* %5, align 4
  %415 = call i32 %411(%struct.gf100_gr* %412, i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %406, %394
  %417 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %418 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %417, i32 0, i32 3
  %419 = load %struct.TYPE_8__*, %struct.TYPE_8__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 2
  %421 = load i32 (%struct.gf100_gr*, i32, i32)*, i32 (%struct.gf100_gr*, i32, i32)** %420, align 8
  %422 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %423 = load i32, i32* %4, align 4
  %424 = load i32, i32* %5, align 4
  %425 = call i32 %421(%struct.gf100_gr* %422, i32 %423, i32 %424)
  br label %426

426:                                              ; preds = %416
  %427 = load i32, i32* %5, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %5, align 4
  br label %357

429:                                              ; preds = %357
  %430 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %431 = load i32, i32* %4, align 4
  %432 = call i32 @GPC_UNIT(i32 %431, i32 11408)
  %433 = call i32 @nvkm_wr32(%struct.nvkm_device* %430, i32 %432, i32 -1)
  %434 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %435 = load i32, i32* %4, align 4
  %436 = call i32 @GPC_UNIT(i32 %435, i32 11412)
  %437 = call i32 @nvkm_wr32(%struct.nvkm_device* %434, i32 %436, i32 -1)
  br label %438

438:                                              ; preds = %429
  %439 = load i32, i32* %4, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %4, align 4
  br label %334

441:                                              ; preds = %334
  store i32 0, i32* %6, align 4
  br label %442

442:                                              ; preds = %465, %441
  %443 = load i32, i32* %6, align 4
  %444 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %445 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = icmp slt i32 %443, %446
  br i1 %447, label %448, label %468

448:                                              ; preds = %442
  %449 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %450 = load i32, i32* %6, align 4
  %451 = call i32 @ROP_UNIT(i32 %450, i32 324)
  %452 = call i32 @nvkm_wr32(%struct.nvkm_device* %449, i32 %451, i32 1073741824)
  %453 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %454 = load i32, i32* %6, align 4
  %455 = call i32 @ROP_UNIT(i32 %454, i32 112)
  %456 = call i32 @nvkm_wr32(%struct.nvkm_device* %453, i32 %455, i32 1073741824)
  %457 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %458 = load i32, i32* %6, align 4
  %459 = call i32 @ROP_UNIT(i32 %458, i32 516)
  %460 = call i32 @nvkm_wr32(%struct.nvkm_device* %457, i32 %459, i32 -1)
  %461 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %462 = load i32, i32* %6, align 4
  %463 = call i32 @ROP_UNIT(i32 %462, i32 520)
  %464 = call i32 @nvkm_wr32(%struct.nvkm_device* %461, i32 %463, i32 -1)
  br label %465

465:                                              ; preds = %448
  %466 = load i32, i32* %6, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %6, align 4
  br label %442

468:                                              ; preds = %442
  %469 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %470 = call i32 @nvkm_wr32(%struct.nvkm_device* %469, i32 4194568, i32 -1)
  %471 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %472 = call i32 @nvkm_wr32(%struct.nvkm_device* %471, i32 4194616, i32 -1)
  %473 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %474 = call i32 @nvkm_wr32(%struct.nvkm_device* %473, i32 4194584, i32 -1)
  %475 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %476 = call i32 @nvkm_wr32(%struct.nvkm_device* %475, i32 4194608, i32 -1)
  %477 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %478 = call i32 @nvkm_wr32(%struct.nvkm_device* %477, i32 4194588, i32 -1)
  %479 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %480 = call i32 @nvkm_wr32(%struct.nvkm_device* %479, i32 4194612, i32 -1)
  %481 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %482 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %481, i32 0, i32 3
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 1
  %485 = bitcast {}** %484 to i32 (%struct.gf100_gr*)**
  %486 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %485, align 8
  %487 = icmp ne i32 (%struct.gf100_gr*)* %486, null
  br i1 %487, label %488, label %497

488:                                              ; preds = %468
  %489 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %490 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %489, i32 0, i32 3
  %491 = load %struct.TYPE_8__*, %struct.TYPE_8__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 1
  %493 = bitcast {}** %492 to i32 (%struct.gf100_gr*)**
  %494 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %493, align 8
  %495 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %496 = call i32 %494(%struct.gf100_gr* %495)
  br label %497

497:                                              ; preds = %488, %468
  %498 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %499 = call i32 @gf100_gr_zbc_init(%struct.gf100_gr* %498)
  %500 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %501 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %500, i32 0, i32 3
  %502 = load %struct.TYPE_8__*, %struct.TYPE_8__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 0
  %504 = bitcast {}** %503 to i32 (%struct.gf100_gr*)**
  %505 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %504, align 8
  %506 = icmp ne i32 (%struct.gf100_gr*)* %505, null
  br i1 %506, label %507, label %516

507:                                              ; preds = %497
  %508 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %509 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %508, i32 0, i32 3
  %510 = load %struct.TYPE_8__*, %struct.TYPE_8__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  %512 = bitcast {}** %511 to i32 (%struct.gf100_gr*)**
  %513 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %512, align 8
  %514 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %515 = call i32 %513(%struct.gf100_gr* %514)
  br label %516

516:                                              ; preds = %507, %497
  %517 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %518 = call i32 @gf100_gr_init_ctxctl(%struct.gf100_gr* %517)
  ret i32 %518
}

declare dso_local i32 @gf100_gr_mmio(%struct.gf100_gr*, i64) #1

declare dso_local i32 @gf100_gr_wait_idle(%struct.gf100_gr*) #1

declare dso_local i32 @nvkm_therm_clkgate_init(i32, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @GPC_UNIT(i32, i32) #1

declare dso_local i32 @TPC_UNIT(i32, i32, i32) #1

declare dso_local i32 @ROP_UNIT(i32, i32) #1

declare dso_local i32 @gf100_gr_zbc_init(%struct.gf100_gr*) #1

declare dso_local i32 @gf100_gr_init_ctxctl(%struct.gf100_gr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
