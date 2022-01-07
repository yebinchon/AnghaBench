; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_set_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.wf_fcu_fan* }
%struct.wf_fcu_fan = type { i32, i32, i32, i32, %struct.wf_fcu_priv* }
%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*, i32)* @wf_fcu_fan_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_fan_set_pwm(%struct.wf_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wf_fcu_fan*, align 8
  %7 = alloca %struct.wf_fcu_priv*, align 8
  %8 = alloca [2 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %11 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %10, i32 0, i32 0
  %12 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %11, align 8
  store %struct.wf_fcu_fan* %12, %struct.wf_fcu_fan** %6, align 8
  %13 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %14 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %13, i32 0, i32 4
  %15 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %14, align 8
  store %struct.wf_fcu_priv* %15, %struct.wf_fcu_priv** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %18 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %23 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %28 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %33 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %38 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 2559
  %41 = sdiv i32 %40, 1000
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %43, i8* %44, align 1
  %45 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %46 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %47 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 48, %49
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %52 = call i32 @wf_fcu_write_reg(%struct.wf_fcu_priv* %45, i32 %50, i8* %51, i32 1)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %35
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @wf_fcu_write_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
