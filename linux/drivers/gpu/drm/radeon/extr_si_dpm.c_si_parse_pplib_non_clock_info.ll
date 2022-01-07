; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32, i8*, i8*, i8*, i8* }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32, i32, i32, i32 }

@ATOM_PPLIB_NONCLOCKINFO_VER1 = common dso_local global i64 0, align 8
@RV770_DEFAULT_VCLK_FREQ = common dso_local global i8* null, align 8
@RV770_DEFAULT_DCLK_FREQ = common dso_local global i8* null, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i64)* @si_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_parse_pplib_non_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, i64 %3) #0 {
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
  br i1 %30, label %31, label %44

31:                                               ; preds = %4
  %32 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %33 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le32_to_cpu(i32 %34)
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %37 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %39 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le32_to_cpu(i32 %40)
  %42 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %43 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %66

44:                                               ; preds = %4
  %45 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @r600_is_uvd_state(i32 %47, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i8*, i8** @RV770_DEFAULT_VCLK_FREQ, align 8
  %55 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %56 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @RV770_DEFAULT_DCLK_FREQ, align 8
  %58 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %59 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %65

60:                                               ; preds = %44
  %61 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %62 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %61, i32 0, i32 2
  store i8* null, i8** %62, align 8
  %63 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %64 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %63, i32 0, i32 1
  store i8* null, i8** %64, align 8
  br label %65

65:                                               ; preds = %60, %53
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %68 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store %struct.radeon_ps* %74, %struct.radeon_ps** %78, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %81 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %88 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store %struct.radeon_ps* %87, %struct.radeon_ps** %91, align 8
  br label %92

92:                                               ; preds = %86, %79
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
