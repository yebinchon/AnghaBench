; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_clear_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_clear_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

@IPU_GPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_idmac_clear_buffer(%struct.ipuv3_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ipuv3_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %8, i32 0, i32 1
  %10 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  store %struct.ipu_soc* %10, %struct.ipu_soc** %5, align 8
  %11 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %15 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %19 = load i32, i32* @IPU_GPR, align 4
  %20 = call i32 @ipu_cm_write(%struct.ipu_soc* %18, i32 -265289728, i32 %19)
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %43 [
    i32 0, label %22
    i32 1, label %29
    i32 2, label %36
  ]

22:                                               ; preds = %2
  %23 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @idma_mask(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IPU_CHA_BUF0_RDY(i32 %26)
  %28 = call i32 @ipu_cm_write(%struct.ipu_soc* %23, i32 %25, i32 %27)
  br label %44

29:                                               ; preds = %2
  %30 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @idma_mask(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @IPU_CHA_BUF1_RDY(i32 %33)
  %35 = call i32 @ipu_cm_write(%struct.ipu_soc* %30, i32 %32, i32 %34)
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @idma_mask(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IPU_CHA_BUF2_RDY(i32 %40)
  %42 = call i32 @ipu_cm_write(%struct.ipu_soc* %37, i32 %39, i32 %41)
  br label %44

43:                                               ; preds = %2
  br label %44

44:                                               ; preds = %43, %36, %29, %22
  %45 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %46 = load i32, i32* @IPU_GPR, align 4
  %47 = call i32 @ipu_cm_write(%struct.ipu_soc* %45, i32 0, i32 %46)
  %48 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %49 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_cm_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @idma_mask(i32) #1

declare dso_local i32 @IPU_CHA_BUF0_RDY(i32) #1

declare dso_local i32 @IPU_CHA_BUF1_RDY(i32) #1

declare dso_local i32 @IPU_CHA_BUF2_RDY(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
