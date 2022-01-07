; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_set_shadow_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_isl29501.c_isl29501_set_shadow_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29501_private = type { i32* }

@COEFF_TEMP_A = common dso_local global i32 0, align 4
@COEFF_TEMP_B = common dso_local global i32 0, align 4
@COEFF_LIGHT_A = common dso_local global i32 0, align 4
@COEFF_LIGHT_B = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29501_private*, i32, i32)* @isl29501_set_shadow_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29501_set_shadow_coeff(%struct.isl29501_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29501_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isl29501_private* %0, %struct.isl29501_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %12
    i32 131, label %14
    i32 130, label %16
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @COEFF_TEMP_A, align 4
  store i32 %11, i32* %8, align 4
  br label %21

12:                                               ; preds = %3
  %13 = load i32, i32* @COEFF_TEMP_B, align 4
  store i32 %13, i32* %8, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i32, i32* @COEFF_LIGHT_A, align 4
  store i32 %15, i32* %8, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @COEFF_LIGHT_B, align 4
  store i32 %17, i32* %8, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %16, %14, %12, %10
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.isl29501_private*, %struct.isl29501_private** %5, align 8
  %24 = getelementptr inbounds %struct.isl29501_private, %struct.isl29501_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %22, i32* %28, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
