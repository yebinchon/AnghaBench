; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_pipe_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_pipe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mipi_dbi_dev = type { i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mipi_dbi_pipe_disable(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.mipi_dbi_dev*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %4 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %5 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32 %7)
  store %struct.mipi_dbi_dev* %8, %struct.mipi_dbi_dev** %3, align 8
  %9 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %40

14:                                               ; preds = %1
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @backlight_disable(i64 %25)
  br label %30

27:                                               ; preds = %14
  %28 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %29 = call i32 @mipi_dbi_blank(%struct.mipi_dbi_dev* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @regulator_disable(i64 %38)
  br label %40

40:                                               ; preds = %13, %35, %30
  ret void
}

declare dso_local %struct.mipi_dbi_dev* @drm_to_mipi_dbi_dev(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @backlight_disable(i64) #1

declare dso_local i32 @mipi_dbi_blank(%struct.mipi_dbi_dev*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
