; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_mipi_datatype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_mipi_datatype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.ipu_csi_bus_config = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_CSI2_DPHY = common dso_local global i32 0, align 4
@CSI_MIPI_DI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_csi_set_mipi_datatype(%struct.ipu_csi* %0, i32 %1, %struct.v4l2_mbus_framefmt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_csi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.ipu_csi_bus_config, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.v4l2_mbus_framefmt* %2, %struct.v4l2_mbus_framefmt** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_MBUS_CSI2_DPHY, align 4
  %22 = call i32 @mbus_code_to_bus_cfg(%struct.ipu_csi_bus_config* %8, i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %17
  %28 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %29 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %33 = load i32, i32* @CSI_MIPI_DI, align 4
  %34 = call i32 @ipu_csi_read(%struct.ipu_csi* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 8
  %37 = shl i32 255, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = getelementptr inbounds %struct.ipu_csi_bus_config, %struct.ipu_csi_bus_config* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 8
  %45 = shl i32 %42, %44
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @CSI_MIPI_DI, align 4
  %51 = call i32 @ipu_csi_write(%struct.ipu_csi* %48, i32 %49, i32 %50)
  %52 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %53 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %52, i32 0, i32 0
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %27, %25, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @mbus_code_to_bus_cfg(%struct.ipu_csi_bus_config*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
