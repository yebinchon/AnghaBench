; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_get_mode_switch_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_get_mode_switch_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg4ff_compat_mode_switch = type { i32 }

@lg4ff_mode_switch_ext01_dfp = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext16_g25 = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_dfex = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_dfp = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_g25 = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_g27 = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_dfgt = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@lg4ff_mode_switch_ext09_g29 = common dso_local global %struct.lg4ff_compat_mode_switch zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lg4ff_compat_mode_switch* (i32, i32)* @lg4ff_get_mode_switch_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lg4ff_compat_mode_switch* @lg4ff_get_mode_switch_command(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.lg4ff_compat_mode_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %37 [
    i32 132, label %7
    i32 131, label %11
    i32 130, label %16
    i32 129, label %23
    i32 133, label %31
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %10 [
    i32 132, label %9
  ]

9:                                                ; preds = %7
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext01_dfp, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

10:                                               ; preds = %7
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %15 [
    i32 132, label %13
    i32 131, label %14
  ]

13:                                               ; preds = %11
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext01_dfp, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

14:                                               ; preds = %11
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext16_g25, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

15:                                               ; preds = %11
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %22 [
    i32 128, label %18
    i32 132, label %19
    i32 131, label %20
    i32 130, label %21
  ]

18:                                               ; preds = %16
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfex, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

19:                                               ; preds = %16
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfp, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

20:                                               ; preds = %16
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_g25, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

21:                                               ; preds = %16
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_g27, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

22:                                               ; preds = %16
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %30 [
    i32 132, label %25
    i32 133, label %26
    i32 131, label %27
    i32 130, label %28
    i32 129, label %29
  ]

25:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfp, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

26:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfgt, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

27:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_g25, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

28:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_g27, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

29:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_g29, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

30:                                               ; preds = %23
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %36 [
    i32 128, label %33
    i32 132, label %34
    i32 133, label %35
  ]

33:                                               ; preds = %31
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfex, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

34:                                               ; preds = %31
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfp, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

35:                                               ; preds = %31
  store %struct.lg4ff_compat_mode_switch* @lg4ff_mode_switch_ext09_dfgt, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

36:                                               ; preds = %31
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

37:                                               ; preds = %2
  store %struct.lg4ff_compat_mode_switch* null, %struct.lg4ff_compat_mode_switch** %3, align 8
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %30, %29, %28, %27, %26, %25, %22, %21, %20, %19, %18, %15, %14, %13, %10, %9
  %39 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %3, align 8
  ret %struct.lg4ff_compat_mode_switch* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
