; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_pbn_from_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_pbn_from_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.fixed31_32 = type { i32 }

@PEAK_FACTOR_X1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*)* @get_pbn_from_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pbn_from_timing(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.fixed31_32, align 4
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fixed31_32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @get_color_depth(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @dc_bandwidth_in_kbps_from_timing(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @PEAK_FACTOR_X1000, align 4
  %21 = mul nsw i32 64, %20
  store i32 %21, i32* %6, align 4
  store i32 432000000, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dc_fixpt_from_fraction(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = bitcast %struct.fixed31_32* %2 to i8*
  %30 = bitcast %struct.fixed31_32* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = getelementptr inbounds %struct.fixed31_32, %struct.fixed31_32* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  ret i32 %32
}

declare dso_local i32 @get_color_depth(i32) #1

declare dso_local i32 @dc_bandwidth_in_kbps_from_timing(i32*) #1

declare dso_local i32 @dc_fixpt_from_fraction(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
