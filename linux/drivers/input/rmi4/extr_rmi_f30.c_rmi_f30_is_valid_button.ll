; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_is_valid_button.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f30.c_rmi_f30_is_valid_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_f30_ctrl_data = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rmi_f30_ctrl_data*)* @rmi_f30_is_valid_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f30_is_valid_button(i32 %0, %struct.rmi_f30_ctrl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_f30_ctrl_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rmi_f30_ctrl_data* %1, %struct.rmi_f30_ctrl_data** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 3
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rmi_f30_ctrl_data*, %struct.rmi_f30_ctrl_data** %4, align 8
  %12 = getelementptr inbounds %struct.rmi_f30_ctrl_data, %struct.rmi_f30_ctrl_data* %11, i64 2
  %13 = getelementptr inbounds %struct.rmi_f30_ctrl_data, %struct.rmi_f30_ctrl_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = load %struct.rmi_f30_ctrl_data*, %struct.rmi_f30_ctrl_data** %4, align 8
  %25 = getelementptr inbounds %struct.rmi_f30_ctrl_data, %struct.rmi_f30_ctrl_data* %24, i64 3
  %26 = getelementptr inbounds %struct.rmi_f30_ctrl_data, %struct.rmi_f30_ctrl_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %23, %2
  %37 = phi i1 [ false, %2 ], [ %35, %23 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
