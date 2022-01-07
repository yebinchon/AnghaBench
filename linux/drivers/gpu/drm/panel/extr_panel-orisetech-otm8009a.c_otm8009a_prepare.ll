; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-orisetech-otm8009a.c_otm8009a_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.otm8009a = type { i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @otm8009a_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otm8009a_prepare(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.otm8009a*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel* %6)
  store %struct.otm8009a* %7, %struct.otm8009a** %4, align 8
  %8 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %9 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

13:                                               ; preds = %1
  %14 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %15 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_enable(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %54

24:                                               ; preds = %13
  %25 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %26 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %31 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gpiod_set_value_cansleep(i64 %32, i32 0)
  %34 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %35 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @gpiod_set_value_cansleep(i64 %36, i32 1)
  %38 = call i32 @msleep(i32 20)
  %39 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %40 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @gpiod_set_value_cansleep(i64 %41, i32 0)
  %43 = call i32 @msleep(i32 100)
  br label %44

44:                                               ; preds = %29, %24
  %45 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %46 = call i32 @otm8009a_init_sequence(%struct.otm8009a* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.otm8009a*, %struct.otm8009a** %4, align 8
  %53 = getelementptr inbounds %struct.otm8009a, %struct.otm8009a* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %49, %20, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.otm8009a* @panel_to_otm8009a(%struct.drm_panel*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @otm8009a_init_sequence(%struct.otm8009a*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
