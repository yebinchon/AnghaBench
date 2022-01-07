; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_mode_find_dmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_mode_find_dmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }
%struct.drm_device = type { i32 }

@drm_dmt_modes = common dso_local global %struct.drm_display_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_mode_find_dmt(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %53, %5
  %15 = load i32, i32* %12, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** @drm_dmt_modes, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.drm_display_mode* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** @drm_dmt_modes, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i64 %22
  store %struct.drm_display_mode* %23, %struct.drm_display_mode** %13, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %53

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %53

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %40 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %39)
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %53

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %46 = call i32 @mode_is_rb(%struct.drm_display_mode* %45)
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %53

49:                                               ; preds = %43
  %50 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %52 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %50, %struct.drm_display_mode* %51)
  store %struct.drm_display_mode* %52, %struct.drm_display_mode** %6, align 8
  br label %57

53:                                               ; preds = %48, %42, %36, %29
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %14

56:                                               ; preds = %14
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %6, align 8
  br label %57

57:                                               ; preds = %56, %49
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  ret %struct.drm_display_mode* %58
}

declare dso_local i32 @ARRAY_SIZE(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @mode_is_rb(%struct.drm_display_mode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
