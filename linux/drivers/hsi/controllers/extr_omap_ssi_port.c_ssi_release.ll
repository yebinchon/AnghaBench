; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_ssi_port = type { i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.hsi_controller = type { i32 }

@SSI_WAKE_EN = common dso_local global i32 0, align 4
@SSI_MODE_SLEEP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_client*)* @ssi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_release(%struct.hsi_client* %0) #0 {
  %2 = alloca %struct.hsi_client*, align 8
  %3 = alloca %struct.hsi_port*, align 8
  %4 = alloca %struct.omap_ssi_port*, align 8
  %5 = alloca %struct.hsi_controller*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %2, align 8
  %6 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %7 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %6)
  store %struct.hsi_port* %7, %struct.hsi_port** %3, align 8
  %8 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %9 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %8)
  store %struct.omap_ssi_port* %9, %struct.omap_ssi_port** %4, align 8
  %10 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %11 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hsi_controller* @to_hsi_controller(i32 %13)
  store %struct.hsi_controller* %14, %struct.hsi_controller** %5, align 8
  %15 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %16 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %20 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.hsi_controller*, %struct.hsi_controller** %5, align 8
  %23 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %24 = call i32 @ssi_cleanup_gdd(%struct.hsi_controller* %22, %struct.hsi_client* %23)
  %25 = load %struct.hsi_client*, %struct.hsi_client** %2, align 8
  %26 = call i32 @ssi_cleanup_queues(%struct.hsi_client* %25)
  %27 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %28 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 1
  br i1 %30, label %31, label %68

31:                                               ; preds = %1
  %32 = load i32, i32* @SSI_WAKE_EN, align 4
  %33 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %34 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %33, i32 0, i32 5
  %35 = call i64 @test_and_clear_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %39 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_put_sync(i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %44 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pm_runtime_get(i32 %45)
  %47 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %48 = load i8*, i8** @SSI_MODE_SLEEP, align 8
  %49 = call i32 @ssi_set_port_mode(%struct.omap_ssi_port* %47, i8* %48)
  %50 = load i8*, i8** @SSI_MODE_SLEEP, align 8
  %51 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %52 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load i8*, i8** @SSI_MODE_SLEEP, align 8
  %55 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %56 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %59 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_put(i32 %60)
  %62 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %63 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON(i32 %66)
  br label %68

68:                                               ; preds = %42, %1
  %69 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %70 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock_bh(i32* %70)
  %72 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %73 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pm_runtime_put_sync(i32 %74)
  ret i32 0
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ssi_cleanup_gdd(%struct.hsi_controller*, %struct.hsi_client*) #1

declare dso_local i32 @ssi_cleanup_queues(%struct.hsi_client*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @ssi_set_port_mode(%struct.omap_ssi_port*, i8*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
