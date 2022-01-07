; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_buffer_is_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_buffer_is_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_idmac_buffer_is_ready(%struct.ipuv3_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.ipuv3_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_soc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %8, i32 0, i32 1
  %10 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  store %struct.ipu_soc* %10, %struct.ipu_soc** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %12 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %37 [
    i32 0, label %16
    i32 1, label %23
    i32 2, label %30
  ]

16:                                               ; preds = %2
  %17 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %18 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IPU_CHA_BUF0_RDY(i32 %20)
  %22 = call i32 @ipu_cm_read(%struct.ipu_soc* %17, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %25 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @IPU_CHA_BUF1_RDY(i32 %27)
  %29 = call i32 @ipu_cm_read(%struct.ipu_soc* %24, i32 %28)
  store i32 %29, i32* %7, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %32 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @IPU_CHA_BUF2_RDY(i32 %34)
  %36 = call i32 @ipu_cm_read(%struct.ipu_soc* %31, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %2, %30, %23, %16
  %38 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %39 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %38, i32 0, i32 0
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @idma_mask(i32 %45)
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_cm_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IPU_CHA_BUF0_RDY(i32) #1

declare dso_local i32 @IPU_CHA_BUF1_RDY(i32) #1

declare dso_local i32 @IPU_CHA_BUF2_RDY(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idma_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
