; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_connect_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mlxreg-fan.c_mlxreg_fan_connect_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_fan = type { i32, i32 }
%struct.mlxreg_core_data = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to query capability register 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_fan*, %struct.mlxreg_core_data*)* @mlxreg_fan_connect_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_fan_connect_verify(%struct.mlxreg_fan* %0, %struct.mlxreg_core_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxreg_fan*, align 8
  %5 = alloca %struct.mlxreg_core_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxreg_fan* %0, %struct.mlxreg_fan** %4, align 8
  store %struct.mlxreg_core_data* %1, %struct.mlxreg_core_data** %5, align 8
  %8 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %9 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %12 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_read(i32 %10, i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.mlxreg_fan*, %struct.mlxreg_fan** %4, align 8
  %19 = getelementptr inbounds %struct.mlxreg_fan, %struct.mlxreg_fan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %22 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mlxreg_core_data*, %struct.mlxreg_core_data** %5, align 8
  %29 = getelementptr inbounds %struct.mlxreg_core_data, %struct.mlxreg_core_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %17
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
