; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_switcheroo_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_switcheroo_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.drm_device = type { i8* }

@VGA_SWITCHEROO_OFF = common dso_local global i32 0, align 4
@VGA_SWITCHEROO_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"VGA switcheroo: switched nouveau on\0A\00", align 1
@DRM_SWITCH_POWER_CHANGING = common dso_local global i8* null, align 8
@DRM_SWITCH_POWER_ON = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"VGA switcheroo: switched nouveau off\0A\00", align 1
@DRM_SWITCH_POWER_OFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32)* @nouveau_switcheroo_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_switcheroo_set_state(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.drm_device* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.drm_device* %7, %struct.drm_device** %5, align 8
  %8 = call i64 (...) @nouveau_is_optimus()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i64 (...) @nouveau_is_v1_dsm()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @VGA_SWITCHEROO_OFF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %45

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @VGA_SWITCHEROO_ON, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @nouveau_pmops_resume(i32* %28)
  %30 = load i8*, i8** @DRM_SWITCH_POWER_ON, align 8
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %45

33:                                               ; preds = %18
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i8*, i8** @DRM_SWITCH_POWER_CHANGING, align 8
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = call i32 (...) @nouveau_switcheroo_optimus_dsm()
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @nouveau_pmops_suspend(i32* %40)
  %42 = load i8*, i8** @DRM_SWITCH_POWER_OFF, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %17, %33, %22
  ret void
}

declare dso_local %struct.drm_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @nouveau_is_optimus(...) #1

declare dso_local i64 @nouveau_is_v1_dsm(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nouveau_pmops_resume(i32*) #1

declare dso_local i32 @nouveau_switcheroo_optimus_dsm(...) #1

declare dso_local i32 @nouveau_pmops_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
