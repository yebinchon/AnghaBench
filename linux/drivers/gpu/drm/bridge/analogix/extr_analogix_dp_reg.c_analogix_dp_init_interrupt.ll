; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_init_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@INT_POL1 = common dso_local global i32 0, align 4
@INT_POL0 = common dso_local global i32 0, align 4
@ANALOGIX_DP_INT_CTL = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_STA_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_STA_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_STA_3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_STA_4 = common dso_local global i64 0, align 8
@ANALOGIX_DP_INT_STA = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_MASK_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_MASK_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_MASK_3 = common dso_local global i64 0, align 8
@ANALOGIX_DP_COMMON_INT_MASK_4 = common dso_local global i64 0, align 8
@ANALOGIX_DP_INT_STA_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_init_interrupt(%struct.analogix_dp_device* %0) #0 {
  %2 = alloca %struct.analogix_dp_device*, align 8
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %2, align 8
  %3 = load i32, i32* @INT_POL1, align 4
  %4 = load i32, i32* @INT_POL0, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %7 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ANALOGIX_DP_INT_CTL, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 255, i64 %16)
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 79, i64 %22)
  %24 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %25 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_3, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 224, i64 %28)
  %30 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %31 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ANALOGIX_DP_COMMON_INT_STA_4, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 231, i64 %34)
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %37 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ANALOGIX_DP_INT_STA, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 99, i64 %40)
  %42 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %43 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ANALOGIX_DP_COMMON_INT_MASK_1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 0, i64 %46)
  %48 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %49 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ANALOGIX_DP_COMMON_INT_MASK_2, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 0, i64 %52)
  %54 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %55 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ANALOGIX_DP_COMMON_INT_MASK_3, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %61 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ANALOGIX_DP_COMMON_INT_MASK_4, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 0, i64 %64)
  %66 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %2, align 8
  %67 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ANALOGIX_DP_INT_STA_MASK, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 0, i64 %70)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
