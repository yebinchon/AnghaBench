; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c__i8k_get_fan_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c__i8k_get_fan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@I8K_SMM_GET_FAN_TYPE = common dso_local global i32 0, align 4
@disallow_fan_support = common dso_local global i64 0, align 8
@disallow_fan_type_call = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_i8k_get_fan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_i8k_get_fan_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.smm_regs, align 4
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %6 = load i32, i32* @I8K_SMM_GET_FAN_TYPE, align 4
  store i32 %6, i32* %5, align 4
  %7 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  store i32 0, i32* %7, align 4
  %8 = load i64, i64* @disallow_fan_support, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @disallow_fan_type_call, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %31

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = call i64 @i8k_smm(%struct.smm_regs* %4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %28

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 255
  %27 = sext i32 %26 to i64
  br label %28

28:                                               ; preds = %23, %22
  %29 = phi i64 [ %20, %22 ], [ %27, %23 ]
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %13
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i64 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
