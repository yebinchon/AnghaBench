; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_drv.c_radeon_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_drv.c_radeon_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@radeon_si_support = common dso_local global i32 0, align 4
@RADEON_FAMILY_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"SI support disabled by module param\0A\00", align 1
@radeon_cik_support = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"CIK support disabled by module param\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"radeondrmfb\00", align 1
@kms_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @radeon_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %9 = icmp ne %struct.pci_device_id* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %62

13:                                               ; preds = %2
  %14 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i32, i32* @radeon_si_support, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @RADEON_FAMILY_MASK, align 8
  %22 = and i64 %20, %21
  switch i64 %22, label %29 [
    i64 129, label %23
    i64 130, label %23
    i64 128, label %23
    i64 131, label %23
    i64 136, label %23
  ]

23:                                               ; preds = %19, %19, %19, %19, %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @dev_info(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %62

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %13
  %31 = load i32, i32* @radeon_cik_support, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @RADEON_FAMILY_MASK, align 8
  %36 = and i64 %34, %35
  switch i64 %36, label %43 [
    i64 133, label %37
    i64 137, label %37
    i64 135, label %37
    i64 134, label %37
    i64 132, label %37
  ]

37:                                               ; preds = %33, %33, %33, %33, %33
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %62

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i64 @vga_switcheroo_client_probe_defer(%struct.pci_dev* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev* %52, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %62

58:                                               ; preds = %51
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %61 = call i32 @drm_get_pci_dev(%struct.pci_dev* %59, %struct.pci_device_id* %60, i32* @kms_driver)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %56, %48, %37, %23, %10
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @vga_switcheroo_client_probe_defer(%struct.pci_dev*) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_pci_framebuffers(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @drm_get_pci_dev(%struct.pci_dev*, %struct.pci_device_id*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
