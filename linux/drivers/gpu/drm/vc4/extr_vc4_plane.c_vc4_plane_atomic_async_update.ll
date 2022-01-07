; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_async_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_atomic_async_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.drm_plane_state* }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vc4_plane_state = type { i64, i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vc4_plane_atomic_async_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_plane_atomic_async_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vc4_plane_state*, align 8
  %6 = alloca %struct.vc4_plane_state*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %8 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %7, i32 0, i32 0
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %8, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 18
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @swap(i32 %11, i32 %14)
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 0
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %20, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 17
  store i32 %18, i32* %22, align 4
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %24 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 0
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %27, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 16
  store i32 %25, i32* %29, align 4
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %34, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 15
  store i32 %32, i32* %36, align 4
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 14
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 0
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %41, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 14
  store i32 %39, i32* %43, align 4
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %48 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %47, i32 0, i32 0
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %48, align 8
  %50 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %49, i32 0, i32 13
  store i32 %46, i32* %50, align 4
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %55 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %54, i32 0, i32 0
  %56 = load %struct.drm_plane_state*, %struct.drm_plane_state** %55, align 8
  %57 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %56, i32 0, i32 12
  store i32 %53, i32* %57, align 4
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %59 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %62 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %61, i32 0, i32 0
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %62, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 11
  store i32 %60, i32* %64, align 4
  %65 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %66 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %69 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %68, i32 0, i32 0
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %69, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 10
  store i32 %67, i32* %71, align 4
  %72 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %73 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %76 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %75, i32 0, i32 0
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %76, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 10
  store i32 %74, i32* %78, align 4
  %79 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %80 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %83 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %82, i32 0, i32 0
  %84 = load %struct.drm_plane_state*, %struct.drm_plane_state** %83, align 8
  %85 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %84, i32 0, i32 9
  store i32 %81, i32* %85, align 4
  %86 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %87 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %90 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %89, i32 0, i32 0
  %91 = load %struct.drm_plane_state*, %struct.drm_plane_state** %90, align 8
  %92 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %91, i32 0, i32 8
  store i32 %88, i32* %92, align 4
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %97 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %96, i32 0, i32 0
  %98 = load %struct.drm_plane_state*, %struct.drm_plane_state** %97, align 8
  %99 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %98, i32 0, i32 7
  store i32 %95, i32* %99, align 4
  %100 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %101 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %104 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %103, i32 0, i32 0
  %105 = load %struct.drm_plane_state*, %struct.drm_plane_state** %104, align 8
  %106 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %105, i32 0, i32 6
  store i32 %102, i32* %106, align 4
  %107 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %108 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %111 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %110, i32 0, i32 0
  %112 = load %struct.drm_plane_state*, %struct.drm_plane_state** %111, align 8
  %113 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %112, i32 0, i32 5
  store i32 %109, i32* %113, align 4
  %114 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %115 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %118 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %117, i32 0, i32 0
  %119 = load %struct.drm_plane_state*, %struct.drm_plane_state** %118, align 8
  %120 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %119, i32 0, i32 4
  store i32 %116, i32* %120, align 4
  %121 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %122 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %125 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %124, i32 0, i32 0
  %126 = load %struct.drm_plane_state*, %struct.drm_plane_state** %125, align 8
  %127 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %126, i32 0, i32 3
  store i32 %123, i32* %127, align 4
  %128 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %129 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %132 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %131, i32 0, i32 0
  %133 = load %struct.drm_plane_state*, %struct.drm_plane_state** %132, align 8
  %134 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %136 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %139 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %138, i32 0, i32 0
  %140 = load %struct.drm_plane_state*, %struct.drm_plane_state** %139, align 8
  %141 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %143 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %146 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %145, i32 0, i32 0
  %147 = load %struct.drm_plane_state*, %struct.drm_plane_state** %146, align 8
  %148 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 4
  %149 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %150 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %149)
  store %struct.vc4_plane_state* %150, %struct.vc4_plane_state** %6, align 8
  %151 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %152 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %151, i32 0, i32 0
  %153 = load %struct.drm_plane_state*, %struct.drm_plane_state** %152, align 8
  %154 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state* %153)
  store %struct.vc4_plane_state* %154, %struct.vc4_plane_state** %5, align 8
  %155 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %156 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %155, i32 0, i32 18
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %159 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %158, i32 0, i32 18
  store i32 %157, i32* %159, align 4
  %160 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %161 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %160, i32 0, i32 17
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %164 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %163, i32 0, i32 17
  store i32 %162, i32* %164, align 8
  %165 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %166 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %165, i32 0, i32 16
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %169 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %168, i32 0, i32 16
  store i32 %167, i32* %169, align 4
  %170 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %171 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %170, i32 0, i32 15
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %174 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %173, i32 0, i32 15
  store i32 %172, i32* %174, align 8
  %175 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %176 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %175, i32 0, i32 14
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %179 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %178, i32 0, i32 14
  store i32 %177, i32* %179, align 4
  %180 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %181 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %180, i32 0, i32 13
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %184 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %183, i32 0, i32 13
  store i32 %182, i32* %184, align 8
  %185 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %186 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %189 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @memcpy(i32 %187, i32 %190, i32 4)
  %192 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %193 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %192, i32 0, i32 11
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %196 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %195, i32 0, i32 11
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @memcpy(i32 %194, i32 %197, i32 4)
  %199 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %200 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %199, i32 0, i32 10
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %203 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @memcpy(i32 %201, i32 %204, i32 4)
  %206 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %207 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %206, i32 0, i32 9
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %210 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @memcpy(i32 %208, i32 %211, i32 4)
  %213 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %214 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %217 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 4
  %218 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %219 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %222 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %221, i32 0, i32 7
  store i32 %220, i32* %222, align 8
  %223 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %224 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %227 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @memcpy(i32 %225, i32 %228, i32 4)
  %230 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %231 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %234 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 8
  %235 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %236 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %235, i32 0, i32 4
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %239 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %244 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %243, i32 0, i32 4
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %247 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32 %242, i32* %249, align 4
  %250 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %251 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %254 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i32, i32* %252, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %259 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %258, i32 0, i32 4
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %262 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  store i32 %257, i32* %264, align 4
  %265 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %6, align 8
  %266 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %269 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %274 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %273, i32 0, i32 4
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %277 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  store i32 %272, i32* %279, align 4
  %280 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %281 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %284 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds i32, i32* %282, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %289 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %288, i32 0, i32 3
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %292 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = call i32 @writel(i32 %287, i32* %294)
  %296 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %297 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %296, i32 0, i32 4
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %300 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %305 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %308 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  %311 = call i32 @writel(i32 %303, i32* %310)
  %312 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %313 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %316 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds i32, i32* %314, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %321 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %320, i32 0, i32 3
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %324 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = call i32 @writel(i32 %319, i32* %326)
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
