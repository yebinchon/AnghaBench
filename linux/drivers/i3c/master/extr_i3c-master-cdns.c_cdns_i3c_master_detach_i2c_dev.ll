; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_detach_i2c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_detach_i2c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_dev_desc = type { i32 }
%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { i32, i64 }
%struct.cdns_i3c_i2c_dev_data = type { i32 }

@DEVS_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_dev_desc*)* @cdns_i3c_master_detach_i2c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_detach_i2c_dev(%struct.i2c_dev_desc* %0) #0 {
  %2 = alloca %struct.i2c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.cdns_i3c_master*, align 8
  %5 = alloca %struct.cdns_i3c_i2c_dev_data*, align 8
  store %struct.i2c_dev_desc* %0, %struct.i2c_dev_desc** %2, align 8
  %6 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %7 = call %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc* %6)
  store %struct.i3c_master_controller* %7, %struct.i3c_master_controller** %3, align 8
  %8 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %9 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %8)
  store %struct.cdns_i3c_master* %9, %struct.cdns_i3c_master** %4, align 8
  %10 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %11 = call %struct.cdns_i3c_i2c_dev_data* @i2c_dev_get_master_data(%struct.i2c_dev_desc* %10)
  store %struct.cdns_i3c_i2c_dev_data* %11, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %12 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %13 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DEVS_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %19 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DEVS_CTRL_DEV_CLR(i32 %20)
  %22 = or i32 %17, %21
  %23 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %24 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEVS_CTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %30 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %34 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.i2c_dev_desc*, %struct.i2c_dev_desc** %2, align 8
  %38 = call i32 @i2c_dev_set_master_data(%struct.i2c_dev_desc* %37, i32* null)
  %39 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %40 = call i32 @kfree(%struct.cdns_i3c_i2c_dev_data* %39)
  ret void
}

declare dso_local %struct.i3c_master_controller* @i2c_dev_get_master(%struct.i2c_dev_desc*) #1

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.cdns_i3c_i2c_dev_data* @i2c_dev_get_master_data(%struct.i2c_dev_desc*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @DEVS_CTRL_DEV_CLR(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @i2c_dev_set_master_data(%struct.i2c_dev_desc*, i32*) #1

declare dso_local i32 @kfree(%struct.cdns_i3c_i2c_dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
