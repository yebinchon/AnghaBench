; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_port = type { i32 }
%struct.omap_ssi_port = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Wake out high %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*)* @ssi_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_start_tx(%struct.hsi_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.omap_ssi_port*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  %6 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %7 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %6)
  store %struct.hsi_port* %7, %struct.hsi_port** %4, align 8
  %8 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %9 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %8)
  store %struct.omap_ssi_port* %9, %struct.omap_ssi_port** %5, align 8
  %10 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %11 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %10, i32 0, i32 0
  %12 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %13 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %17 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %20 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %26 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  store i32 0, i32* %2, align 4
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %30 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_bh(i32* %30)
  %32 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %33 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %24
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
