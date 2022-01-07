; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_haptic = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"failed to enable haptic pwm device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_haptic*)* @max77693_haptic_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_haptic_enable(%struct.max77693_haptic* %0) #0 {
  %2 = alloca %struct.max77693_haptic*, align 8
  %3 = alloca i32, align 4
  store %struct.max77693_haptic* %0, %struct.max77693_haptic** %2, align 8
  %4 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %5 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %11 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pwm_enable(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %18 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %45

22:                                               ; preds = %9
  %23 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %24 = call i32 @max77693_haptic_lowsys(%struct.max77693_haptic* %23, i32 1)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %40

28:                                               ; preds = %22
  %29 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %30 = call i32 @max77693_haptic_configure(%struct.max77693_haptic* %29, i32 1)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %37

34:                                               ; preds = %28
  %35 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %36 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %45

37:                                               ; preds = %33
  %38 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %39 = call i32 @max77693_haptic_lowsys(%struct.max77693_haptic* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %42 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pwm_disable(i32 %43)
  br label %45

45:                                               ; preds = %40, %34, %16, %8
  ret void
}

declare dso_local i32 @pwm_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max77693_haptic_lowsys(%struct.max77693_haptic*, i32) #1

declare dso_local i32 @max77693_haptic_configure(%struct.max77693_haptic*, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
