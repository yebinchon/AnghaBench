; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_set_bsc_reg_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_set_bsc_reg_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmstb_i2c_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BSC_CTLHI_REG_DATAREG_SIZE_MASK = common dso_local global i32 0, align 4
@ctlhi_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmstb_i2c_dev*)* @brcmstb_i2c_set_bsc_reg_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev* %0) #0 {
  %2 = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.brcmstb_i2c_dev* %0, %struct.brcmstb_i2c_dev** %2, align 8
  %3 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %4 = call i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev* %3)
  %5 = sext i32 %4 to i64
  %6 = icmp eq i64 %5, 4
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @BSC_CTLHI_REG_DATAREG_SIZE_MASK, align 4
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %10 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @BSC_CTLHI_REG_DATAREG_SIZE_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %17 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %15
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %13, %7
  %23 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %24 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %25 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ctlhi_reg, align 4
  %30 = call i32 @bsc_writel(%struct.brcmstb_i2c_dev* %23, i32 %28, i32 %29)
  %31 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %2, align 8
  %32 = call i32 @brcmstb_i2c_set_bus_speed(%struct.brcmstb_i2c_dev* %31)
  ret void
}

declare dso_local i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @bsc_writel(%struct.brcmstb_i2c_dev*, i32, i32) #1

declare dso_local i32 @brcmstb_i2c_set_bus_speed(%struct.brcmstb_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
