; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_cr_mn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_reg.c_analogix_dp_set_video_cr_mn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_device = type { i64 }

@REGISTER_M = common dso_local global i32 0, align 4
@ANALOGIX_DP_SYS_CTL_4 = common dso_local global i64 0, align 8
@FIX_M_VID = common dso_local global i32 0, align 4
@ANALOGIX_DP_M_VID_0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_M_VID_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_M_VID_2 = common dso_local global i64 0, align 8
@ANALOGIX_DP_N_VID_0 = common dso_local global i64 0, align 8
@ANALOGIX_DP_N_VID_1 = common dso_local global i64 0, align 8
@ANALOGIX_DP_N_VID_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @analogix_dp_set_video_cr_mn(%struct.analogix_dp_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.analogix_dp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.analogix_dp_device* %0, %struct.analogix_dp_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @REGISTER_M, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %88

13:                                               ; preds = %4
  %14 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %15 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ANALOGIX_DP_SYS_CTL_4, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @FIX_M_VID, align 4
  %21 = load i32, i32* %9, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %25 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ANALOGIX_DP_SYS_CTL_4, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ANALOGIX_DP_M_VID_0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %44 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ANALOGIX_DP_M_VID_1, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %54 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ANALOGIX_DP_M_VID_2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 255
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %63 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ANALOGIX_DP_N_VID_0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load i32, i32* %8, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %73 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ANALOGIX_DP_N_VID_1, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 16
  %80 = and i32 %79, 255
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %83 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ANALOGIX_DP_N_VID_2, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  br label %124

88:                                               ; preds = %4
  %89 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %90 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @ANALOGIX_DP_SYS_CTL_4, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @readl(i64 %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @FIX_M_VID, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %101 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ANALOGIX_DP_SYS_CTL_4, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writel(i32 %99, i64 %104)
  %106 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %107 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ANALOGIX_DP_N_VID_0, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 0, i64 %110)
  %112 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %113 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @ANALOGIX_DP_N_VID_1, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i32 128, i64 %116)
  %118 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %5, align 8
  %119 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ANALOGIX_DP_N_VID_2, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 0, i64 %122)
  br label %124

124:                                              ; preds = %88, %13
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
