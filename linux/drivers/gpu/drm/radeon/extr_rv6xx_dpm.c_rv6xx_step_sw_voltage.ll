; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_step_sw_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv6xx_dpm.c_rv6xx_step_sw_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SET_VOLTAGE_TYPE_ASIC_VDDC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_CTXSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64, i64)* @rv6xx_step_sw_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv6xx_step_sw_voltage(%struct.radeon_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %13 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %14 = call i64 @radeon_atom_get_voltage_step(%struct.radeon_device* %12, i32 %13, i64* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %3
  %17 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %18 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @radeon_atom_round_to_true_voltage(%struct.radeon_device* %17, i32 %18, i64 %19, i64* %8)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = load i32, i32* @SET_VOLTAGE_TYPE_ASIC_VDDC, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @radeon_atom_round_to_true_voltage(%struct.radeon_device* %23, i32 %24, i64 %25, i64* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %8, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %53 = load i32, i32* @R600_POWER_LEVEL_CTXSW, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @rv6xx_program_voltage_stepping_entry(%struct.radeon_device* %52, i32 %53, i64 %54)
  %56 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 999
  %62 = sdiv i32 %61, 1000
  %63 = call i32 @msleep(i32 %62)
  br label %43

64:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %28
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @radeon_atom_get_voltage_step(%struct.radeon_device*, i32, i64*) #1

declare dso_local i64 @radeon_atom_round_to_true_voltage(%struct.radeon_device*, i32, i64, i64*) #1

declare dso_local i32 @rv6xx_program_voltage_stepping_entry(%struct.radeon_device*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
