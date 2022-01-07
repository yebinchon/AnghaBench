; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_get_pwm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_get_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.wf_fcu_fan* }
%struct.wf_fcu_fan = type { i32, %struct.wf_fcu_priv* }
%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*, i32*)* @wf_fcu_fan_get_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_fan_get_pwm(%struct.wf_control* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_control*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wf_fcu_fan*, align 8
  %7 = alloca %struct.wf_fcu_priv*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store %struct.wf_control* %0, %struct.wf_control** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %13 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %12, i32 0, i32 0
  %14 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %13, align 8
  store %struct.wf_fcu_fan* %14, %struct.wf_fcu_fan** %6, align 8
  %15 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %16 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %15, i32 0, i32 1
  %17 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %16, align 8
  store %struct.wf_fcu_priv* %17, %struct.wf_fcu_priv** %7, align 8
  %18 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %19 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %18, i32 43, i8* %8, i32 1)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i32
  %28 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %29 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = shl i32 1, %30
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EFAULT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %78

37:                                               ; preds = %25
  %38 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %39 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %38, i32 45, i8* %9, i32 1)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %78

45:                                               ; preds = %37
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %49 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 1, %50
  %52 = and i32 %47, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %45
  %58 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %59 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %60 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 48, %62
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %65 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %58, i32 %63, i8* %64, i32 1)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %78

71:                                               ; preds = %57
  %72 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = mul nsw i32 %74, 1000
  %76 = sdiv i32 %75, 2559
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %68, %54, %42, %34, %22
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @wf_fcu_read_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
