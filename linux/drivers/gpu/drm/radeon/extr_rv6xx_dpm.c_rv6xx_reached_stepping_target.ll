; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_reached_stepping_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_reached_stepping_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv6xx_sclk_stepping = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping*, i32)* @rv6xx_reached_stepping_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_reached_stepping_target(%struct.radeon_device* %0, %struct.rv6xx_sclk_stepping* %1, %struct.rv6xx_sclk_stepping* %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.rv6xx_sclk_stepping*, align 8
  %7 = alloca %struct.rv6xx_sclk_stepping*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.rv6xx_sclk_stepping* %1, %struct.rv6xx_sclk_stepping** %6, align 8
  store %struct.rv6xx_sclk_stepping* %2, %struct.rv6xx_sclk_stepping** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %13 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %16 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %32, label %19

19:                                               ; preds = %11, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %6, align 8
  %24 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.rv6xx_sclk_stepping*, %struct.rv6xx_sclk_stepping** %7, align 8
  %27 = getelementptr inbounds %struct.rv6xx_sclk_stepping, %struct.rv6xx_sclk_stepping* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i1 [ false, %19 ], [ %29, %22 ]
  br label %32

32:                                               ; preds = %30, %11
  %33 = phi i1 [ true, %11 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
