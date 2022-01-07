; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_get_reg_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_get_reg_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32 }

@REG_TYPE_SRC = common dso_local global i32 0, align 4
@REG_TYPE_SRC_PLANE2 = common dso_local global i32 0, align 4
@REG_TYPE_DST = common dso_local global i32 0, align 4
@REG_TYPE_DST_PLANE2 = common dso_local global i32 0, align 4
@REG_TYPE_PAT = common dso_local global i32 0, align 4
@REG_TYPE_MSK = common dso_local global i32 0, align 4
@REG_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown register offset![%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_data*, i32)* @g2d_get_reg_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_get_reg_type(%struct.g2d_data* %0, i32 %1) #0 {
  %3 = alloca %struct.g2d_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.g2d_data* %0, %struct.g2d_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %19 [
    i32 133, label %7
    i32 128, label %7
    i32 132, label %7
    i32 131, label %7
    i32 129, label %7
    i32 130, label %9
    i32 141, label %11
    i32 136, label %11
    i32 140, label %11
    i32 139, label %11
    i32 137, label %11
    i32 138, label %13
    i32 134, label %15
    i32 135, label %17
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32, i32* @REG_TYPE_SRC, align 4
  store i32 %8, i32* %5, align 4
  br label %26

9:                                                ; preds = %2
  %10 = load i32, i32* @REG_TYPE_SRC_PLANE2, align 4
  store i32 %10, i32* %5, align 4
  br label %26

11:                                               ; preds = %2, %2, %2, %2, %2
  %12 = load i32, i32* @REG_TYPE_DST, align 4
  store i32 %12, i32* %5, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @REG_TYPE_DST_PLANE2, align 4
  store i32 %14, i32* %5, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @REG_TYPE_PAT, align 4
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @REG_TYPE_MSK, align 4
  store i32 %18, i32* %5, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @REG_TYPE_NONE, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.g2d_data*, %struct.g2d_data** %3, align 8
  %22 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @DRM_DEV_ERROR(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %17, %15, %13, %11, %9, %7
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
