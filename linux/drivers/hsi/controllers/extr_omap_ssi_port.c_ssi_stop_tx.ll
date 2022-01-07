; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap_ssi_port = type { i32, i32, i64 }
%struct.hsi_controller = type { i32 }
%struct.omap_ssi_controller = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Wake out low %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*)* @ssi_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_stop_tx(%struct.hsi_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.omap_ssi_port*, align 8
  %6 = alloca %struct.hsi_controller*, align 8
  %7 = alloca %struct.omap_ssi_controller*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  %8 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %9 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %8)
  store %struct.hsi_port* %9, %struct.hsi_port** %4, align 8
  %10 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %11 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %10)
  store %struct.omap_ssi_port* %11, %struct.omap_ssi_port** %5, align 8
  %12 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %13 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.hsi_controller* @to_hsi_controller(i32 %15)
  store %struct.hsi_controller* %16, %struct.hsi_controller** %6, align 8
  %17 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %18 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %17)
  store %struct.omap_ssi_controller* %18, %struct.omap_ssi_controller** %7, align 8
  %19 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %20 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %19, i32 0, i32 1
  %21 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %22 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(%struct.TYPE_2__* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %26 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %29 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %36 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %36, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %42 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock_bh(i32* %42)
  store i32 0, i32* %2, align 4
  br label %66

44:                                               ; preds = %1
  %45 = call i32 @SSI_WAKE(i32 0)
  %46 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %7, align 8
  %47 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %50 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @SSI_CLEAR_WAKE_REG(i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = call i32 @writel(i32 %45, i64 %53)
  %55 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %56 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %55, i32 0, i32 1
  %57 = call i32 @spin_unlock_bh(i32* %56)
  %58 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %59 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_mark_last_busy(i32 %60)
  %62 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %63 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pm_runtime_put_autosuspend(i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %44, %40
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @SSI_WAKE(i32) #1

declare dso_local i64 @SSI_CLEAR_WAKE_REG(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
