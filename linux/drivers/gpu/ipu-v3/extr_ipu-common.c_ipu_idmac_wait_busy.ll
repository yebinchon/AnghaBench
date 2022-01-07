; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_wait_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-common.c_ipu_idmac_wait_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32, %struct.ipu_soc* }
%struct.ipu_soc = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_idmac_wait_busy(%struct.ipuv3_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_soc*, align 8
  %7 = alloca i64, align 8
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %8, i32 0, i32 1
  %10 = load %struct.ipu_soc*, %struct.ipu_soc** %9, align 8
  store %struct.ipu_soc* %10, %struct.ipu_soc** %6, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add i64 %11, %13
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %36, %2
  %16 = load %struct.ipu_soc*, %struct.ipu_soc** %6, align 8
  %17 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IDMAC_CHA_BUSY(i32 %19)
  %21 = call i32 @ipu_idmac_read(%struct.ipu_soc* %16, i32 %20)
  %22 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ipuv3_channel, %struct.ipuv3_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @idma_mask(i32 %24)
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %15
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @time_after(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %39

36:                                               ; preds = %28
  %37 = call i32 (...) @cpu_relax()
  br label %15

38:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ipu_idmac_read(%struct.ipu_soc*, i32) #1

declare dso_local i32 @IDMAC_CHA_BUSY(i32) #1

declare dso_local i32 @idma_mask(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
