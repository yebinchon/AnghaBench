; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_ctrl_pll_set_control_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_ctrl_pll_set_control_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error in PLL mux config for LCD\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error in PLL mux config for LCD2\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"error in PLL mux config for LCD3\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error in PLL mux config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dss_device*, i32, i32)* @dss_ctrl_pll_set_control_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_ctrl_pll_set_control_mux(%struct.dss_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dss_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dss_device* %0, %struct.dss_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %11 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %48 [
    i32 130, label %19
    i32 129, label %28
    i32 128, label %38
  ]

19:                                               ; preds = %17
  store i32 3, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %23 [
    i32 134, label %21
    i32 135, label %22
  ]

21:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %27

22:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  br label %27

23:                                               ; preds = %19
  %24 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %65

27:                                               ; preds = %22, %21
  br label %52

28:                                               ; preds = %17
  store i32 5, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %33 [
    i32 133, label %30
    i32 131, label %31
    i32 135, label %32
  ]

30:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %37

31:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %37

32:                                               ; preds = %28
  store i32 2, i32* %9, align 4
  br label %37

33:                                               ; preds = %28
  %34 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %32, %31, %30
  br label %52

38:                                               ; preds = %17
  store i32 7, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %43 [
    i32 132, label %40
    i32 133, label %41
    i32 135, label %42
  ]

40:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %47

41:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %47

42:                                               ; preds = %38
  store i32 2, i32* %9, align 4
  br label %47

43:                                               ; preds = %38
  %44 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %42, %41, %40
  br label %52

48:                                               ; preds = %17
  %49 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %65

52:                                               ; preds = %47, %37, %27
  %53 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %54 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dss_device*, %struct.dss_device** %5, align 8
  %57 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 3, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %61, %62
  %64 = call i32 @regmap_update_bits(i32 %55, i32 %58, i32 %60, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %52, %48, %43, %33, %23, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
