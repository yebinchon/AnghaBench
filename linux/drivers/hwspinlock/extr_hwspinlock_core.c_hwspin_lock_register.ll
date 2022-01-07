; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock_device = type { i32, i32, %struct.hwspinlock*, %struct.hwspinlock_ops*, %struct.device* }
%struct.hwspinlock = type { %struct.hwspinlock_device*, i32 }
%struct.device = type { i32 }
%struct.hwspinlock_ops = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwspin_lock_register(%struct.hwspinlock_device* %0, %struct.device* %1, %struct.hwspinlock_ops* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwspinlock_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hwspinlock_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hwspinlock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hwspinlock_device* %0, %struct.hwspinlock_device** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store %struct.hwspinlock_ops* %2, %struct.hwspinlock_ops** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %16 = icmp ne %struct.hwspinlock_device* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %5
  %18 = load %struct.hwspinlock_ops*, %struct.hwspinlock_ops** %9, align 8
  %19 = icmp ne %struct.hwspinlock_ops* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.hwspinlock_ops*, %struct.hwspinlock_ops** %9, align 8
  %28 = getelementptr inbounds %struct.hwspinlock_ops, %struct.hwspinlock_ops* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.hwspinlock_ops*, %struct.hwspinlock_ops** %9, align 8
  %33 = getelementptr inbounds %struct.hwspinlock_ops, %struct.hwspinlock_ops* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31, %26, %23, %20, %17, %5
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %95

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %43 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %42, i32 0, i32 4
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.hwspinlock_ops*, %struct.hwspinlock_ops** %9, align 8
  %45 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %46 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %45, i32 0, i32 3
  store %struct.hwspinlock_ops* %44, %struct.hwspinlock_ops** %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %49 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %52 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %79, %40
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %59 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %58, i32 0, i32 2
  %60 = load %struct.hwspinlock*, %struct.hwspinlock** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %60, i64 %62
  store %struct.hwspinlock* %63, %struct.hwspinlock** %12, align 8
  %64 = load %struct.hwspinlock*, %struct.hwspinlock** %12, align 8
  %65 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %64, i32 0, i32 1
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %7, align 8
  %68 = load %struct.hwspinlock*, %struct.hwspinlock** %12, align 8
  %69 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %68, i32 0, i32 0
  store %struct.hwspinlock_device* %67, %struct.hwspinlock_device** %69, align 8
  %70 = load %struct.hwspinlock*, %struct.hwspinlock** %12, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @hwspin_lock_register_single(%struct.hwspinlock* %70, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %83

78:                                               ; preds = %57
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %53

82:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %95

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %14, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @hwspin_lock_unregister_single(i32 %91)
  br label %84

93:                                               ; preds = %84
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %93, %82, %36
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hwspin_lock_register_single(%struct.hwspinlock*, i32) #1

declare dso_local i32 @hwspin_lock_unregister_single(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
