; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_mflag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_init_mflag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@DISPC_GLOBAL_MFLAG_ATTRIBUTE = common dso_local global i32 0, align 4
@OMAP_DSS_WB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*)* @dispc_init_mflag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_init_mflag(%struct.dispc_device* %0) #0 {
  %2 = alloca %struct.dispc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %2, align 8
  %12 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %13 = load i32, i32* @DISPC_GLOBAL_MFLAG_ATTRIBUTE, align 4
  %14 = call i32 @dispc_write_reg(%struct.dispc_device* %12, i32 %13, i32 1)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %47, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %18 = call i32 @dispc_get_num_ovls(%struct.dispc_device* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @dispc_ovl_get_fifo_size(%struct.dispc_device* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %25 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dispc_ovl_set_mflag(%struct.dispc_device* %29, i32 %30, i32 1)
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sdiv i32 %33, 8
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 5
  %39 = sdiv i32 %38, 8
  %40 = load i32, i32* %5, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dispc_ovl_set_mflag_threshold(%struct.dispc_device* %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %52 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %59 = load i32, i32* @OMAP_DSS_WB, align 4
  %60 = call i32 @dispc_ovl_get_fifo_size(%struct.dispc_device* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %62 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %9, align 4
  %66 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %67 = load i32, i32* @OMAP_DSS_WB, align 4
  %68 = call i32 @dispc_ovl_set_mflag(%struct.dispc_device* %66, i32 %67, i32 1)
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sdiv i32 %70, 8
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %74, 5
  %76 = sdiv i32 %75, 8
  %77 = load i32, i32* %9, align 4
  %78 = sdiv i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load %struct.dispc_device*, %struct.dispc_device** %2, align 8
  %80 = load i32, i32* @OMAP_DSS_WB, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @dispc_ovl_set_mflag_threshold(%struct.dispc_device* %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %57, %50
  ret void
}

declare dso_local i32 @dispc_write_reg(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_get_num_ovls(%struct.dispc_device*) #1

declare dso_local i32 @dispc_ovl_get_fifo_size(%struct.dispc_device*, i32) #1

declare dso_local i32 @dispc_ovl_set_mflag(%struct.dispc_device*, i32, i32) #1

declare dso_local i32 @dispc_ovl_set_mflag_threshold(%struct.dispc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
