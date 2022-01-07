; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_enable_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_enable_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_idmac_enable_channel(%struct.ipuv3_channel* %0) #0 {
  %2 = alloca %struct.ipuv3_channel*, align 8
  %3 = alloca %struct.ipu_soc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %2, align 8
  %6 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %7 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %6, i32 0, i32 1
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %7, align 8
  store %struct.ipu_soc* %8, %struct.ipu_soc** %3, align 8
  %9 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %14 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %15 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IDMAC_CHA_EN(i32 %16)
  %18 = call i32 @ipu_idmac_read(%struct.ipu_soc* %13, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %20 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @idma_mask(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %2, align 8
  %28 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @IDMAC_CHA_EN(i32 %29)
  %31 = call i32 @ipu_idmac_write(%struct.ipu_soc* %25, i32 %26, i32 %30)
  %32 = load %struct.ipu_soc*, %struct.ipu_soc** %3, align 8
  %33 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IDMAC_CHA_EN(i32) #1

declare dso_local i32 @idma_mask(i32) #1

declare dso_local i32 @ipu_idmac_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
