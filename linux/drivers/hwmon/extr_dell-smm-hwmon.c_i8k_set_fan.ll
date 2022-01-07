; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_set_fan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_set_fan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@I8K_SMM_SET_FAN = common dso_local global i32 0, align 4
@disallow_fan_support = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@i8k_fan_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @i8k_set_fan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_set_fan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smm_regs, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 1
  %9 = load i32, i32* @I8K_SMM_SET_FAN, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i64, i64* @disallow_fan_support, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @i8k_fan_max, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @i8k_fan_max, align 4
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i32 [ 0, %18 ], [ %28, %27 ]
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 255
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %32, %34
  %36 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = call i64 @i8k_smm(%struct.smm_regs* %6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @i8k_get_fan_status(i32 %41)
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i64 [ %37, %39 ], [ %43, %40 ]
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @i8k_smm(%struct.smm_regs*) #1

declare dso_local i32 @i8k_get_fan_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
