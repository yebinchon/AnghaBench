; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_skip_smfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_skip_smfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CSI_SKIP = common dso_local global i32 0, align 4
@CSI_MAX_RATIO_SKIP_SMFC_MASK = common dso_local global i32 0, align 4
@CSI_ID_2_SKIP_MASK = common dso_local global i32 0, align 4
@CSI_SKIP_SMFC_MASK = common dso_local global i32 0, align 4
@CSI_MAX_RATIO_SKIP_SMFC_SHIFT = common dso_local global i32 0, align 4
@CSI_ID_2_SKIP_SHIFT = common dso_local global i32 0, align 4
@CSI_SKIP_SMFC_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_csi_set_skip_smfc(%struct.ipu_csi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_csi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %57

20:                                               ; preds = %14
  %21 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %22 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %21, i32 0, i32 0
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %26 = load i32, i32* @CSI_SKIP, align 4
  %27 = call i32 @ipu_csi_read(%struct.ipu_csi* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @CSI_MAX_RATIO_SKIP_SMFC_MASK, align 4
  %29 = load i32, i32* @CSI_ID_2_SKIP_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CSI_SKIP_SMFC_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @CSI_MAX_RATIO_SKIP_SMFC_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CSI_ID_2_SKIP_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CSI_SKIP_SMFC_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %42, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @CSI_SKIP, align 4
  %52 = call i32 @ipu_csi_write(%struct.ipu_csi* %49, i32 %50, i32 %51)
  %53 = load %struct.ipu_csi*, %struct.ipu_csi** %6, align 8
  %54 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %20, %17
  %58 = load i32, i32* %5, align 4
  ret i32 %58
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
