; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_set_hdmi_src.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_set_hdmi_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun8i_tcon_top = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Device is not TCON TOP!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"TCON index must be 2 or 3!\0A\00", align 1
@TCON_TOP_GATE_SRC_REG = common dso_local global i64 0, align 8
@TCON_TOP_HDMI_SRC_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun8i_tcon_top_set_hdmi_src(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sun8i_tcon_top*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.sun8i_tcon_top* @dev_get_drvdata(%struct.device* %9)
  store %struct.sun8i_tcon_top* %10, %struct.sun8i_tcon_top** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sun8i_tcon_top_node_is_tcon_top(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %64

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %6, align 8
  %34 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %6, align 8
  %38 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCON_TOP_GATE_SRC_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @TCON_TOP_HDMI_SRC_MSK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @TCON_TOP_HDMI_SRC_MSK, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @FIELD_PREP(i32 %47, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %6, align 8
  %55 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCON_TOP_GATE_SRC_REG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %6, align 8
  %61 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %60, i32 0, i32 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %32, %27, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.sun8i_tcon_top* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sun8i_tcon_top_node_is_tcon_top(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
