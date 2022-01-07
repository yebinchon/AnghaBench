; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@CSI_ACT_FRM_SIZE = common dso_local global i32 0, align 4
@CSI_OUT_FRM_CTRL = common dso_local global i32 0, align 4
@CSI_HSC_MASK = common dso_local global i32 0, align 4
@CSI_VSC_MASK = common dso_local global i32 0, align 4
@CSI_VSC_SHIFT = common dso_local global i32 0, align 4
@CSI_HSC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_csi_set_window(%struct.ipu_csi* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca %struct.ipu_csi*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %3, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %4, align 8
  %7 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 %19, 16
  %21 = or i32 %15, %20
  %22 = load i32, i32* @CSI_ACT_FRM_SIZE, align 4
  %23 = call i32 @ipu_csi_write(%struct.ipu_csi* %11, i32 %21, i32 %22)
  %24 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %25 = load i32, i32* @CSI_OUT_FRM_CTRL, align 4
  %26 = call i32 @ipu_csi_read(%struct.ipu_csi* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* @CSI_HSC_MASK, align 4
  %28 = load i32, i32* @CSI_VSC_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CSI_VSC_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CSI_HSC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %37, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @CSI_OUT_FRM_CTRL, align 4
  %49 = call i32 @ipu_csi_write(%struct.ipu_csi* %46, i32 %47, i32 %48)
  %50 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %51 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
