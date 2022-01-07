; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_enable_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_enable_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_idmac_enable_watermark(%struct.ipuv3_channel* %0, i32 %1) #0 {
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
  %11 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %12 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %16 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @IDMAC_WM_EN(i32 %18)
  %20 = call i32 @ipu_idmac_read(%struct.ipu_soc* %15, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %25 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 32
  %28 = shl i32 1, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %2
  %32 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = srem i32 %34, 32
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %31, %23
  %41 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %3, align 8
  %44 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IDMAC_WM_EN(i32 %45)
  %47 = call i32 @ipu_idmac_write(%struct.ipu_soc* %41, i32 %42, i32 %46)
  %48 = load %struct.ipu_soc*, %struct.ipu_soc** %5, align 8
  %49 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %48, i32 0, i32 0
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IDMAC_WM_EN(i32) #1

declare dso_local i32 @ipu_idmac_write(%struct.ipu_soc*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
