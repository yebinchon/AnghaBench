; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_mode_alternate_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_cea_mode_alternate_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@edid_cea_modes = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.drm_display_mode*)* @cea_mode_alternate_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cea_mode_alternate_timings(i32 %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 262
  br i1 %10, label %53, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 9
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 262
  br i1 %16, label %53, label %17

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 12
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 262
  br i1 %22, label %53, label %23

23:                                               ; preds = %17
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 13
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 262
  br i1 %28, label %53, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 23
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 312
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 24
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 312
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 27
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 312
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @edid_cea_modes, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 28
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 312
  br label %53

53:                                               ; preds = %47, %41, %35, %29, %23, %17, %11, %2
  %54 = phi i1 [ true, %41 ], [ true, %35 ], [ true, %29 ], [ true, %23 ], [ true, %17 ], [ true, %11 ], [ true, %2 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUILD_BUG_ON(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 12
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %73

68:                                               ; preds = %65, %62, %59, %53
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 263
  br i1 %72, label %90, label %73

73:                                               ; preds = %68, %65
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 24
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = icmp eq i32 %80, 27
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 28
  br i1 %84, label %85, label %103

85:                                               ; preds = %82, %79, %76, %73
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 314
  br i1 %89, label %90, label %103

90:                                               ; preds = %85, %68
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  store i32 1, i32* %3, align 4
  br label %104

103:                                              ; preds = %85, %82
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
