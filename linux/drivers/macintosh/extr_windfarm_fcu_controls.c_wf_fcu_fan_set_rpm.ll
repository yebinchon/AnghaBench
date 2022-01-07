; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_set_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_set_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.wf_fcu_fan* }
%struct.wf_fcu_fan = type { i32, i32, i32, i32, %struct.wf_fcu_priv* }
%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*, i32)* @wf_fcu_fan_set_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_fan_set_rpm(%struct.wf_control* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_control*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wf_fcu_fan*, align 8
  %7 = alloca %struct.wf_fcu_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  store %struct.wf_control* %0, %struct.wf_control** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %12 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %11, i32 0, i32 0
  %13 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %12, align 8
  store %struct.wf_fcu_fan* %13, %struct.wf_fcu_fan** %6, align 8
  %14 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %15 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %14, i32 0, i32 4
  %16 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %15, align 8
  store %struct.wf_fcu_priv* %16, %struct.wf_fcu_priv** %7, align 8
  %17 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %18 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %22 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %27 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %32 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %37 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %42 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 8, %44
  %46 = ashr i32 %43, %45
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %47, i8* %48, align 1
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %9, align 4
  %51 = shl i32 %49, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %55 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %56 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 16, %58
  %60 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %61 = call i32 @wf_fcu_write_reg(%struct.wf_fcu_priv* %54, i32 %59, i8* %60, i32 2)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %39
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @wf_fcu_write_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
