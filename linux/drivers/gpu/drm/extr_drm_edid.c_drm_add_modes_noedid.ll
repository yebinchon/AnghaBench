; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_modes_noedid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_modes_noedid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@drm_dmt_modes = common dso_local global %struct.drm_display_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_modes_noedid(%struct.drm_connector* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %11, align 8
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** @drm_dmt_modes, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.drm_display_mode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %21
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %72, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %26
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** @drm_dmt_modes, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i64 %33
  store %struct.drm_display_mode* %34, %struct.drm_display_mode** %12, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40
  br label %72

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %37, %30
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %56 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %55)
  %57 = icmp sgt i32 %56, 61
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %72

59:                                               ; preds = %54
  %60 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %62 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %60, %struct.drm_display_mode* %61)
  store %struct.drm_display_mode* %62, %struct.drm_display_mode** %10, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %64 = icmp ne %struct.drm_display_mode* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %68 = call i32 @drm_mode_probed_add(%struct.drm_connector* %66, %struct.drm_display_mode* %67)
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %59
  br label %72

72:                                               ; preds = %71, %58, %52
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %26

75:                                               ; preds = %26
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local i32 @ARRAY_SIZE(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
