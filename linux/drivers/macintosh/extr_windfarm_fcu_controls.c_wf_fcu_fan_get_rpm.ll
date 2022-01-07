; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_get_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_get_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.wf_fcu_fan* }
%struct.wf_fcu_fan = type { i32, %struct.wf_fcu_priv* }
%struct.wf_fcu_priv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*, i8*)* @wf_fcu_fan_get_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_fan_get_rpm(%struct.wf_control* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wf_control*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wf_fcu_fan*, align 8
  %7 = alloca %struct.wf_fcu_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [2 x i8], align 1
  store %struct.wf_control* %0, %struct.wf_control** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.wf_control*, %struct.wf_control** %4, align 8
  %15 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %14, i32 0, i32 0
  %16 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %15, align 8
  store %struct.wf_fcu_fan* %16, %struct.wf_fcu_fan** %6, align 8
  %17 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %18 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %17, i32 0, i32 1
  %19 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %18, align 8
  store %struct.wf_fcu_priv* %19, %struct.wf_fcu_priv** %7, align 8
  %20 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %21 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %24 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %23, i32 11, i8* %11, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %34 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %92

42:                                               ; preds = %30
  %43 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %44 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %43, i32 13, i8* %12, i32 1)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %42
  %51 = load i8, i8* %12, align 1
  %52 = zext i8 %51 to i32
  %53 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %54 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 1, %55
  %57 = and i32 %52, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %92

62:                                               ; preds = %50
  store i32 16, i32* %9, align 4
  %63 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %6, align 8
  %66 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 %64, %68
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %71 = call i32 @wf_fcu_read_reg(%struct.wf_fcu_priv* %63, i32 %69, i8* %70, i32 2)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %92

77:                                               ; preds = %62
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 8, %81
  %83 = shl i32 %80, %82
  %84 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %86, %87
  %89 = or i32 %83, %88
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %5, align 8
  store i8 %90, i8* %91, align 1
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %77, %74, %59, %47, %39, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @wf_fcu_read_reg(%struct.wf_fcu_priv*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
