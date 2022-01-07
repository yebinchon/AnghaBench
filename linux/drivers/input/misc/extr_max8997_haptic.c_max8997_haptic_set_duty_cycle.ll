; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_set_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_set_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_haptic = type { i64, i32, i32, i32, i32, i32 }

@MAX8997_EXTERNAL_MODE = common dso_local global i64 0, align 8
@MAX8997_HAPTIC_REG_SIGPWMDC1 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGPWMDC2 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGPWMDC3 = common dso_local global i32 0, align 4
@MAX8997_HAPTIC_REG_SIGPWMDC4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max8997_haptic*)* @max8997_haptic_set_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8997_haptic_set_duty_cycle(%struct.max8997_haptic* %0) #0 {
  %2 = alloca %struct.max8997_haptic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max8997_haptic* %0, %struct.max8997_haptic** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %8 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAX8997_EXTERNAL_MODE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %14 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %17 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = sdiv i32 %19, 100
  store i32 %20, i32* %4, align 4
  %21 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %22 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %26 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pwm_config(i32 %23, i32 %24, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %44, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp sle i32 %31, 64
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %35 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 100
  %39 = sdiv i32 %38, 64
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %30

47:                                               ; preds = %41, %30
  %48 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %49 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %79 [
    i32 0, label %51
    i32 1, label %58
    i32 2, label %65
    i32 3, label %72
  ]

51:                                               ; preds = %47
  %52 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %53 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAX8997_HAPTIC_REG_SIGPWMDC1, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @max8997_write_reg(i32 %54, i32 %55, i32 %56)
  br label %80

58:                                               ; preds = %47
  %59 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %60 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAX8997_HAPTIC_REG_SIGPWMDC2, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @max8997_write_reg(i32 %61, i32 %62, i32 %63)
  br label %80

65:                                               ; preds = %47
  %66 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %67 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MAX8997_HAPTIC_REG_SIGPWMDC3, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @max8997_write_reg(i32 %68, i32 %69, i32 %70)
  br label %80

72:                                               ; preds = %47
  %73 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %74 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MAX8997_HAPTIC_REG_SIGPWMDC4, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @max8997_write_reg(i32 %75, i32 %76, i32 %77)
  br label %80

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79, %72, %65, %58, %51
  br label %81

81:                                               ; preds = %80, %12
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @max8997_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
