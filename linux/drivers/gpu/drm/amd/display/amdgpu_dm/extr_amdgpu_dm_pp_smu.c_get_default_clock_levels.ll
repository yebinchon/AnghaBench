; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_get_default_clock_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_pp_smu.c_get_default_clock_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pp_clock_levels = type { i32, i32 }

@__const.get_default_clock_levels.disp_clks_in_khz = private unnamed_addr constant [6 x i32] [i32 300000, i32 400000, i32 496560, i32 626090, i32 685720, i32 757900], align 16
@__const.get_default_clock_levels.sclks_in_khz = private unnamed_addr constant [6 x i32] [i32 300000, i32 360000, i32 423530, i32 514290, i32 626090, i32 720000], align 16
@__const.get_default_clock_levels.mclks_in_khz = private unnamed_addr constant [2 x i32] [i32 333000, i32 800000], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dm_pp_clock_levels*)* @get_default_clock_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_default_clock_levels(i32 %0, %struct.dm_pp_clock_levels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_pp_clock_levels*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca [6 x i32], align 16
  %7 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  store %struct.dm_pp_clock_levels* %1, %struct.dm_pp_clock_levels** %4, align 8
  %8 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @__const.get_default_clock_levels.disp_clks_in_khz to i8*), i64 24, i1 false)
  %9 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x i32]* @__const.get_default_clock_levels.sclks_in_khz to i8*), i64 24, i1 false)
  %10 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([2 x i32]* @__const.get_default_clock_levels.mclks_in_khz to i8*), i64 8, i1 false)
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %36 [
    i32 130, label %12
    i32 129, label %20
    i32 128, label %28
  ]

12:                                               ; preds = %2
  %13 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %14 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %13, i32 0, i32 0
  store i32 6, i32* %14, align 4
  %15 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %16 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %19 = call i32 @memmove(i32 %17, i32* %18, i32 24)
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %22 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %21, i32 0, i32 0
  store i32 6, i32* %22, align 4
  %23 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %24 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %27 = call i32 @memmove(i32 %25, i32* %26, i32 24)
  br label %39

28:                                               ; preds = %2
  %29 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %30 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  %31 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %32 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = call i32 @memmove(i32 %33, i32* %34, i32 8)
  br label %39

36:                                               ; preds = %2
  %37 = load %struct.dm_pp_clock_levels*, %struct.dm_pp_clock_levels** %4, align 8
  %38 = getelementptr inbounds %struct.dm_pp_clock_levels, %struct.dm_pp_clock_levels* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %28, %20, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memmove(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
