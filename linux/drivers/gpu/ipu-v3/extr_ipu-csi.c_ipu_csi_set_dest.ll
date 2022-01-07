; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_dest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32 }

@IPU_CSI_DEST_IDMAC = common dso_local global i32 0, align 4
@CSI_DATA_DEST_IDMAC = common dso_local global i32 0, align 4
@CSI_DATA_DEST_IC = common dso_local global i32 0, align 4
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_DEST_MASK = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DATA_DEST_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_csi_set_dest(%struct.ipu_csi* %0, i32 %1) #0 {
  %3 = alloca %struct.ipu_csi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IPU_CSI_DEST_IDMAC, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @CSI_DATA_DEST_IDMAC, align 4
  store i32 %12, i32* %7, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CSI_DATA_DEST_IC, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %17 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %21 = load i32, i32* @CSI_SENS_CONF, align 4
  %22 = call i32 @ipu_csi_read(%struct.ipu_csi* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @CSI_SENS_CONF_DATA_DEST_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @CSI_SENS_CONF_DATA_DEST_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CSI_SENS_CONF, align 4
  %35 = call i32 @ipu_csi_write(%struct.ipu_csi* %32, i32 %33, i32 %34)
  %36 = load %struct.ipu_csi*, %struct.ipu_csi** %3, align 8
  %37 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %36, i32 0, i32 0
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  ret i32 0
}

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
