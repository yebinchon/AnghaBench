; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_get_offsetof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_get_offsetof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMU7_SoftRegisters = common dso_local global i32 0, align 4
@AverageGraphicsA = common dso_local global i32 0, align 4
@AverageMemoryA = common dso_local global i32 0, align 4
@SMU7_Discrete_DpmTable = common dso_local global i32 0, align 4
@LowSclkInterruptT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"can't get the offset of type %x member %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ci_get_offsetof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_get_offsetof(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %52 [
    i32 130, label %7
    i32 131, label %45
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %44 [
    i32 134, label %9
    i32 128, label %12
    i32 141, label %15
    i32 140, label %19
    i32 132, label %23
    i32 129, label %26
    i32 139, label %29
    i32 138, label %32
    i32 136, label %35
    i32 135, label %38
    i32 137, label %41
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @SMU7_SoftRegisters, align 4
  %11 = call i32 @offsetof(i32 %10, i32 134)
  store i32 %11, i32* %3, align 4
  br label %56

12:                                               ; preds = %7
  %13 = load i32, i32* @SMU7_SoftRegisters, align 4
  %14 = call i32 @offsetof(i32 %13, i32 128)
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %7
  %16 = load i32, i32* @SMU7_SoftRegisters, align 4
  %17 = load i32, i32* @AverageGraphicsA, align 4
  %18 = call i32 @offsetof(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %7
  %20 = load i32, i32* @SMU7_SoftRegisters, align 4
  %21 = load i32, i32* @AverageMemoryA, align 4
  %22 = call i32 @offsetof(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %7
  %24 = load i32, i32* @SMU7_SoftRegisters, align 4
  %25 = call i32 @offsetof(i32 %24, i32 132)
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %7
  %27 = load i32, i32* @SMU7_SoftRegisters, align 4
  %28 = call i32 @offsetof(i32 %27, i32 129)
  store i32 %28, i32* %3, align 4
  br label %56

29:                                               ; preds = %7
  %30 = load i32, i32* @SMU7_SoftRegisters, align 4
  %31 = call i32 @offsetof(i32 %30, i32 139)
  store i32 %31, i32* %3, align 4
  br label %56

32:                                               ; preds = %7
  %33 = load i32, i32* @SMU7_SoftRegisters, align 4
  %34 = call i32 @offsetof(i32 %33, i32 138)
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %7
  %36 = load i32, i32* @SMU7_SoftRegisters, align 4
  %37 = call i32 @offsetof(i32 %36, i32 136)
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %7
  %39 = load i32, i32* @SMU7_SoftRegisters, align 4
  %40 = call i32 @offsetof(i32 %39, i32 135)
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %7
  %42 = load i32, i32* @SMU7_SoftRegisters, align 4
  %43 = call i32 @offsetof(i32 %42, i32 137)
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %7
  br label %52

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %51 [
    i32 133, label %47
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @SMU7_Discrete_DpmTable, align 4
  %49 = load i32, i32* @LowSclkInterruptT, align 4
  %50 = call i32 @offsetof(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %2, %51, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %47, %41, %38, %35, %32, %29, %26, %23, %19, %15, %12, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
