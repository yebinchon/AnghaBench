; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_backend_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_tt = type { i64, i32, i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.radeon_ttm_tt = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@RADEON_GART_PAGE_VALID = common dso_local global i32 0, align 4
@RADEON_GART_PAGE_READ = common dso_local global i32 0, align 4
@RADEON_GART_PAGE_WRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"nothing to bind %lu pages for mreg %p back %p!\0A\00", align 1
@tt_cached = common dso_local global i64 0, align 8
@RADEON_GART_PAGE_SNOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to bind %lu pages at 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*, %struct.ttm_mem_reg*)* @radeon_ttm_backend_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_backend_bind(%struct.ttm_tt* %0, %struct.ttm_mem_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_tt*, align 8
  %5 = alloca %struct.ttm_mem_reg*, align 8
  %6 = alloca %struct.radeon_ttm_tt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_tt* %0, %struct.ttm_tt** %4, align 8
  store %struct.ttm_mem_reg* %1, %struct.ttm_mem_reg** %5, align 8
  %9 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %10 = bitcast %struct.ttm_tt* %9 to i8*
  %11 = bitcast i8* %10 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %11, %struct.radeon_ttm_tt** %6, align 8
  %12 = load i32, i32* @RADEON_GART_PAGE_VALID, align 4
  %13 = load i32, i32* @RADEON_GART_PAGE_READ, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @RADEON_GART_PAGE_WRITE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %18 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %23 = call i32 @radeon_ttm_tt_pin_userptr(%struct.ttm_tt* %22)
  %24 = load i32, i32* @RADEON_GART_PAGE_WRITE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %30 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %28
  %42 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %43 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %5, align 8
  %46 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %44, %struct.ttm_mem_reg* %45, %struct.ttm_tt* %46)
  br label %48

48:                                               ; preds = %41, %28
  %49 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %50 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @tt_cached, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @RADEON_GART_PAGE_SNOOP, align 4
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %69 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %72 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @radeon_gart_bind(i32 %61, i64 %64, i32 %67, i32 %70, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %58
  %80 = load %struct.ttm_tt*, %struct.ttm_tt** %4, align 8
  %81 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %6, align 8
  %84 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @radeon_ttm_tt_pin_userptr(%struct.ttm_tt*) #1

declare dso_local i32 @WARN(i32, i8*, i32, %struct.ttm_mem_reg*, %struct.ttm_tt*) #1

declare dso_local i32 @radeon_gart_bind(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
