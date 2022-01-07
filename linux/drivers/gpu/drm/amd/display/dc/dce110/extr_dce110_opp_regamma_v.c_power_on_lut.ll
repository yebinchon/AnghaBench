; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_regamma_v.c_power_on_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_opp_regamma_v.c_power_on_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transform = type { i32 }

@mmDCFEV_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@DCFEV_MEM_PWR_CTRL = common dso_local global i32 0, align 4
@COL_MAN_INPUT_GAMMA_MEM_PWR_DIS = common dso_local global i32 0, align 4
@COL_MAN_GAMMA_CORR_MEM_PWR_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.transform*, i32, i32, i32)* @power_on_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_on_lut(%struct.transform* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.transform*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.transform* %0, %struct.transform** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.transform*, %struct.transform** %5, align 8
  %12 = getelementptr inbounds %struct.transform, %struct.transform* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %15 = call i32 @dm_read_reg(i32 %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %24 = load i32, i32* @COL_MAN_INPUT_GAMMA_MEM_PWR_DIS, align 4
  %25 = call i32 @set_reg_field_value(i32 %22, i32 1, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %32 = load i32, i32* @COL_MAN_GAMMA_CORR_MEM_PWR_DIS, align 4
  %33 = call i32 @set_reg_field_value(i32 %30, i32 1, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  br label %52

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %41 = load i32, i32* @COL_MAN_INPUT_GAMMA_MEM_PWR_DIS, align 4
  %42 = call i32 @set_reg_field_value(i32 %39, i32 0, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %49 = load i32, i32* @COL_MAN_GAMMA_CORR_MEM_PWR_DIS, align 4
  %50 = call i32 @set_reg_field_value(i32 %47, i32 0, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.transform*, %struct.transform** %5, align 8
  %54 = getelementptr inbounds %struct.transform, %struct.transform* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @dm_write_reg(i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %82, %52
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load %struct.transform*, %struct.transform** %5, align 8
  %64 = getelementptr inbounds %struct.transform, %struct.transform* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @mmDCFEV_MEM_PWR_CTRL, align 4
  %67 = call i32 @dm_read_reg(i32 %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %70 = load i32, i32* @COL_MAN_INPUT_GAMMA_MEM_PWR_DIS, align 4
  %71 = call i64 @get_reg_field_value(i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %62
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @DCFEV_MEM_PWR_CTRL, align 4
  %76 = load i32, i32* @COL_MAN_GAMMA_CORR_MEM_PWR_DIS, align 4
  %77 = call i64 @get_reg_field_value(i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %85

80:                                               ; preds = %73, %62
  %81 = call i32 @udelay(i32 2)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %59

85:                                               ; preds = %79, %59
  ret void
}

declare dso_local i32 @dm_read_reg(i32, i32) #1

declare dso_local i32 @set_reg_field_value(i32, i32, i32, i32) #1

declare dso_local i32 @dm_write_reg(i32, i32, i32) #1

declare dso_local i64 @get_reg_field_value(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
