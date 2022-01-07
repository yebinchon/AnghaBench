; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_est3_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_est3_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.drm_connector = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@est3_modes = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.detailed_timing*)* @drm_est3_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_est3_modes(%struct.drm_connector* %0, %struct.detailed_timing* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.detailed_timing*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca i32*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.detailed_timing* %1, %struct.detailed_timing** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.detailed_timing*, %struct.detailed_timing** %4, align 8
  %12 = bitcast %struct.detailed_timing* %11 to i32*
  %13 = getelementptr inbounds i32, i32* %12, i64 6
  store i32* %13, i32** %10, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %85, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %88

17:                                               ; preds = %14
  store i32 7, i32* %6, align 4
  br label %18

18:                                               ; preds = %81, %17
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 7, %24
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @est3_modes, align 8
  %29 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %28)
  %30 = icmp sge i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %84

32:                                               ; preds = %21
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %32
  %43 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %44 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @est3_modes, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @est3_modes, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @est3_modes, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** @est3_modes, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.drm_display_mode* @drm_mode_find_dmt(i32 %45, i32 %51, i32 %57, i32 %63, i32 %69)
  store %struct.drm_display_mode* %70, %struct.drm_display_mode** %9, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %72 = icmp ne %struct.drm_display_mode* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %42
  %74 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %76 = call i32 @drm_mode_probed_add(%struct.drm_connector* %74, %struct.drm_display_mode* %75)
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %42
  br label %80

80:                                               ; preds = %79, %32
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4
  br label %18

84:                                               ; preds = %31, %18
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %14

88:                                               ; preds = %14
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_find_dmt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
