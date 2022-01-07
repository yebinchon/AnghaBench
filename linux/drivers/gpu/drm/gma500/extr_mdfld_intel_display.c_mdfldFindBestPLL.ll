; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfldFindBestPLL.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_intel_display.c_mdfldFindBestPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.mrst_clock_t = type { i64, i64, i64 }
%struct.mrst_limit_t = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, i32, i32, %struct.mrst_clock_t*)* @mdfldFindBestPLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdfldFindBestPLL(%struct.drm_crtc* %0, i32 %1, i32 %2, %struct.mrst_clock_t* %3) #0 {
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mrst_clock_t*, align 8
  %9 = alloca %struct.mrst_clock_t, align 8
  %10 = alloca %struct.mrst_limit_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mrst_clock_t* %3, %struct.mrst_clock_t** %8, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %14 = call %struct.mrst_limit_t* @mdfld_limit(%struct.drm_crtc* %13)
  store %struct.mrst_limit_t* %14, %struct.mrst_limit_t** %10, align 8
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.mrst_clock_t*, %struct.mrst_clock_t** %8, align 8
  %17 = call i32 @memset(%struct.mrst_clock_t* %16, i32 0, i32 24)
  %18 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** %10, align 8
  %19 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %68, %4
  %24 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** %10, align 8
  %27 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %25, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %23
  %32 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** %10, align 8
  %33 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 1
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %63, %31
  %38 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mrst_limit_t*, %struct.mrst_limit_t** %10, align 8
  %41 = getelementptr inbounds %struct.mrst_limit_t, %struct.mrst_limit_t* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %39, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @mdfld_clock(i32 %46, %struct.mrst_clock_t* %9)
  %48 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %49, %51
  %53 = call i32 @abs(i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load %struct.mrst_clock_t*, %struct.mrst_clock_t** %8, align 8
  %59 = bitcast %struct.mrst_clock_t* %58 to i8*
  %60 = bitcast %struct.mrst_clock_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %57, %45
  br label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %37

67:                                               ; preds = %37
  br label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.mrst_clock_t, %struct.mrst_clock_t* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %23

72:                                               ; preds = %23
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %73, %74
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local %struct.mrst_limit_t* @mdfld_limit(%struct.drm_crtc*) #1

declare dso_local i32 @memset(%struct.mrst_clock_t*, i32, i32) #1

declare dso_local i32 @mdfld_clock(i32, %struct.mrst_clock_t*) #1

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
