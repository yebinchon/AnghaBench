; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_nv50.c_nv50_bar_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_nv50.c_nv50_bar_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.nvkm_bar = type { i32 }
%struct.nv50_bar = type { i32, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.nvkm_device*, i32)* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 }

@nv50_bar_oneinit.bar1_lock = internal global %struct.lock_class_key zeroinitializer, align 4
@nv50_bar_oneinit.bar2_lock = internal global %struct.lock_class_key zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"bar2\00", align 1
@NVKM_SUBDEV_BAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"bar1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_bar_oneinit(%struct.nvkm_bar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bar*, align 8
  %4 = alloca %struct.nv50_bar*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_bar* %0, %struct.nvkm_bar** %3, align 8
  %10 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %11 = call %struct.nv50_bar* @nv50_bar(%struct.nvkm_bar* %10)
  store %struct.nv50_bar* %11, %struct.nv50_bar** %4, align 8
  %12 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %13 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 2
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %5, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %19 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %18, i32 0, i32 2
  %20 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %17, i32 131072, i32 0, i32 0, %struct.TYPE_15__* null, %struct.TYPE_15__** %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %300

25:                                               ; preds = %1
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %28 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %31 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %34 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %33, i32 0, i32 8
  %35 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %26, i32 %29, i32 0, i32 0, %struct.TYPE_15__* %32, %struct.TYPE_15__** %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %300

40:                                               ; preds = %25
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %42 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %43 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %42, i32 0, i32 2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %46 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %45, i32 0, i32 7
  %47 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %41, i32 16384, i32 0, i32 0, %struct.TYPE_15__* %44, %struct.TYPE_15__** %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %300

52:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %54 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %56, align 8
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %59 = call i32 %57(%struct.nvkm_device* %58, i32 3)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %300

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %7, align 4
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %76, i32 0, i32 6
  %78 = call i32 @nvkm_vmm_new(%struct.nvkm_device* %69, i32 %70, i64 %75, i32* null, i32 0, %struct.lock_class_key* @nv50_bar_oneinit.bar2_lock, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__** %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %65
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %2, align 4
  br label %300

83:                                               ; preds = %65
  %84 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %85 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %84, i32 0, i32 6
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @NVKM_SUBDEV_BAR, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = call i32 @atomic_inc(i32* %90)
  %92 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %93 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %98 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %97, i32 0, i32 6
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 8
  %101 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %102 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %101, i32 0, i32 6
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = call i32 @nvkm_vmm_boot(%struct.TYPE_16__* %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %83
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %2, align 4
  br label %300

109:                                              ; preds = %83
  %110 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %111 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %110, i32 0, i32 6
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %114 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %113, i32 0, i32 2
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nvkm_vmm_join(%struct.TYPE_16__* %112, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %2, align 4
  br label %300

123:                                              ; preds = %109
  %124 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %125 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %126 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %125, i32 0, i32 2
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %129 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %128, i32 0, i32 5
  %130 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %124, i32 24, i32 16, i32 0, %struct.TYPE_15__* %127, %struct.TYPE_15__** %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %2, align 4
  br label %300

135:                                              ; preds = %123
  %136 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %137 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %136, i32 0, i32 5
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = call i32 @nvkm_kmap(%struct.TYPE_15__* %138)
  %140 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %141 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %140, i32 0, i32 5
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = call i32 @nvkm_wo32(%struct.TYPE_15__* %142, i32 0, i32 2143289344)
  %144 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %145 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %144, i32 0, i32 5
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @lower_32_bits(i32 %147)
  %149 = call i32 @nvkm_wo32(%struct.TYPE_15__* %146, i32 4, i32 %148)
  %150 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %151 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %150, i32 0, i32 5
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @lower_32_bits(i32 %153)
  %155 = call i32 @nvkm_wo32(%struct.TYPE_15__* %152, i32 8, i32 %154)
  %156 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %157 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %156, i32 0, i32 5
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @upper_32_bits(i32 %159)
  %161 = shl i32 %160, 24
  %162 = load i32, i32* %6, align 4
  %163 = call i32 @upper_32_bits(i32 %162)
  %164 = or i32 %161, %163
  %165 = call i32 @nvkm_wo32(%struct.TYPE_15__* %158, i32 12, i32 %164)
  %166 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %167 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %166, i32 0, i32 5
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = call i32 @nvkm_wo32(%struct.TYPE_15__* %168, i32 16, i32 0)
  %170 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %171 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %170, i32 0, i32 5
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = call i32 @nvkm_wo32(%struct.TYPE_15__* %172, i32 20, i32 0)
  %174 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %175 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %174, i32 0, i32 5
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = call i32 @nvkm_done(%struct.TYPE_15__* %176)
  %178 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %179 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  %182 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %183 = call i32 @nvkm_bar_bar2_init(%struct.nvkm_device* %182)
  store i32 0, i32* %6, align 4
  %184 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %185 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %187, align 8
  %189 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %190 = call i32 %188(%struct.nvkm_device* %189, i32 1)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %135
  %194 = load i32, i32* @ENOMEM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %300

196:                                              ; preds = %135
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %197, %198
  store i32 %199, i32* %7, align 4
  %200 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %6, align 4
  %205 = sub nsw i32 %202, %204
  %206 = sext i32 %205 to i64
  %207 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %208 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %207, i32 0, i32 3
  %209 = call i32 @nvkm_vmm_new(%struct.nvkm_device* %200, i32 %201, i64 %206, i32* null, i32 0, %struct.lock_class_key* @nv50_bar_oneinit.bar1_lock, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_16__** %208)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %196
  %213 = load i32, i32* %9, align 4
  store i32 %213, i32* %2, align 4
  br label %300

214:                                              ; preds = %196
  %215 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %216 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %215, i32 0, i32 3
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* @NVKM_SUBDEV_BAR, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = call i32 @atomic_inc(i32* %221)
  %223 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %224 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %229 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %228, i32 0, i32 3
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 0
  store i32 %227, i32* %231, align 8
  %232 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %233 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %232, i32 0, i32 3
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %233, align 8
  %235 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %236 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %235, i32 0, i32 2
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @nvkm_vmm_join(%struct.TYPE_16__* %234, i32 %239)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %214
  %244 = load i32, i32* %9, align 4
  store i32 %244, i32* %2, align 4
  br label %300

245:                                              ; preds = %214
  %246 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %247 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %248 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %247, i32 0, i32 2
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %248, align 8
  %250 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %251 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %250, i32 0, i32 1
  %252 = call i32 @nvkm_gpuobj_new(%struct.nvkm_device* %246, i32 24, i32 16, i32 0, %struct.TYPE_15__* %249, %struct.TYPE_15__** %251)
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %245
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %2, align 4
  br label %300

257:                                              ; preds = %245
  %258 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %259 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %258, i32 0, i32 1
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %259, align 8
  %261 = call i32 @nvkm_kmap(%struct.TYPE_15__* %260)
  %262 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %263 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %262, i32 0, i32 1
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = call i32 @nvkm_wo32(%struct.TYPE_15__* %264, i32 0, i32 2143289344)
  %266 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %267 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %266, i32 0, i32 1
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = call i32 @lower_32_bits(i32 %269)
  %271 = call i32 @nvkm_wo32(%struct.TYPE_15__* %268, i32 4, i32 %270)
  %272 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %273 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %272, i32 0, i32 1
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @lower_32_bits(i32 %275)
  %277 = call i32 @nvkm_wo32(%struct.TYPE_15__* %274, i32 8, i32 %276)
  %278 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %279 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %278, i32 0, i32 1
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  %281 = load i32, i32* %7, align 4
  %282 = call i32 @upper_32_bits(i32 %281)
  %283 = shl i32 %282, 24
  %284 = load i32, i32* %6, align 4
  %285 = call i32 @upper_32_bits(i32 %284)
  %286 = or i32 %283, %285
  %287 = call i32 @nvkm_wo32(%struct.TYPE_15__* %280, i32 12, i32 %286)
  %288 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %289 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %288, i32 0, i32 1
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %289, align 8
  %291 = call i32 @nvkm_wo32(%struct.TYPE_15__* %290, i32 16, i32 0)
  %292 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %293 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %292, i32 0, i32 1
  %294 = load %struct.TYPE_15__*, %struct.TYPE_15__** %293, align 8
  %295 = call i32 @nvkm_wo32(%struct.TYPE_15__* %294, i32 20, i32 0)
  %296 = load %struct.nv50_bar*, %struct.nv50_bar** %4, align 8
  %297 = getelementptr inbounds %struct.nv50_bar, %struct.nv50_bar* %296, i32 0, i32 1
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %297, align 8
  %299 = call i32 @nvkm_done(%struct.TYPE_15__* %298)
  store i32 0, i32* %2, align 4
  br label %300

300:                                              ; preds = %257, %255, %243, %212, %193, %133, %121, %107, %81, %62, %50, %38, %23
  %301 = load i32, i32* %2, align 4
  ret i32 %301
}

declare dso_local %struct.nv50_bar* @nv50_bar(%struct.nvkm_bar*) #1

declare dso_local i32 @nvkm_gpuobj_new(%struct.nvkm_device*, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_15__**) #1

declare dso_local i32 @nvkm_vmm_new(%struct.nvkm_device*, i32, i64, i32*, i32, %struct.lock_class_key*, i8*, %struct.TYPE_16__**) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nvkm_vmm_boot(%struct.TYPE_16__*) #1

declare dso_local i32 @nvkm_vmm_join(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @nvkm_kmap(%struct.TYPE_15__*) #1

declare dso_local i32 @nvkm_wo32(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.TYPE_15__*) #1

declare dso_local i32 @nvkm_bar_bar2_init(%struct.nvkm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
