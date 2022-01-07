; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_clean_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_clean_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32*, i32 }

@SCA3000_REG_INT_STATUS_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_SEL_MD_CTRL = common dso_local global i32 0, align 4
@SCA3000_MD_CTRL_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_SEL_OUT_CTRL = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_BUF_X_EN = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_BUF_Y_EN = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_BUF_Z_EN = common dso_local global i32 0, align 4
@SCA3000_REG_OUT_CTRL_BUF_DIV_4 = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_PROT_MASK = common dso_local global i32 0, align 4
@SCA3000_REG_INT_MASK_ACTIVE_LOW = common dso_local global i32 0, align 4
@SCA3000_REG_MODE_ADDR = common dso_local global i32 0, align 4
@SCA3000_MODE_PROT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*)* @sca3000_clean_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_clean_setup(%struct.sca3000_state* %0) #0 {
  %2 = alloca %struct.sca3000_state*, align 8
  %3 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %2, align 8
  %4 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %5 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %8 = load i32, i32* @SCA3000_REG_INT_STATUS_ADDR, align 4
  %9 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %7, i32 %8, i32 1)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %92

13:                                               ; preds = %1
  %14 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %15 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %16 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %92

20:                                               ; preds = %13
  %21 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %22 = load i32, i32* @SCA3000_REG_CTRL_SEL_MD_CTRL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SCA3000_MD_CTRL_PROT_MASK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %21, i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %92

30:                                               ; preds = %20
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %32 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %33 = call i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %92

37:                                               ; preds = %30
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %39 = load i32, i32* @SCA3000_REG_CTRL_SEL_OUT_CTRL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @SCA3000_REG_OUT_CTRL_PROT_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @SCA3000_REG_OUT_CTRL_BUF_X_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SCA3000_REG_OUT_CTRL_BUF_Y_EN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SCA3000_REG_OUT_CTRL_BUF_Z_EN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SCA3000_REG_OUT_CTRL_BUF_DIV_4, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sca3000_write_ctrl_reg(%struct.sca3000_state* %38, i32 %39, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %92

55:                                               ; preds = %37
  %56 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %57 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %58 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %56, i32 %57, i32 1)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %92

62:                                               ; preds = %55
  %63 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %64 = load i32, i32* @SCA3000_REG_INT_MASK_ADDR, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @SCA3000_REG_INT_MASK_PROT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @SCA3000_REG_INT_MASK_ACTIVE_LOW, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @sca3000_write_reg(%struct.sca3000_state* %63, i32 %64, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %92

74:                                               ; preds = %62
  %75 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %76 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %77 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %75, i32 %76, i32 1)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %92

81:                                               ; preds = %74
  %82 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %83 = load i32, i32* @SCA3000_REG_MODE_ADDR, align 4
  %84 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %85 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SCA3000_MODE_PROT_MASK, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @sca3000_write_reg(%struct.sca3000_state* %82, i32 %83, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %81, %80, %73, %61, %54, %36, %29, %19, %12
  %93 = load %struct.sca3000_state*, %struct.sca3000_state** %2, align 8
  %94 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_read_ctrl_reg(%struct.sca3000_state*, i32) #1

declare dso_local i32 @sca3000_write_ctrl_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
