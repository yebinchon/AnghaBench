; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_copy_surface_update_to_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_copy_surface_update_to_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_plane_state = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64* }
%struct.dc_surface_update = type { i32*, i32*, i32*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }

@DC_PLANE_UPDATE_TIMES_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_plane_state*, %struct.dc_surface_update*)* @copy_surface_update_to_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_surface_update_to_plane(%struct.dc_plane_state* %0, %struct.dc_surface_update* %1) #0 {
  %3 = alloca %struct.dc_plane_state*, align 8
  %4 = alloca %struct.dc_surface_update*, align 8
  store %struct.dc_plane_state* %0, %struct.dc_plane_state** %3, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %4, align 8
  %5 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %6 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %5, i32 0, i32 9
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %67

9:                                                ; preds = %2
  %10 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %11 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %10, i32 0, i32 9
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %16 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %15, i32 0, i32 27
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %18 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %17, i32 0, i32 9
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %23 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %22, i32 0, i32 26
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %25 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %24, i32 0, i32 9
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %30 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %29, i32 0, i32 25
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %28, %32
  %34 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %35 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %34, i32 0, i32 25
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %39 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %38, i32 0, i32 25
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  store i64 %33, i64* %42, align 8
  %43 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %44 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %43, i32 0, i32 9
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %49 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %48, i32 0, i32 25
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  %51 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %52 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %51, i32 0, i32 25
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %57 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %56, i32 0, i32 25
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DC_PLANE_UPDATE_TIMES_MAX, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %9
  %63 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %64 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %63, i32 0, i32 25
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %62, %9
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %69 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %68, i32 0, i32 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = icmp ne %struct.TYPE_9__* %70, null
  br i1 %71, label %72, label %101

72:                                               ; preds = %67
  %73 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %74 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %73, i32 0, i32 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %79 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %78, i32 0, i32 24
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %81 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %80, i32 0, i32 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %86 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %85, i32 0, i32 23
  store i32 %84, i32* %86, align 8
  %87 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %88 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %87, i32 0, i32 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %93 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %92, i32 0, i32 22
  store i32 %91, i32* %93, align 4
  %94 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %95 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %94, i32 0, i32 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %100 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %99, i32 0, i32 21
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %72, %67
  %102 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %103 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %102, i32 0, i32 7
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = icmp ne %struct.TYPE_10__* %104, null
  br i1 %105, label %106, label %205

106:                                              ; preds = %101
  %107 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %108 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %107, i32 0, i32 7
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %113 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %112, i32 0, i32 20
  store i32 %111, i32* %113, align 4
  %114 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %115 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %114, i32 0, i32 7
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %120 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %119, i32 0, i32 19
  store i32 %118, i32* %120, align 8
  %121 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %122 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %121, i32 0, i32 7
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %127 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %126, i32 0, i32 18
  store i32 %125, i32* %127, align 4
  %128 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %129 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %128, i32 0, i32 7
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %134 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %133, i32 0, i32 17
  store i32 %132, i32* %134, align 8
  %135 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %136 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %135, i32 0, i32 7
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %141 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %140, i32 0, i32 16
  store i32 %139, i32* %141, align 4
  %142 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %143 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %142, i32 0, i32 7
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %148 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %147, i32 0, i32 15
  store i32 %146, i32* %148, align 8
  %149 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %150 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %149, i32 0, i32 7
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %155 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %154, i32 0, i32 14
  store i32 %153, i32* %155, align 4
  %156 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %157 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %156, i32 0, i32 7
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %162 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %161, i32 0, i32 13
  store i32 %160, i32* %162, align 8
  %163 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %164 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %163, i32 0, i32 7
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %169 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %168, i32 0, i32 12
  store i32 %167, i32* %169, align 4
  %170 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %171 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %170, i32 0, i32 7
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %176 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %175, i32 0, i32 11
  store i32 %174, i32* %176, align 8
  %177 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %178 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %177, i32 0, i32 7
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %183 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %182, i32 0, i32 10
  store i32 %181, i32* %183, align 4
  %184 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %185 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %184, i32 0, i32 7
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %190 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %189, i32 0, i32 9
  store i32 %188, i32* %190, align 8
  %191 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %192 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %191, i32 0, i32 7
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %197 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %196, i32 0, i32 8
  store i32 %195, i32* %197, align 4
  %198 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %199 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %198, i32 0, i32 7
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %204 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %203, i32 0, i32 7
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %106, %101
  %206 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %207 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %206, i32 0, i32 6
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = icmp ne %struct.TYPE_11__* %208, null
  br i1 %209, label %210, label %255

210:                                              ; preds = %205
  %211 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %212 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %211, i32 0, i32 6
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %215 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %214, i32 0, i32 6
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = icmp ne %struct.TYPE_11__* %213, %216
  br i1 %217, label %218, label %255

218:                                              ; preds = %210
  %219 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %220 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %219, i32 0, i32 6
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 3
  %223 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %224 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %223, i32 0, i32 6
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 3
  %227 = call i32 @memcpy(i32* %222, i32* %226, i32 4)
  %228 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %229 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %228, i32 0, i32 6
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %234 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %233, i32 0, i32 6
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 2
  store i32 %232, i32* %236, align 4
  %237 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %238 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %237, i32 0, i32 6
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %243 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %242, i32 0, i32 6
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 4
  %246 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %247 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %246, i32 0, i32 6
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %252 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %251, i32 0, i32 6
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i32 %250, i32* %254, align 4
  br label %255

255:                                              ; preds = %218, %210, %205
  %256 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %257 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %256, i32 0, i32 5
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %257, align 8
  %259 = icmp ne %struct.TYPE_12__* %258, null
  br i1 %259, label %260, label %305

260:                                              ; preds = %255
  %261 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %262 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %261, i32 0, i32 5
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %265 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %264, i32 0, i32 5
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = icmp ne %struct.TYPE_12__* %263, %266
  br i1 %267, label %268, label %305

268:                                              ; preds = %260
  %269 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %270 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %269, i32 0, i32 5
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %275 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %274, i32 0, i32 5
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  store i32 %273, i32* %277, align 4
  %278 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %279 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %278, i32 0, i32 5
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %284 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %283, i32 0, i32 5
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 2
  store i32 %282, i32* %286, align 4
  %287 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %288 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %287, i32 0, i32 5
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %293 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %292, i32 0, i32 5
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 1
  store i32 %291, i32* %295, align 4
  %296 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %297 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %296, i32 0, i32 5
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 0
  %300 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %301 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %300, i32 0, i32 5
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 0
  %304 = call i32 @memcpy(i32* %299, i32* %303, i32 4)
  br label %305

305:                                              ; preds = %268, %260, %255
  %306 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %307 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %317

310:                                              ; preds = %305
  %311 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %312 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %316 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %315, i32 0, i32 1
  store i32 %314, i32* %316, align 4
  br label %317

317:                                              ; preds = %310, %305
  %318 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %319 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load %struct.dc_surface_update*, %struct.dc_surface_update** %4, align 8
  %324 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.dc_plane_state*, %struct.dc_plane_state** %3, align 8
  %328 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 8
  br label %329

329:                                              ; preds = %322, %317
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
