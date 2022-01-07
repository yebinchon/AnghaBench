; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { %struct.TYPE_14__*, i64, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i64, i64, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_25__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_24__, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32 }
%struct.nv50_head_atom = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_22__, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32*, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s acquire\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_wndw*, i32, %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)* @nv50_wndw_atomic_check_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_wndw_atomic_check_acquire(%struct.nv50_wndw* %0, i32 %1, %struct.nv50_wndw_atom* %2, %struct.nv50_wndw_atom* %3, %struct.nv50_head_atom* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_wndw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nv50_wndw_atom*, align 8
  %10 = alloca %struct.nv50_wndw_atom*, align 8
  %11 = alloca %struct.nv50_head_atom*, align 8
  %12 = alloca %struct.nouveau_framebuffer*, align 8
  %13 = alloca %struct.nouveau_drm*, align 8
  %14 = alloca i32, align 4
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nv50_wndw_atom* %2, %struct.nv50_wndw_atom** %9, align 8
  store %struct.nv50_wndw_atom* %3, %struct.nv50_wndw_atom** %10, align 8
  store %struct.nv50_head_atom* %4, %struct.nv50_head_atom** %11, align 8
  %15 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %18)
  store %struct.nouveau_framebuffer* %19, %struct.nouveau_framebuffer** %12, align 8
  %20 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nouveau_drm* @nouveau_drm(i32 %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %13, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %26 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %27 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %32 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %36 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %5
  %41 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %195

48:                                               ; preds = %45, %40, %5
  %49 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %50 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %54 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 8
  %56 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %57 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %61 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 7
  store i32 %59, i32* %62, align 4
  %63 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %64 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %63, i32 0, i32 1
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %69 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 6
  store i32 %67, i32* %70, align 8
  %71 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %72 = call i32 @nv50_wndw_atomic_check_acquire_rgb(%struct.nv50_wndw_atom* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %48
  %76 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %77 = call i32 @nv50_wndw_atomic_check_acquire_yuv(%struct.nv50_wndw_atom* %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %6, align 4
  br label %363

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %48
  %84 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %85 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %137

89:                                               ; preds = %83
  %90 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %91 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %94 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 192
  br i1 %99, label %100, label %110

100:                                              ; preds = %89
  %101 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %102 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %101, i32 0, i32 1
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 4
  %107 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %108 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %119

110:                                              ; preds = %89
  %111 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %112 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %111, i32 0, i32 1
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %117 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %100
  %120 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %121 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = sdiv i32 %125, 64
  %127 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %128 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  store i32 %126, i32* %131, align 4
  %132 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %133 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 0, i32* %136, align 4
  br label %160

137:                                              ; preds = %83
  %138 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %139 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %142 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  %144 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %145 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 0, i32* %148, align 4
  %149 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %12, align 8
  %150 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %156 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %137, %119
  %161 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %11, align 8
  %162 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %160
  %167 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %168 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 4
  store i32 1, i32* %169, align 8
  br label %174

170:                                              ; preds = %160
  %171 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %172 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %171, i32 0, i32 5
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 4
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %166
  %175 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %176 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 0, i32 1
  %182 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %183 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 5
  store i32 %181, i32* %184, align 4
  %185 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %186 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %185, i32 0, i32 0
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  %191 = zext i1 %190 to i32
  %192 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %193 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 3
  store i32 %191, i32* %194, align 4
  br label %195

195:                                              ; preds = %174, %45
  %196 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %197 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %260

202:                                              ; preds = %195
  %203 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %204 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = ashr i32 %206, 16
  %208 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %209 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %212 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 16
  %216 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %217 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  store i32 %215, i32* %218, align 4
  %219 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %220 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = ashr i32 %222, 16
  %224 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %225 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 2
  store i32 %223, i32* %226, align 8
  %227 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %228 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 16
  %232 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %233 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 3
  store i32 %231, i32* %234, align 4
  %235 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %236 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %240 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 11
  store i32 %238, i32* %241, align 4
  %242 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %243 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 9
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %247 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 10
  store i32 %245, i32* %248, align 8
  %249 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %250 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %249, i32 0, i32 4
  %251 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %252 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %251, i32 0, i32 4
  %253 = call i64 @memcmp(%struct.TYPE_16__* %250, %struct.TYPE_16__* %252, i32 56)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %202
  %256 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %257 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  br label %259

259:                                              ; preds = %255, %202
  br label %260

260:                                              ; preds = %259, %195
  %261 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %262 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %261, i32 0, i32 0
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %322

267:                                              ; preds = %260
  %268 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %269 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = sub nsw i64 255, %271
  %273 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %274 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 9
  store i64 %272, i64* %275, align 8
  %276 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %277 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = ashr i32 %279, 8
  %281 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %282 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 4
  store i32 %280, i32* %283, align 8
  %284 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %285 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  switch i32 %287, label %303 [
    i32 128, label %288
    i32 130, label %295
    i32 129, label %302
  ]

288:                                              ; preds = %267
  %289 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %290 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 5
  store i32 2, i32* %291, align 4
  %292 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %293 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 6
  store i32 7, i32* %294, align 8
  br label %310

295:                                              ; preds = %267
  %296 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %297 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 5
  store i32 5, i32* %298, align 4
  %299 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %300 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 6
  store i32 7, i32* %301, align 8
  br label %310

302:                                              ; preds = %267
  br label %303

303:                                              ; preds = %267, %302
  %304 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %305 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 5
  store i32 2, i32* %306, align 4
  %307 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %308 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 6
  store i32 4, i32* %309, align 8
  br label %310

310:                                              ; preds = %303, %295, %288
  %311 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %312 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %311, i32 0, i32 3
  %313 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %314 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %313, i32 0, i32 3
  %315 = call i64 @memcmp(%struct.TYPE_16__* %312, %struct.TYPE_16__* %314, i32 56)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %319 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  br label %321

321:                                              ; preds = %317, %310
  br label %322

322:                                              ; preds = %321, %260
  %323 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %324 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %353

327:                                              ; preds = %322
  %328 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %329 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %328, i32 0, i32 2
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %333 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 8
  store i32 %331, i32* %334, align 8
  %335 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %336 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %336, i32 0, i32 6
  %338 = load i32, i32* %337, align 8
  %339 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %340 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 7
  store i32 %338, i32* %341, align 4
  %342 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %343 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %342, i32 0, i32 1
  %344 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %345 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %344, i32 0, i32 1
  %346 = call i64 @memcmp(%struct.TYPE_16__* %343, %struct.TYPE_16__* %345, i32 56)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %327
  %349 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %350 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 2
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %348, %327
  br label %353

353:                                              ; preds = %352, %322
  %354 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %355 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %354, i32 0, i32 0
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 0
  %358 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*, %struct.nv50_head_atom*)** %357, align 8
  %359 = load %struct.nv50_wndw*, %struct.nv50_wndw** %7, align 8
  %360 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %10, align 8
  %361 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %11, align 8
  %362 = call i32 %358(%struct.nv50_wndw* %359, %struct.nv50_wndw_atom* %360, %struct.nv50_head_atom* %361)
  store i32 %362, i32* %6, align 4
  br label %363

363:                                              ; preds = %353, %80
  %364 = load i32, i32* %6, align 4
  ret i32 %364
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32) #1

declare dso_local i32 @nv50_wndw_atomic_check_acquire_rgb(%struct.nv50_wndw_atom*) #1

declare dso_local i32 @nv50_wndw_atomic_check_acquire_yuv(%struct.nv50_wndw_atom*) #1

declare dso_local i64 @memcmp(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
