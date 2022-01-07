; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_device_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"radeon: finishing device.\0A\00", align 1
@RADEON_IS_PX = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_device_fini(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = call i32 @radeon_bo_evict_vram(%struct.radeon_device* %6)
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call i32 @radeon_fini(%struct.radeon_device* %8)
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @pci_is_thunderbolt_attached(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vga_switcheroo_unregister_client(i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RADEON_IS_PX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vga_switcheroo_fini_domain_pm_ops(i32 %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @vga_client_register(i32 %35, i32* null, i32* null, i32* null)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %32
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @pci_iounmap(i32 %44, i32* %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @iounmap(i32* %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 3
  store i32* null, i32** %57, align 8
  %58 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_BONAIRE, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = call i32 @radeon_doorbell_fini(%struct.radeon_device* %64)
  br label %66

66:                                               ; preds = %63, %49
  ret void
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @radeon_bo_evict_vram(%struct.radeon_device*) #1

declare dso_local i32 @radeon_fini(%struct.radeon_device*) #1

declare dso_local i32 @pci_is_thunderbolt_attached(i32) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

declare dso_local i32 @vga_switcheroo_fini_domain_pm_ops(i32) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i32 @pci_iounmap(i32, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @radeon_doorbell_fini(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
