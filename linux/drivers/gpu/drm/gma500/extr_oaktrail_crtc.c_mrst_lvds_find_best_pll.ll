; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_lvds_find_best_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_oaktrail_crtc.c_mrst_lvds_find_best_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gma_limit_t = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.drm_crtc = type { i32 }
%struct.gma_clock_t = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gma_limit_t*, %struct.drm_crtc*, i32, i32, %struct.gma_clock_t*)* @mrst_lvds_find_best_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrst_lvds_find_best_pll(%struct.gma_limit_t* %0, %struct.drm_crtc* %1, i32 %2, i32 %3, %struct.gma_clock_t* %4) #0 {
  %6 = alloca %struct.gma_limit_t*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gma_clock_t*, align 8
  %11 = alloca %struct.gma_clock_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gma_limit_t* %0, %struct.gma_limit_t** %6, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.gma_clock_t* %4, %struct.gma_clock_t** %10, align 8
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %16 = call i32 @memset(%struct.gma_clock_t* %15, i32 0, i32 24)
  %17 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %18 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %67, %5
  %23 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %26 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %24, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %22
  %31 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %32 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %62, %30
  %37 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gma_limit_t*, %struct.gma_limit_t** %6, align 8
  %40 = getelementptr inbounds %struct.gma_limit_t, %struct.gma_limit_t* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %38, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mrst_lvds_clock(i32 %45, %struct.gma_clock_t* %11)
  %47 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = call i32 @abs(i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.gma_clock_t*, %struct.gma_clock_t** %10, align 8
  %58 = bitcast %struct.gma_clock_t* %57 to i8*
  %59 = bitcast %struct.gma_clock_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 24, i1 false)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %36

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.gma_clock_t, %struct.gma_clock_t* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %22

71:                                               ; preds = %22
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  ret i32 %75
}

declare dso_local i32 @memset(%struct.gma_clock_t*, i32, i32) #1

declare dso_local i32 @mrst_lvds_clock(i32, %struct.gma_clock_t*) #1

declare dso_local i32 @abs(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
