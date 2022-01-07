; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_compute_fifo_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_compute_fifo_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FEAT_OMAP3_DSI_FIFO_BUG = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispc_ovl_compute_fifo_thresholds(%struct.dispc_device* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dispc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %19 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dispc_ovl_get_burst_size(%struct.dispc_device* %23, i32 %24)
  store i32 %25, i32* %16, align 4
  %26 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dispc_ovl_get_fifo_size(%struct.dispc_device* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %17, align 4
  %34 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %35 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %34)
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @dispc_ovl_get_fifo_size(%struct.dispc_device* %38, i32 %39)
  %41 = load i32, i32* %15, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %17, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %17, align 4
  br label %32

46:                                               ; preds = %32
  br label %49

47:                                               ; preds = %6
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.dispc_device*, %struct.dispc_device** %7, align 8
  %54 = load i32, i32* @FEAT_OMAP3_DSI_FIFO_BUG, align 4
  %55 = call i64 @dispc_has_feature(%struct.dispc_device* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = mul i32 %59, 2
  %61 = sub i32 %58, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = sub i32 %63, %64
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %85

67:                                               ; preds = %52, %49
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @OMAP_DSS_WB, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %84

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %16, align 4
  %78 = sub i32 %76, %77
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub i32 %80, %81
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %71
  br label %85

85:                                               ; preds = %84, %57
  ret void
}

declare dso_local i32 @dispc_ovl_get_burst_size(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_ovl_get_fifo_size(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

declare dso_local i64 @dispc_has_feature(%struct.dispc_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
