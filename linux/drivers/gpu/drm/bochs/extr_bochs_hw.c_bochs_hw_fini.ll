; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.bochs_device* }
%struct.bochs_device = type { i32, i64, i64, i64 }

@VBE_DISPI_IOPORT_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bochs_hw_fini(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.bochs_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 1
  %6 = load %struct.bochs_device*, %struct.bochs_device** %5, align 8
  store %struct.bochs_device* %6, %struct.bochs_device** %3, align 8
  %7 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %8 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %13 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @iounmap(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %18 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @VBE_DISPI_IOPORT_INDEX, align 4
  %23 = call i32 @release_region(i32 %22, i32 2)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %26 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %31 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @iounmap(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pci_release_regions(i32 %37)
  %39 = load %struct.bochs_device*, %struct.bochs_device** %3, align 8
  %40 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kfree(i32 %41)
  ret void
}

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
