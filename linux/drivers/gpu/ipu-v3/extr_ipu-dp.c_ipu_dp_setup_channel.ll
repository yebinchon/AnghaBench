; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dp.c_ipu_dp_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_dp = type { i32, i32 }
%struct.ipu_flow = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.ipu_dp_priv* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ipu_dp_priv = type { i32, i32 }

@DP_COM_CONF_CSC_DEF_BOTH = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_UNKNOWN = common dso_local global i64 0, align 8
@DP_COM_CONF_CSC_DEF_BG = common dso_local global i32 0, align 4
@DP_COM_CONF_CSC_DEF_FG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_dp_setup_channel(%struct.ipu_dp* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ipu_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipu_flow*, align 8
  %8 = alloca %struct.ipu_dp_priv*, align 8
  store %struct.ipu_dp* %0, %struct.ipu_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ipu_dp*, %struct.ipu_dp** %4, align 8
  %10 = call %struct.ipu_flow* @to_flow(%struct.ipu_dp* %9)
  store %struct.ipu_flow* %10, %struct.ipu_flow** %7, align 8
  %11 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %12 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %11, i32 0, i32 3
  %13 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %12, align 8
  store %struct.ipu_dp_priv* %13, %struct.ipu_dp_priv** %8, align 8
  %14 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %15 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.ipu_dp*, %struct.ipu_dp** %4, align 8
  %19 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ipu_dp*, %struct.ipu_dp** %4, align 8
  %21 = getelementptr inbounds %struct.ipu_dp, %struct.ipu_dp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %27 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %30 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %34 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %28
  %39 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %40 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %41 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %45 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DP_COM_CONF_CSC_DEF_BOTH, align 4
  %48 = call i32 @ipu_dp_csc_init(%struct.ipu_flow* %39, i64 %43, i32 %46, i32 %47)
  br label %89

49:                                               ; preds = %28
  %50 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %51 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IPUV3_COLORSPACE_UNKNOWN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %49
  %57 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %58 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %62 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %60, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %56, %49
  %67 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %68 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %69 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %73 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DP_COM_CONF_CSC_DEF_BG, align 4
  %76 = call i32 @ipu_dp_csc_init(%struct.ipu_flow* %67, i64 %71, i32 %74, i32 %75)
  br label %88

77:                                               ; preds = %56
  %78 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %79 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %80 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ipu_flow*, %struct.ipu_flow** %7, align 8
  %84 = getelementptr inbounds %struct.ipu_flow, %struct.ipu_flow* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @DP_COM_CONF_CSC_DEF_FG, align 4
  %87 = call i32 @ipu_dp_csc_init(%struct.ipu_flow* %78, i64 %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %77, %66
  br label %89

89:                                               ; preds = %88, %38
  %90 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %91 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ipu_srm_dp_update(i32 %92, i32 1)
  %94 = load %struct.ipu_dp_priv*, %struct.ipu_dp_priv** %8, align 8
  %95 = getelementptr inbounds %struct.ipu_dp_priv, %struct.ipu_dp_priv* %94, i32 0, i32 0
  %96 = call i32 @mutex_unlock(i32* %95)
  ret i32 0
}

declare dso_local %struct.ipu_flow* @to_flow(%struct.ipu_dp*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ipu_dp_csc_init(%struct.ipu_flow*, i64, i32, i32) #1

declare dso_local i32 @ipu_srm_dp_update(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
