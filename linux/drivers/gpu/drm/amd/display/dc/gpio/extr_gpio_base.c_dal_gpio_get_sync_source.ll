; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_sync_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_base.c_dal_gpio_get_sync_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32, i32 }

@SYNC_SOURCE_IO_GENERIC_A = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_GENERIC_B = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_GENERIC_C = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_GENERIC_D = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_GENERIC_E = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_GENERIC_F = common dso_local global i32 0, align 4
@SYNC_SOURCE_NONE = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_HSYNC_A = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_VSYNC_A = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_HSYNC_B = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_VSYNC_B = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_HPD1 = common dso_local global i32 0, align 4
@SYNC_SOURCE_IO_HPD2 = common dso_local global i32 0, align 4
@SYNC_SOURCE_GSL_IO_GENLOCK_CLOCK = common dso_local global i32 0, align 4
@SYNC_SOURCE_GSL_IO_GENLOCK_VSYNC = common dso_local global i32 0, align 4
@SYNC_SOURCE_GSL_IO_SWAPLOCK_A = common dso_local global i32 0, align 4
@SYNC_SOURCE_GSL_IO_SWAPLOCK_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_gpio_get_sync_source(%struct.gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio*, align 8
  store %struct.gpio* %0, %struct.gpio** %3, align 8
  %4 = load %struct.gpio*, %struct.gpio** %3, align 8
  %5 = getelementptr inbounds %struct.gpio, %struct.gpio* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %63 [
    i32 135, label %7
    i32 132, label %25
    i32 133, label %39
    i32 134, label %49
  ]

7:                                                ; preds = %1
  %8 = load %struct.gpio*, %struct.gpio** %3, align 8
  %9 = getelementptr inbounds %struct.gpio, %struct.gpio* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 147, label %11
    i32 146, label %13
    i32 145, label %15
    i32 144, label %17
    i32 143, label %19
    i32 142, label %21
  ]

11:                                               ; preds = %7
  %12 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_A, align 4
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %7
  %14 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_B, align 4
  store i32 %14, i32* %2, align 4
  br label %65

15:                                               ; preds = %7
  %16 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_C, align 4
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %7
  %18 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_D, align 4
  store i32 %18, i32* %2, align 4
  br label %65

19:                                               ; preds = %7
  %20 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_E, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %7
  %22 = load i32, i32* @SYNC_SOURCE_IO_GENERIC_F, align 4
  store i32 %22, i32* %2, align 4
  br label %65

23:                                               ; preds = %7
  %24 = load i32, i32* @SYNC_SOURCE_NONE, align 4
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %1
  %26 = load %struct.gpio*, %struct.gpio** %3, align 8
  %27 = getelementptr inbounds %struct.gpio, %struct.gpio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %37 [
    i32 131, label %29
    i32 129, label %31
    i32 130, label %33
    i32 128, label %35
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @SYNC_SOURCE_IO_HSYNC_A, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %25
  %32 = load i32, i32* @SYNC_SOURCE_IO_VSYNC_A, align 4
  store i32 %32, i32* %2, align 4
  br label %65

33:                                               ; preds = %25
  %34 = load i32, i32* @SYNC_SOURCE_IO_HSYNC_B, align 4
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %25
  %36 = load i32, i32* @SYNC_SOURCE_IO_VSYNC_B, align 4
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %25
  %38 = load i32, i32* @SYNC_SOURCE_NONE, align 4
  store i32 %38, i32* %2, align 4
  br label %65

39:                                               ; preds = %1
  %40 = load %struct.gpio*, %struct.gpio** %3, align 8
  %41 = getelementptr inbounds %struct.gpio, %struct.gpio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %47 [
    i32 137, label %43
    i32 136, label %45
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @SYNC_SOURCE_IO_HPD1, align 4
  store i32 %44, i32* %2, align 4
  br label %65

45:                                               ; preds = %39
  %46 = load i32, i32* @SYNC_SOURCE_IO_HPD2, align 4
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %39
  %48 = load i32, i32* @SYNC_SOURCE_NONE, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %1
  %50 = load %struct.gpio*, %struct.gpio** %3, align 8
  %51 = getelementptr inbounds %struct.gpio, %struct.gpio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %61 [
    i32 141, label %53
    i32 140, label %55
    i32 139, label %57
    i32 138, label %59
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* @SYNC_SOURCE_GSL_IO_GENLOCK_CLOCK, align 4
  store i32 %54, i32* %2, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* @SYNC_SOURCE_GSL_IO_GENLOCK_VSYNC, align 4
  store i32 %56, i32* %2, align 4
  br label %65

57:                                               ; preds = %49
  %58 = load i32, i32* @SYNC_SOURCE_GSL_IO_SWAPLOCK_A, align 4
  store i32 %58, i32* %2, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load i32, i32* @SYNC_SOURCE_GSL_IO_SWAPLOCK_B, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %49
  %62 = load i32, i32* @SYNC_SOURCE_NONE, align 4
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %1
  %64 = load i32, i32* @SYNC_SOURCE_NONE, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %61, %59, %57, %55, %53, %47, %45, %43, %37, %35, %33, %31, %29, %23, %21, %19, %17, %15, %13, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
