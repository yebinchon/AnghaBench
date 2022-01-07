; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atpx_handler.c_amdgpu_atpx_get_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_atpx_handler.c_amdgpu_atpx_get_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_px_quirk = type { i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i64, i64, i64, i64 }

@amdgpu_px_quirk_list = common dso_local global %struct.amdgpu_px_quirk* null, align 8
@amdgpu_atpx_priv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @amdgpu_atpx_get_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_atpx_get_quirks(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.amdgpu_px_quirk*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** @amdgpu_px_quirk_list, align 8
  store %struct.amdgpu_px_quirk* %4, %struct.amdgpu_px_quirk** %3, align 8
  br label %5

5:                                                ; preds = %53, %1
  %6 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %7 = icmp ne %struct.amdgpu_px_quirk* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %56

15:                                               ; preds = %13
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %15
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %23
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amdgpu_atpx_priv, i32 0, i32 0), align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amdgpu_atpx_priv, i32 0, i32 0), align 4
  br label %56

53:                                               ; preds = %39, %31, %23, %15
  %54 = load %struct.amdgpu_px_quirk*, %struct.amdgpu_px_quirk** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_px_quirk, %struct.amdgpu_px_quirk* %54, i32 1
  store %struct.amdgpu_px_quirk* %55, %struct.amdgpu_px_quirk** %3, align 8
  br label %5

56:                                               ; preds = %47, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
