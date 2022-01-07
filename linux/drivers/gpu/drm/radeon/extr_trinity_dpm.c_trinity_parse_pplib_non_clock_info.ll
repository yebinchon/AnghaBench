; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_pplib_non_clock_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_parse_pplib_non_clock_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.radeon_ps*, %struct.radeon_ps* }
%struct.radeon_ps = type { i32, i8*, i8*, i8*, i8* }
%struct._ATOM_PPLIB_NONCLOCK_INFO = type { i32, i32, i32, i32, i32 }
%struct.trinity_ps = type { i32 }

@ATOM_PPLIB_NONCLOCKINFO_VER1 = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_BOOT = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct._ATOM_PPLIB_NONCLOCK_INFO*, i64)* @trinity_parse_pplib_non_clock_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_parse_pplib_non_clock_info(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, i64 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct._ATOM_PPLIB_NONCLOCK_INFO*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.trinity_ps*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct._ATOM_PPLIB_NONCLOCK_INFO* %2, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %11 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %10)
  store %struct.trinity_ps* %11, %struct.trinity_ps** %9, align 8
  %12 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %13 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %19 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le16_to_cpu(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %26 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le16_to_cpu(i32 %27)
  %29 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* @ATOM_PPLIB_NONCLOCKINFO_VER1, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %4
  %35 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %36 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @le32_to_cpu(i32 %37)
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %40 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct._ATOM_PPLIB_NONCLOCK_INFO*, %struct._ATOM_PPLIB_NONCLOCK_INFO** %7, align 8
  %42 = getelementptr inbounds %struct._ATOM_PPLIB_NONCLOCK_INFO, %struct._ATOM_PPLIB_NONCLOCK_INFO* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %46 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  br label %52

47:                                               ; preds = %4
  %48 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %49 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %48, i32 0, i32 2
  store i8* null, i8** %49, align 8
  %50 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %51 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %50, i32 0, i32 1
  store i8* null, i8** %51, align 8
  br label %52

52:                                               ; preds = %47, %34
  %53 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %54 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_BOOT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store %struct.radeon_ps* %60, %struct.radeon_ps** %64, align 8
  %65 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %66 = load %struct.trinity_ps*, %struct.trinity_ps** %9, align 8
  %67 = call i32 @trinity_patch_boot_state(%struct.radeon_device* %65, %struct.trinity_ps* %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %70 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %77 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store %struct.radeon_ps* %76, %struct.radeon_ps** %80, align 8
  br label %81

81:                                               ; preds = %75, %68
  ret void
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @trinity_patch_boot_state(%struct.radeon_device*, %struct.trinity_ps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
