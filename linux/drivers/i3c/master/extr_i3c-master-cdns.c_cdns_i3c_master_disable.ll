; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_i3c_master = type { i64 }

@CTRL = common dso_local global i64 0, align 8
@CTRL_DEV_EN = common dso_local global i32 0, align 4
@MST_STATUS0 = common dso_local global i64 0, align 8
@MST_STATUS0_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns_i3c_master*)* @cdns_i3c_master_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_disable(%struct.cdns_i3c_master* %0) #0 {
  %2 = alloca %struct.cdns_i3c_master*, align 8
  %3 = alloca i32, align 4
  store %struct.cdns_i3c_master* %0, %struct.cdns_i3c_master** %2, align 8
  %4 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %5 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @CTRL_DEV_EN, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %14 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %2, align 8
  %20 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MST_STATUS0, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MST_STATUS0_IDLE, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @readl_poll_timeout(i64 %23, i32 %24, i32 %27, i32 10, i32 1000000)
  ret i32 %28
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
