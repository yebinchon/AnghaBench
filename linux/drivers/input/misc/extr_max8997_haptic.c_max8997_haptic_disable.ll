; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max8997_haptic.c_max8997_haptic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8997_haptic = type { i32, i64, i32, i32, i32 }

@MAX8997_EXTERNAL_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max8997_haptic*)* @max8997_haptic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max8997_haptic_disable(%struct.max8997_haptic* %0) #0 {
  %2 = alloca %struct.max8997_haptic*, align 8
  store %struct.max8997_haptic* %0, %struct.max8997_haptic** %2, align 8
  %3 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %4 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %3, i32 0, i32 2
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %7 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %12 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %14 = call i32 @max8997_haptic_configure(%struct.max8997_haptic* %13)
  %15 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %16 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MAX8997_EXTERNAL_MODE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %22 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pwm_disable(i32 %23)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %27 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regulator_disable(i32 %28)
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.max8997_haptic*, %struct.max8997_haptic** %2, align 8
  %32 = getelementptr inbounds %struct.max8997_haptic, %struct.max8997_haptic* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @max8997_haptic_configure(%struct.max8997_haptic*) #1

declare dso_local i32 @pwm_disable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
