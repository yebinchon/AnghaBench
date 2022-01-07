; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_get_pcie_gen_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_get_pcie_gen_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_PCIE_SPEED_80 = common dso_local global i32 0, align 4
@RADEON_PCIE_SPEED_50 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_get_pcie_gen_support(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  switch i32 %10, label %14 [
    i32 130, label %11
    i32 129, label %12
    i32 128, label %13
  ]

11:                                               ; preds = %4
  store i32 130, i32* %5, align 4
  br label %33

12:                                               ; preds = %4
  store i32 129, i32* %5, align 4
  br label %33

13:                                               ; preds = %4
  store i32 128, i32* %5, align 4
  br label %33

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @RADEON_PCIE_SPEED_80, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 128, i32* %5, align 4
  br label %33

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @RADEON_PCIE_SPEED_50, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 129, i32* %5, align 4
  br label %33

32:                                               ; preds = %28, %23
  store i32 130, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31, %22, %13, %12, %11
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
