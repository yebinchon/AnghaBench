; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_is_addr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_gr2d.c_gr2d_is_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gr2d = type { i32 }

@GR2D_NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @gr2d_is_addr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr2d_is_addr_reg(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gr2d*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.gr2d* @dev_get_drvdata(%struct.device* %9)
  store %struct.gr2d* %10, %struct.gr2d** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %31 [
    i32 128, label %12
    i32 130, label %17
    i32 129, label %17
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %32

16:                                               ; preds = %12
  br label %31

17:                                               ; preds = %3, %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GR2D_NUM_REGS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.gr2d*, %struct.gr2d** %8, align 8
  %25 = getelementptr inbounds %struct.gr2d, %struct.gr2d* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %32

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %3, %30, %21, %16
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %29, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.gr2d* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
