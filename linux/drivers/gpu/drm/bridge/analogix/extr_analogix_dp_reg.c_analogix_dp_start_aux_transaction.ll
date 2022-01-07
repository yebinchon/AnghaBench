; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_start_aux_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_start_aux_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i32, i64 }

@ANALOGIX_DP_AUX_CH_CTL_2 = common dso_local global i64 0, align 8
@AUX_EN = common dso_local global i32 0, align 4
@ANALOGIX_DP_INT_STA = common dso_local global i64 0, align 8
@RPLY_RECEIV = common dso_local global i32 0, align 4
@DP_TIMEOUT_LOOP_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"AUX CH command reply failed!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@AUX_ERR = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ANALOGIX_DP_AUX_CH_STA = common dso_local global i64 0, align 8
@AUX_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"AUX CH error happens: %d\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @analogix_dp_start_aux_transaction(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %8 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ANALOGIX_DP_AUX_CH_CTL_2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @AUX_EN, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %18 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ANALOGIX_DP_AUX_CH_CTL_2, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %24 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %48, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RPLY_RECEIV, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %56

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @DP_TIMEOUT_LOOP_COUNT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %43 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %107

48:                                               ; preds = %35
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %4, align 4
  %55 = call i32 @usleep_range(i32 10, i32 11)
  br label %29

56:                                               ; preds = %29
  %57 = load i32, i32* @RPLY_RECEIV, align 4
  %58 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %59 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %65 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @AUX_ERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %56
  %75 = load i32, i32* @AUX_ERR, align 4
  %76 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %77 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* @EREMOTEIO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %107

84:                                               ; preds = %56
  %85 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %86 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ANALOGIX_DP_AUX_CH_STA, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @AUX_STATUS_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %84
  %96 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %97 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AUX_STATUS_MASK, align 4
  %101 = and i32 %99, %100
  %102 = call i32 (i32, i8*, ...) @dev_err(i32 %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EREMOTEIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %107

105:                                              ; preds = %84
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %95, %74, %41
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
