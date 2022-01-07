; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_flush_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_flush_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.nv50_wndw*, i32*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* }
%struct.TYPE_11__ = type { i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* }
%struct.nv50_wndw_atom = type { %struct.TYPE_12__, %struct.TYPE_10__, i64, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }

@NV50_DISP_INTERLOCK_CORE = common dso_local global i64 0, align 8
@NV50_DISP_INTERLOCK_WIMM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_wndw_flush_set(%struct.nv50_wndw* %0, i32* %1, %struct.nv50_wndw_atom* %2) #0 {
  %4 = alloca %struct.nv50_wndw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.nv50_wndw_atom* %2, %struct.nv50_wndw_atom** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i64, i64* @NV50_DISP_INTERLOCK_CORE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %17 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %27 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 6
  %30 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %29, align 8
  %31 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %32 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %33 = call i32 %30(%struct.nv50_wndw* %31, %struct.nv50_wndw_atom* %32)
  br label %34

34:                                               ; preds = %25, %19
  %35 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %36 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 5
  %45 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %44, align 8
  %46 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %47 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %48 = call i32 %45(%struct.nv50_wndw* %46, %struct.nv50_wndw_atom* %47)
  br label %49

49:                                               ; preds = %40, %34
  %50 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %51 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %57 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %56, i32 0, i32 2
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %59, align 8
  %61 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %62 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %63 = call i32 %60(%struct.nv50_wndw* %61, %struct.nv50_wndw_atom* %62)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %66 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %105

70:                                               ; preds = %64
  %71 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %72 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %70
  %76 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %76, i32 0, i32 3
  %78 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %79 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %84 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %87 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @nv50_lut_load(i32* %77, i32 %82, i64 %85, i32 %90)
  %92 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %93 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 8
  br label %96

96:                                               ; preds = %75, %70
  %97 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %98 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %97, i32 0, i32 2
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %100, align 8
  %102 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %103 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %104 = call i32 %101(%struct.nv50_wndw* %102, %struct.nv50_wndw_atom* %103)
  br label %105

105:                                              ; preds = %96, %64
  %106 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %107 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %113 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %112, i32 0, i32 2
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %115, align 8
  %117 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %118 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %119 = call i32 %116(%struct.nv50_wndw* %117, %struct.nv50_wndw_atom* %118)
  br label %120

120:                                              ; preds = %111, %105
  %121 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %122 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %120
  %127 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %128 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %130, align 8
  %132 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %133 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %134 = call i32 %131(%struct.nv50_wndw* %132, %struct.nv50_wndw_atom* %133)
  br label %135

135:                                              ; preds = %126, %120
  %136 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %137 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %143 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %142, i32 0, i32 2
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %145, align 8
  %147 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %148 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %149 = call i32 %146(%struct.nv50_wndw* %147, %struct.nv50_wndw_atom* %148)
  br label %150

150:                                              ; preds = %141, %135
  %151 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %152 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %204

156:                                              ; preds = %150
  %157 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %158 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  %160 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %161 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %156
  %166 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %167 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %5, align 8
  %171 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %172 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %169
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %165, %156
  %179 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %180 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %5, align 8
  %184 = load i64, i64* @NV50_DISP_INTERLOCK_WIMM, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %182
  store i32 %187, i32* %185, align 4
  %188 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %189 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %188, i32 0, i32 1
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)** %191, align 8
  %193 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %194 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %195 = call i32 %192(%struct.nv50_wndw* %193, %struct.nv50_wndw_atom* %194)
  %196 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %197 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %196, i32 0, i32 1
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i32 (%struct.nv50_wndw*, i32*)*, i32 (%struct.nv50_wndw*, i32*)** %199, align 8
  %201 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 %200(%struct.nv50_wndw* %201, i32* %202)
  br label %217

204:                                              ; preds = %150
  %205 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %206 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = load %struct.nv50_wndw*, %struct.nv50_wndw** %4, align 8
  %211 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %208
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %204, %178
  ret void
}

declare dso_local i32 @nv50_lut_load(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
