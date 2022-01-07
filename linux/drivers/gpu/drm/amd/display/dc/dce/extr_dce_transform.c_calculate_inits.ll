; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_calculate_inits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_calculate_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }
%struct.scaler_data = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.scl_ratios_inits = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.fixed31_32 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.scaler_data*, %struct.scl_ratios_inits*)* @calculate_inits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_inits(%struct.dce_transform* %0, %struct.scaler_data* %1, %struct.scl_ratios_inits* %2) #0 {
  %4 = alloca %struct.dce_transform*, align 8
  %5 = alloca %struct.scaler_data*, align 8
  %6 = alloca %struct.scl_ratios_inits*, align 8
  %7 = alloca %struct.fixed31_32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  %9 = alloca %struct.fixed31_32, align 4
  %10 = alloca %struct.fixed31_32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %4, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %5, align 8
  store %struct.scl_ratios_inits* %2, %struct.scl_ratios_inits** %6, align 8
  %11 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %12 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dc_fixpt_u2d19(i32 %14)
  %16 = shl i32 %15, 5
  %17 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %18 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %20 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dc_fixpt_u2d19(i32 %22)
  %24 = shl i32 %23, 5
  %25 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %26 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %28 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %32 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @dc_fixpt_from_int(i64 %35)
  %37 = call i32 @dc_fixpt_add(i32 %30, i32 %36)
  %38 = call i32 @dc_fixpt_div_int(i32 %37, i32 2)
  %39 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.fixed31_32* %7 to i8*
  %41 = bitcast %struct.fixed31_32* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @dc_fixpt_floor(i32 %43)
  %45 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %46 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dc_fixpt_u0d19(i32 %49)
  %51 = shl i32 %50, 5
  %52 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %53 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %56 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.scaler_data*, %struct.scaler_data** %5, align 8
  %60 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = call i32 @dc_fixpt_from_int(i64 %63)
  %65 = call i32 @dc_fixpt_add(i32 %58, i32 %64)
  %66 = call i32 @dc_fixpt_div_int(i32 %65, i32 2)
  %67 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %10, i32 0, i32 0
  store i32 %66, i32* %67, align 4
  %68 = bitcast %struct.fixed31_32* %8 to i8*
  %69 = bitcast %struct.fixed31_32* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @dc_fixpt_floor(i32 %71)
  %73 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %74 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i8* %72, i8** %75, align 8
  %76 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dc_fixpt_u0d19(i32 %77)
  %79 = shl i32 %78, 5
  %80 = load %struct.scl_ratios_inits*, %struct.scl_ratios_inits** %6, align 8
  %81 = getelementptr inbounds %struct.scl_ratios_inits, %struct.scl_ratios_inits* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  ret void
}

declare dso_local i32 @dc_fixpt_u2d19(i32) #1

declare dso_local i32 @dc_fixpt_div_int(i32, i32) #1

declare dso_local i32 @dc_fixpt_add(i32, i32) #1

declare dso_local i32 @dc_fixpt_from_int(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @dc_fixpt_floor(i32) #1

declare dso_local i32 @dc_fixpt_u0d19(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
