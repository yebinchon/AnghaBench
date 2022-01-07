; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_mclk_frequency_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_mclk_frequency_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }

@CHIP_BARTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_get_mclk_frequency_ratio(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_BARTS, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 10000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 47500
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 15, i32* %7, align 4
  br label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %25, 10000
  %27 = sdiv i32 %26, 2500
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %23
  br label %29

29:                                               ; preds = %28, %19
  br label %44

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 65000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 135000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 15, i32* %7, align 4
  br label %42

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 60000
  %41 = sdiv i32 %40, 5000
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43, %29
  br label %77

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 10000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 47500
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 15, i32* %7, align 4
  br label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 10000
  %59 = sdiv i32 %58, 2500
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %55
  br label %61

61:                                               ; preds = %60, %51
  br label %76

62:                                               ; preds = %45
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %63, 40000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 115000
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 15, i32* %7, align 4
  br label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 40000
  %73 = sdiv i32 %72, 5000
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %69
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %44
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
