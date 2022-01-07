; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_panel_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_mdfld_dsi_output.c_mdfld_dsi_panel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Invalid output\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"gfx\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gpio_rqueset failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gpio_direction_output failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdfld_dsi_panel_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %9 [
    i32 0, label %7
    i32 2, label %8
  ]

7:                                                ; preds = %1
  store i32 128, i32* %4, align 4
  br label %13

8:                                                ; preds = %1
  store i32 34, i32* %4, align 4
  br label %13

9:                                                ; preds = %1
  %10 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %8, %7
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @gpio_request(i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @gpio_direction_output(i32 %22, i32 1)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %30

28:                                               ; preds = %21
  %29 = call i32 @gpio_get_value(i32 128)
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @gpio_is_valid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @gpio_free(i32 %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %18, %9
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
