; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_get_fan_nominal_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_get_fan_nominal_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@I8K_SMM_GET_NOM_SPEED = common dso_local global i32 0, align 4
@disallow_fan_support = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@i8k_fan_mult = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @i8k_get_fan_nominal_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_get_fan_nominal_speed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.smm_regs, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 0
  %8 = load i32, i32* @I8K_SMM_GET_NOM_SPEED, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load i64, i64* @disallow_fan_support, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 255
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %17, %19
  %21 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = call i64 @i8k_smm(%struct.smm_regs* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %32

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* @i8k_fan_mult, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %25, %24
  %33 = phi i64 [ %22, %24 ], [ %31, %25 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @i8k_smm(%struct.smm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
