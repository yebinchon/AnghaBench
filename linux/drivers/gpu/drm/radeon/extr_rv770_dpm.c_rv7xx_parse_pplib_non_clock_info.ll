; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv7xx_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32, i64, i64, i8*, i8* }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32, i32, i32, i32 }

@ATOM_PPLIB_NONCLOCKINFO_VER1 = common dso_local global i64 0, align 8
@RV770_DEFAULT_VCLK_FREQ = common dso_local global i64 0, align 8
@RV770_DEFAULT_DCLK_FREQ = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i64)* @rv7xx_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv7xx_parse_pplib_non_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, i64 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %10 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @le32_to_cpu(i32 %11)
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %14 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %16 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le16_to_cpu(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %21 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %23 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le16_to_cpu(i32 %24)
  %26 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* @ATOM_PPLIB_NONCLOCKINFO_VER1, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %4
  %32 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %33 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %38 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %40 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %45 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  br label %51

46:                                               ; preds = %4
  %47 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %50 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %31
  %52 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %53 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @r600_is_uvd_state(i32 %54, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %67 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %60
  %71 = load i64, i64* @RV770_DEFAULT_VCLK_FREQ, align 8
  %72 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %73 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* @RV770_DEFAULT_DCLK_FREQ, align 8
  %75 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %76 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %80 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %87 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store %struct.radeon_ps* %86, %struct.radeon_ps** %90, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %93 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store %struct.radeon_ps* %99, %struct.radeon_ps** %103, align 8
  br label %104

104:                                              ; preds = %98, %91
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @r600_is_uvd_state(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
