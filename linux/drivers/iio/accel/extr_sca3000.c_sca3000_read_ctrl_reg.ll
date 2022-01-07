; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_ctrl_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_sca3000.c_sca3000_read_ctrl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sca3000_state = type { i32* }

@SCA3000_REG_CTRL_SEL_ADDR = common dso_local global i32 0, align 4
@SCA3000_REG_CTRL_DATA_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sca3000_state*, i32)* @sca3000_read_ctrl_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sca3000_read_ctrl_reg(%struct.sca3000_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sca3000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sca3000_state* %0, %struct.sca3000_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %8 = call i32 @sca3000_reg_lock_on(%struct.sca3000_state* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %17 = call i32 @__sca3000_unlock_reg_lock(%struct.sca3000_state* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %43

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %24 = load i32, i32* @SCA3000_REG_CTRL_SEL_ADDR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @sca3000_write_reg(%struct.sca3000_state* %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %43

30:                                               ; preds = %22
  %31 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %32 = load i32, i32* @SCA3000_REG_CTRL_DATA_ADDR, align 4
  %33 = call i32 @sca3000_read_data_short(%struct.sca3000_state* %31, i32 %32, i32 1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  %38 = load %struct.sca3000_state*, %struct.sca3000_state** %4, align 8
  %39 = getelementptr inbounds %struct.sca3000_state, %struct.sca3000_state* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %36, %29, %20, %11
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @sca3000_reg_lock_on(%struct.sca3000_state*) #1

declare dso_local i32 @__sca3000_unlock_reg_lock(%struct.sca3000_state*) #1

declare dso_local i32 @sca3000_write_reg(%struct.sca3000_state*, i32, i32) #1

declare dso_local i32 @sca3000_read_data_short(%struct.sca3000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
