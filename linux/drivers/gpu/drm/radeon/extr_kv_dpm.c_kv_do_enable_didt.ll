; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_do_enable_didt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_do_enable_didt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.kv_power_info = type { i64, i64, i64, i64 }

@DIDT_SQ_CTRL0 = common dso_local global i32 0, align 4
@DIDT_CTRL_EN = common dso_local global i32 0, align 4
@DIDT_DB_CTRL0 = common dso_local global i32 0, align 4
@DIDT_TD_CTRL0 = common dso_local global i32 0, align 4
@DIDT_TCP_CTRL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @kv_do_enable_didt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_do_enable_didt(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kv_power_info*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %5, align 8
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %10 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @DIDT_SQ_CTRL0, align 4
  %15 = call i32 @RREG32_DIDT(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @DIDT_CTRL_EN, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %27

22:                                               ; preds = %13
  %23 = load i32, i32* @DIDT_CTRL_EN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* @DIDT_SQ_CTRL0, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @WREG32_DIDT(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load i32, i32* @DIDT_DB_CTRL0, align 4
  %38 = call i32 @RREG32_DIDT(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @DIDT_CTRL_EN, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @DIDT_CTRL_EN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = load i32, i32* @DIDT_DB_CTRL0, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @WREG32_DIDT(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %31
  %55 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %56 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load i32, i32* @DIDT_TD_CTRL0, align 4
  %61 = call i32 @RREG32_DIDT(i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @DIDT_CTRL_EN, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  br label %73

68:                                               ; preds = %59
  %69 = load i32, i32* @DIDT_CTRL_EN, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load i32, i32* @DIDT_TD_CTRL0, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @WREG32_DIDT(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %54
  %78 = load %struct.kv_power_info*, %struct.kv_power_info** %5, align 8
  %79 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32, i32* @DIDT_TCP_CTRL0, align 4
  %84 = call i32 @RREG32_DIDT(i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @DIDT_CTRL_EN, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %96

91:                                               ; preds = %82
  %92 = load i32, i32* @DIDT_CTRL_EN, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32, i32* @DIDT_TCP_CTRL0, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @WREG32_DIDT(i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %77
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_DIDT(i32) #1

declare dso_local i32 @WREG32_DIDT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
