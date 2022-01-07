; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_testgen_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-csi.c_ipu_csi_set_testgen_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_csi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"value of pixel_clk extends normal range\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSI_SENS_CONF = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DIVRATIO_MASK = common dso_local global i32 0, align 4
@CSI_SENS_CONF_DIVRATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipu_csi*, i32, i32)* @ipu_csi_set_testgen_mclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_csi_set_testgen_mclk(%struct.ipu_csi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipu_csi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipu_csi* %0, %struct.ipu_csi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sdiv i32 %10, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sgt i32 %14, 255
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16, %3
  %20 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %21 = getelementptr inbounds %struct.ipu_csi, %struct.ipu_csi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %44

28:                                               ; preds = %16
  %29 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %30 = load i32, i32* @CSI_SENS_CONF, align 4
  %31 = call i32 @ipu_csi_read(%struct.ipu_csi* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @CSI_SENS_CONF_DIVRATIO_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.ipu_csi*, %struct.ipu_csi** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CSI_SENS_CONF_DIVRATIO_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %37, %40
  %42 = load i32, i32* @CSI_SENS_CONF, align 4
  %43 = call i32 @ipu_csi_write(%struct.ipu_csi* %36, i32 %41, i32 %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %28, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ipu_csi_read(%struct.ipu_csi*, i32) #1

declare dso_local i32 @ipu_csi_write(%struct.ipu_csi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
