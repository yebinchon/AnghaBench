; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_haptic = type { i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"set_pwm_cycle failed, error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to enable regulator\0A\00", align 1
@MAX8997_EXTERNAL_MODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to enable PWM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_haptic*)* @max8997_haptic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_haptic_enable(%struct.max8997_haptic* %0) #0 {
  %2 = alloca %struct.max8997_haptic*, align 8
  %3 = alloca i32, align 4
  store %struct.max8997_haptic* %0, %struct.max8997_haptic** %2, align 8
  %4 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %5 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %8 = call i32 @max8997_haptic_set_duty_cycle(%struct.max8997_haptic* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %13 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 (i32, i8*, ...) @dev_err(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %19 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %17
  %23 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %24 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @regulator_enable(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %31 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %63

34:                                               ; preds = %22
  %35 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %36 = call i32 @max8997_haptic_configure(%struct.max8997_haptic* %35)
  %37 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %38 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MAX8997_EXTERNAL_MODE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %44 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pwm_enable(i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %51 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %55 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @regulator_disable(i32 %56)
  br label %63

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %61 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %17
  br label %63

63:                                               ; preds = %62, %49, %29, %11
  %64 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %65 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8997_haptic_set_duty_cycle(%struct.max8997_haptic*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @max8997_haptic_configure(%struct.max8997_haptic*) #1

declare dso_local i32 @pwm_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
