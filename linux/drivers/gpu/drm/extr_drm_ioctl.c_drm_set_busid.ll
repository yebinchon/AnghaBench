; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_set_busid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_set_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.drm_file = type { %struct.drm_master* }
%struct.drm_master = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*)* @drm_set_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_set_busid(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_master*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_file* %1, %struct.drm_file** %5, align 8
  %8 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %9 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %8, i32 0, i32 0
  %10 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  store %struct.drm_master* %10, %struct.drm_master** %6, align 8
  %11 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %12 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %18 = call i32 @drm_unset_busid(%struct.drm_device* %16, %struct.drm_master* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @dev_is_pci(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %33 = call i32 @drm_pci_set_busid(%struct.drm_device* %31, %struct.drm_master* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %39 = call i32 @drm_unset_busid(%struct.drm_device* %37, %struct.drm_master* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %30
  br label %69

42:                                               ; preds = %24, %19
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32* @kstrdup(i32 %52, i32 %53)
  %55 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %56 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %58 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strlen(i32 %64)
  %66 = load %struct.drm_master*, %struct.drm_master** %6, align 8
  %67 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %61, %42
  br label %69

69:                                               ; preds = %68, %41
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @drm_unset_busid(%struct.drm_device*, %struct.drm_master*) #1

declare dso_local i64 @dev_is_pci(i64) #1

declare dso_local i32 @drm_pci_set_busid(%struct.drm_device*, %struct.drm_master*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32* @kstrdup(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
