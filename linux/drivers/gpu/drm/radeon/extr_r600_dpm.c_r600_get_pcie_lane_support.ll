; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_get_pcie_lane_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_get_pcie_lane_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_get_pcie_lane_support(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %10 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %13
    i32 4, label %14
    i32 8, label %15
    i32 12, label %16
    i32 16, label %17
  ]

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %4, align 4
  br label %18

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  store i32 2, i32* %4, align 4
  br label %18

14:                                               ; preds = %3
  store i32 4, i32* %4, align 4
  br label %18

15:                                               ; preds = %3
  store i32 8, i32* %4, align 4
  br label %18

16:                                               ; preds = %3
  store i32 12, i32* %4, align 4
  br label %18

17:                                               ; preds = %3
  store i32 16, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %10
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
