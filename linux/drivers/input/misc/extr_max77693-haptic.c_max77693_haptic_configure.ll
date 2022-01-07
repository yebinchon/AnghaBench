; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_haptic = type { i32, i32, i32, i32, i32 }

@MAX77693_CONFIG2_MODE = common dso_local global i32 0, align 4
@MAX77693_CONFIG2_MEN = common dso_local global i32 0, align 4
@MAX77693_CONFIG2_HTYP = common dso_local global i32 0, align 4
@MAX77693_HAPTIC_PWM_DIVISOR_128 = common dso_local global i32 0, align 4
@MAX77693_HAPTIC_REG_CONFIG2 = common dso_local global i32 0, align 4
@MCONFIG_MODE_SHIFT = common dso_local global i32 0, align 4
@MCONFIG_MEN_SHIFT = common dso_local global i32 0, align 4
@MAX77843_HAP_REG_MCONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to update haptic config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_haptic*, i32)* @max77693_haptic_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_haptic_configure(%struct.max77693_haptic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77693_haptic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max77693_haptic* %0, %struct.max77693_haptic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %10 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %44 [
    i32 129, label %12
    i32 128, label %31
  ]

12:                                               ; preds = %2
  %13 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %14 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAX77693_CONFIG2_MODE, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAX77693_CONFIG2_MEN, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %23 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX77693_CONFIG2_HTYP, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %21, %26
  %28 = load i32, i32* @MAX77693_HAPTIC_PWM_DIVISOR_128, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @MAX77693_HAPTIC_REG_CONFIG2, align 4
  store i32 %30, i32* %7, align 4
  br label %47

31:                                               ; preds = %2
  %32 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %33 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MCONFIG_MODE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MCONFIG_MEN_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = load i32, i32* @MAX77693_HAPTIC_PWM_DIVISOR_128, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @MAX77843_HAP_REG_MCONFIG, align 4
  store i32 %43, i32* %7, align 4
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %64

47:                                               ; preds = %31, %12
  %48 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %49 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @regmap_write(i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.max77693_haptic*, %struct.max77693_haptic** %4, align 8
  %58 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %44
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
