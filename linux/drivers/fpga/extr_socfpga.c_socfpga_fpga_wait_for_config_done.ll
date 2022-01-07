; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_wait_for_config_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_socfpga.c_socfpga_fpga_wait_for_config_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socfpga_fpga_priv = type { i32 }

@SOCFPGA_FPGMGR_MON_CONF_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socfpga_fpga_priv*)* @socfpga_fpga_wait_for_config_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_fpga_wait_for_config_done(%struct.socfpga_fpga_priv* %0) #0 {
  %2 = alloca %struct.socfpga_fpga_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.socfpga_fpga_priv* %0, %struct.socfpga_fpga_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %2, align 8
  %6 = call i32 @socfpga_fpga_disable_irqs(%struct.socfpga_fpga_priv* %5)
  %7 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %2, align 8
  %8 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %7, i32 0, i32 0
  %9 = call i32 @init_completion(i32* %8)
  %10 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %2, align 8
  %11 = load i32, i32* @SOCFPGA_FPGMGR_MON_CONF_DONE, align 4
  %12 = call i32 @socfpga_fpga_enable_irqs(%struct.socfpga_fpga_priv* %10, i32 %11)
  %13 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %2, align 8
  %14 = getelementptr inbounds %struct.socfpga_fpga_priv, %struct.socfpga_fpga_priv* %13, i32 0, i32 0
  %15 = call i32 @msecs_to_jiffies(i32 10)
  %16 = call i32 @wait_for_completion_interruptible_timeout(i32* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.socfpga_fpga_priv*, %struct.socfpga_fpga_priv** %2, align 8
  %24 = call i32 @socfpga_fpga_disable_irqs(%struct.socfpga_fpga_priv* %23)
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @socfpga_fpga_disable_irqs(%struct.socfpga_fpga_priv*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @socfpga_fpga_enable_irqs(%struct.socfpga_fpga_priv*, i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
