; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_de_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_tcon_top.c_sun8i_tcon_top_de_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun8i_tcon_top = type { i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Device is not TCON TOP!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Mixer index is too high!\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TCON index is too high!\0A\00", align 1
@TCON_TOP_PORT_SEL_REG = common dso_local global i64 0, align 8
@TCON_TOP_PORT_DE0_MSK = common dso_local global i32 0, align 4
@TCON_TOP_PORT_DE1_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun8i_tcon_top_de_config(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sun8i_tcon_top*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.sun8i_tcon_top* @dev_get_drvdata(%struct.device* %11)
  store %struct.sun8i_tcon_top* %12, %struct.sun8i_tcon_top** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sun8i_tcon_top_node_is_tcon_top(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %84

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %84

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %84

39:                                               ; preds = %31
  %40 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %8, align 8
  %41 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %8, align 8
  %45 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TCON_TOP_PORT_SEL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %39
  %53 = load i32, i32* @TCON_TOP_PORT_DE0_MSK, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @TCON_TOP_PORT_DE0_MSK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @FIELD_PREP(i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %72

62:                                               ; preds = %39
  %63 = load i32, i32* @TCON_TOP_PORT_DE1_MSK, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @TCON_TOP_PORT_DE1_MSK, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @FIELD_PREP(i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %62, %52
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %8, align 8
  %75 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TCON_TOP_PORT_SEL_REG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load %struct.sun8i_tcon_top*, %struct.sun8i_tcon_top** %8, align 8
  %81 = getelementptr inbounds %struct.sun8i_tcon_top, %struct.sun8i_tcon_top* %80, i32 0, i32 0
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %72, %34, %26, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
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
