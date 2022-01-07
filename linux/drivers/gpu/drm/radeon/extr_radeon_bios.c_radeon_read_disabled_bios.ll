; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_radeon_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_radeon_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64 }

@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_BARTS = common dso_local global i64 0, align 8
@CHIP_RV770 = common dso_local global i64 0, align 8
@CHIP_R600 = common dso_local global i64 0, align 8
@CHIP_RS600 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @radeon_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @RADEON_IS_IGP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @igp_read_bios_from_vram(%struct.radeon_device* %11)
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_BARTS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @ni_read_disabled_bios(%struct.radeon_device* %20)
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_RV770, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @r700_read_disabled_bios(%struct.radeon_device* %29)
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_R600, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = call i32 @r600_read_disabled_bios(%struct.radeon_device* %38)
  store i32 %39, i32* %2, align 4
  br label %52

40:                                               ; preds = %31
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CHIP_RS600, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = call i32 @avivo_read_disabled_bios(%struct.radeon_device* %47)
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = call i32 @legacy_read_disabled_bios(%struct.radeon_device* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %46, %37, %28, %19, %10
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @igp_read_bios_from_vram(%struct.radeon_device*) #1

declare dso_local i32 @ni_read_disabled_bios(%struct.radeon_device*) #1

declare dso_local i32 @r700_read_disabled_bios(%struct.radeon_device*) #1

declare dso_local i32 @r600_read_disabled_bios(%struct.radeon_device*) #1

declare dso_local i32 @avivo_read_disabled_bios(%struct.radeon_device*) #1

declare dso_local i32 @legacy_read_disabled_bios(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
