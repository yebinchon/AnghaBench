; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-truly-nt35597.c_truly_nt35597_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32 }
%struct.truly_nt35597 = type { i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"backlight disable failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @truly_nt35597_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truly_nt35597_disable(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.truly_nt35597*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %6 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %7 = call %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel* %6)
  store %struct.truly_nt35597* %7, %struct.truly_nt35597** %4, align 8
  %8 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %9 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %15 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %20 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @backlight_disable(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %27 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @DRM_DEV_ERROR(i32 %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %13
  %33 = load %struct.truly_nt35597*, %struct.truly_nt35597** %4, align 8
  %34 = getelementptr inbounds %struct.truly_nt35597, %struct.truly_nt35597* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.truly_nt35597* @panel_to_ctx(%struct.drm_panel*) #1

declare dso_local i32 @backlight_disable(i64) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
