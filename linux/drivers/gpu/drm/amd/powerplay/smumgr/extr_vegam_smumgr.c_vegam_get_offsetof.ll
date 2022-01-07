; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_get_offsetof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_get_offsetof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMU75_SoftRegisters = common dso_local global i32 0, align 4
@SMU75_Discrete_DpmTable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"can't get the offset of type %x member %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @vegam_get_offsetof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_get_offsetof(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %58 [
    i32 133, label %7
    i32 134, label %46
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %45 [
    i32 137, label %9
    i32 128, label %12
    i32 144, label %15
    i32 143, label %18
    i32 135, label %21
    i32 130, label %24
    i32 132, label %27
    i32 142, label %30
    i32 141, label %33
    i32 139, label %36
    i32 138, label %39
    i32 140, label %42
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @SMU75_SoftRegisters, align 4
  %11 = call i32 @offsetof(i32 %10, i32 137)
  store i32 %11, i32* %3, align 4
  br label %62

12:                                               ; preds = %7
  %13 = load i32, i32* @SMU75_SoftRegisters, align 4
  %14 = call i32 @offsetof(i32 %13, i32 128)
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %7
  %16 = load i32, i32* @SMU75_SoftRegisters, align 4
  %17 = call i32 @offsetof(i32 %16, i32 144)
  store i32 %17, i32* %3, align 4
  br label %62

18:                                               ; preds = %7
  %19 = load i32, i32* @SMU75_SoftRegisters, align 4
  %20 = call i32 @offsetof(i32 %19, i32 143)
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %7
  %22 = load i32, i32* @SMU75_SoftRegisters, align 4
  %23 = call i32 @offsetof(i32 %22, i32 135)
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %7
  %25 = load i32, i32* @SMU75_SoftRegisters, align 4
  %26 = call i32 @offsetof(i32 %25, i32 130)
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %7
  %28 = load i32, i32* @SMU75_SoftRegisters, align 4
  %29 = call i32 @offsetof(i32 %28, i32 132)
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %7
  %31 = load i32, i32* @SMU75_SoftRegisters, align 4
  %32 = call i32 @offsetof(i32 %31, i32 142)
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %7
  %34 = load i32, i32* @SMU75_SoftRegisters, align 4
  %35 = call i32 @offsetof(i32 %34, i32 141)
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %7
  %37 = load i32, i32* @SMU75_SoftRegisters, align 4
  %38 = call i32 @offsetof(i32 %37, i32 139)
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %7
  %40 = load i32, i32* @SMU75_SoftRegisters, align 4
  %41 = call i32 @offsetof(i32 %40, i32 138)
  store i32 %41, i32* %3, align 4
  br label %62

42:                                               ; preds = %7
  %43 = load i32, i32* @SMU75_SoftRegisters, align 4
  %44 = call i32 @offsetof(i32 %43, i32 140)
  store i32 %44, i32* %3, align 4
  br label %62

45:                                               ; preds = %7
  br label %58

46:                                               ; preds = %2
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %57 [
    i32 131, label %48
    i32 129, label %51
    i32 136, label %54
  ]

48:                                               ; preds = %46
  %49 = load i32, i32* @SMU75_Discrete_DpmTable, align 4
  %50 = call i32 @offsetof(i32 %49, i32 131)
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %46
  %52 = load i32, i32* @SMU75_Discrete_DpmTable, align 4
  %53 = call i32 @offsetof(i32 %52, i32 129)
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %46
  %55 = load i32, i32* @SMU75_Discrete_DpmTable, align 4
  %56 = call i32 @offsetof(i32 %55, i32 136)
  store i32 %56, i32* %3, align 4
  br label %62

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %2, %57, %45
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %54, %51, %48, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
