; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_csc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_csc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_flow = type { i64 }

@DP_COM_CONF = common dso_local global i64 0, align 8
@DP_COM_CONF_CSC_DEF_MASK = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_RGB = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i32 0, align 4
@DP_CSC_A_0 = common dso_local global i64 0, align 8
@DP_CSC_A_1 = common dso_local global i64 0, align 8
@DP_CSC_A_2 = common dso_local global i64 0, align 8
@DP_CSC_A_3 = common dso_local global i64 0, align 8
@DP_CSC_0 = common dso_local global i64 0, align 8
@DP_CSC_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_flow*, i32, i32, i32)* @ipu_dp_csc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_dp_csc_init(%struct.ipu_flow* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipu_flow*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipu_flow* %0, %struct.ipu_flow** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %11 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DP_COM_CONF, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @DP_COM_CONF_CSC_DEF_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %26 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DP_COM_CONF, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  br label %124

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IPUV3_COLORSPACE_RGB, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IPUV3_COLORSPACE_YUV, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %35
  %40 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %41 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DP_CSC_A_0, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 19726489, i64 %44)
  %46 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %47 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DP_CSC_A_1, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 61407290, i64 %50)
  %52 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %53 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DP_CSC_A_2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 16778070, i64 %56)
  %58 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %59 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DP_CSC_A_3, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 53018880, i64 %62)
  %64 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %65 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DP_CSC_0, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 -2147482666, i64 %68)
  %70 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %71 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DP_CSC_1, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 -2113895936, i64 %74)
  br label %113

76:                                               ; preds = %35, %31
  %77 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %78 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DP_CSC_A_0, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 149, i64 %81)
  %83 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %84 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @DP_CSC_A_1, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 9765068, i64 %87)
  %89 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %90 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DP_CSC_A_2, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 60294094, i64 %93)
  %95 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %96 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DP_CSC_A_3, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 16711829, i64 %99)
  %101 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %102 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DP_CSC_0, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 2118254592, i64 %105)
  %107 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %108 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DP_CSC_1, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 2111193354, i64 %111)
  br label %113

113:                                              ; preds = %76, %39
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.ipu_flow*, %struct.ipu_flow** %5, align 8
  %119 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DP_COM_CONF, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  br label %124

124:                                              ; preds = %113, %23
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
