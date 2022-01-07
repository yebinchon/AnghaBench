; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-dmfc.c_ipu_dmfc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dmfc_channel = type { i32 }
%struct.ipu_soc = type { %struct.ipu_dmfc_priv* }
%struct.ipu_dmfc_priv = type { %struct.dmfc_channel* }

@DMFC_NUM_CHANNELS = common dso_local global i32 0, align 4
@dmfcdata = common dso_local global %struct.TYPE_2__* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dmfc_channel* @ipu_dmfc_get(%struct.ipu_soc* %0, i32 %1) #0 {
  %3 = alloca %struct.dmfc_channel*, align 8
  %4 = alloca %struct.ipu_soc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ipu_dmfc_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.ipu_soc* %0, %struct.ipu_soc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipu_soc*, %struct.ipu_soc** %4, align 8
  %9 = getelementptr inbounds %struct.ipu_soc, %struct.ipu_soc* %8, i32 0, i32 0
  %10 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %9, align 8
  store %struct.ipu_dmfc_priv* %10, %struct.ipu_dmfc_priv** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @DMFC_NUM_CHANNELS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dmfcdata, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.ipu_dmfc_priv*, %struct.ipu_dmfc_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ipu_dmfc_priv, %struct.ipu_dmfc_priv* %25, i32 0, i32 0
  %27 = load %struct.dmfc_channel*, %struct.dmfc_channel** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.dmfc_channel, %struct.dmfc_channel* %27, i64 %29
  store %struct.dmfc_channel* %30, %struct.dmfc_channel** %3, align 8
  br label %39

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.dmfc_channel* @ERR_PTR(i32 %37)
  store %struct.dmfc_channel* %38, %struct.dmfc_channel** %3, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.dmfc_channel*, %struct.dmfc_channel** %3, align 8
  ret %struct.dmfc_channel* %40
}

declare dso_local %struct.dmfc_channel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
