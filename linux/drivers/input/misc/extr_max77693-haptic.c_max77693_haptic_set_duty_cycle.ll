; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_set_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_max77693-haptic.c_max77693_haptic_set_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max77693_haptic = type { i32, i32, i32 }
%struct.pwm_args = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to configure pwm: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max77693_haptic*)* @max77693_haptic_set_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_haptic_set_duty_cycle(%struct.max77693_haptic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max77693_haptic*, align 8
  %4 = alloca %struct.pwm_args, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.max77693_haptic* %0, %struct.max77693_haptic** %3, align 8
  %7 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %8 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pwm_get_args(i32 %9, %struct.pwm_args* %4)
  %11 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %14 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %19 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.pwm_args, %struct.pwm_args* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pwm_config(i32 %20, i32 %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.max77693_haptic*, %struct.max77693_haptic** %3, align 8
  %29 = getelementptr inbounds %struct.max77693_haptic, %struct.max77693_haptic* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %27
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @pwm_get_args(i32, %struct.pwm_args*) #1

declare dso_local i32 @pwm_config(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
