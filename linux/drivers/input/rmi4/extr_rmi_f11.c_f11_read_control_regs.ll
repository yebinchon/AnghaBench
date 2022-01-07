; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_f11_read_control_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f11.c_f11_read_control_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.rmi_device* }
%struct.rmi_device = type { i32 }
%struct.f11_2d_ctrl = type { i32, i32 }

@RMI_F11_CTRL_REG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read ctrl0, code: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_function*, %struct.f11_2d_ctrl*, i32)* @f11_read_control_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f11_read_control_regs(%struct.rmi_function* %0, %struct.f11_2d_ctrl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rmi_function*, align 8
  %6 = alloca %struct.f11_2d_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rmi_device*, align 8
  %9 = alloca i32, align 4
  store %struct.rmi_function* %0, %struct.rmi_function** %5, align 8
  store %struct.f11_2d_ctrl* %1, %struct.f11_2d_ctrl** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rmi_function*, %struct.rmi_function** %5, align 8
  %11 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %10, i32 0, i32 1
  %12 = load %struct.rmi_device*, %struct.rmi_device** %11, align 8
  store %struct.rmi_device* %12, %struct.rmi_device** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.f11_2d_ctrl*, %struct.f11_2d_ctrl** %6, align 8
  %15 = getelementptr inbounds %struct.f11_2d_ctrl, %struct.f11_2d_ctrl* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.rmi_device*, %struct.rmi_device** %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.f11_2d_ctrl*, %struct.f11_2d_ctrl** %6, align 8
  %19 = getelementptr inbounds %struct.f11_2d_ctrl, %struct.f11_2d_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RMI_F11_CTRL_REG_COUNT, align 4
  %22 = call i32 @rmi_read_block(%struct.rmi_device* %16, i32 %17, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.rmi_function*, %struct.rmi_function** %5, align 8
  %27 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @rmi_read_block(%struct.rmi_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
