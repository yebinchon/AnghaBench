; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_vga_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_vga.c_nouveau_vga_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.drm_device* }
%struct.drm_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nouveau_vga_fini(%struct.nouveau_drm* %0) #0 {
  %2 = alloca %struct.nouveau_drm*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %2, align 8
  %5 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %6 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %5, i32 0, i32 0
  %7 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = call i32 (...) @nouveau_pmops_runtime()
  store i32 %8, i32* %4, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vga_client_register(i32 %17, i32* null, i32* null, i32* null)
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @pci_is_thunderbolt_attached(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %45

25:                                               ; preds = %14
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @vga_switcheroo_unregister_client(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = call i64 (...) @nouveau_is_v1_dsm()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = call i32 (...) @nouveau_is_optimus()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %2, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 0
  %41 = load %struct.drm_device*, %struct.drm_device** %40, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vga_switcheroo_fini_domain_pm_ops(i32 %43)
  br label %45

45:                                               ; preds = %13, %24, %38, %35, %32, %25
  ret void
}

declare dso_local i32 @nouveau_pmops_runtime(...) #1

declare dso_local i32 @vga_client_register(i32, i32*, i32*, i32*) #1

declare dso_local i64 @pci_is_thunderbolt_attached(i32) #1

declare dso_local i32 @vga_switcheroo_unregister_client(i32) #1

declare dso_local i64 @nouveau_is_v1_dsm(...) #1

declare dso_local i32 @nouveau_is_optimus(...) #1

declare dso_local i32 @vga_switcheroo_fini_domain_pm_ops(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
