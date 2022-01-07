; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_haptic = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.max77693_haptic*)* @max77693_haptic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max77693_haptic_disable(%struct.max77693_haptic* %0) #0 {
  %2 = alloca %struct.max77693_haptic*, align 8
  %3 = alloca i32, align 4
  store %struct.max77693_haptic* %0, %struct.max77693_haptic** %2, align 8
  %4 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %5 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %11 = call i32 @max77693_haptic_configure(%struct.max77693_haptic* %10, i32 0)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %17 = call i32 @max77693_haptic_lowsys(%struct.max77693_haptic* %16, i32 0)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %28

21:                                               ; preds = %15
  %22 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %23 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pwm_disable(i32 %24)
  %26 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %27 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.max77693_haptic*, %struct.max77693_haptic** %2, align 8
  %30 = call i32 @max77693_haptic_configure(%struct.max77693_haptic* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %21, %14, %8
  ret void
}

declare dso_local i32 @max77693_haptic_configure(%struct.max77693_haptic*, i32) #1

declare dso_local i32 @max77693_haptic_lowsys(%struct.max77693_haptic*, i32) #1

declare dso_local i32 @pwm_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
