; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_core.c_ssi_waketest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_core.c_ssi_waketest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_client = type { i32 }
%struct.hsi_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_ssi_port = type { i32 }
%struct.hsi_controller = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_ssi_controller = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssi_waketest(%struct.hsi_client* %0, i32 %1) #0 {
  %3 = alloca %struct.hsi_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hsi_port*, align 8
  %6 = alloca %struct.omap_ssi_port*, align 8
  %7 = alloca %struct.hsi_controller*, align 8
  %8 = alloca %struct.omap_ssi_controller*, align 8
  store %struct.hsi_client* %0, %struct.hsi_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hsi_client*, %struct.hsi_client** %3, align 8
  %10 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %9)
  store %struct.hsi_port* %10, %struct.hsi_port** %5, align 8
  %11 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %12 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %11)
  store %struct.omap_ssi_port* %12, %struct.omap_ssi_port** %6, align 8
  %13 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %14 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.hsi_controller* @to_hsi_controller(i32 %16)
  store %struct.hsi_controller* %17, %struct.hsi_controller** %7, align 8
  %18 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %19 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %18)
  store %struct.omap_ssi_controller* %19, %struct.omap_ssi_controller** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %26 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %6, align 8
  %28 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %2
  %32 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %33 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  %37 = call i32 @SSI_WAKE(i32 0)
  %38 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %8, align 8
  %39 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %42 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @SSI_SET_WAKE_REG(i32 %43)
  %45 = add nsw i64 %40, %44
  %46 = call i32 @writel_relaxed(i32 %37, i64 %45)
  br label %63

47:                                               ; preds = %2
  %48 = call i32 @SSI_WAKE(i32 0)
  %49 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %8, align 8
  %50 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.hsi_port*, %struct.hsi_port** %5, align 8
  %53 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @SSI_CLEAR_WAKE_REG(i32 %54)
  %56 = add nsw i64 %51, %55
  %57 = call i32 @writel_relaxed(i32 %48, i64 %56)
  %58 = load %struct.hsi_controller*, %struct.hsi_controller** %7, align 8
  %59 = getelementptr inbounds %struct.hsi_controller, %struct.hsi_controller* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pm_runtime_put(i32 %61)
  br label %63

63:                                               ; preds = %47, %31
  ret void
}

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @SSI_WAKE(i32) #1

declare dso_local i64 @SSI_SET_WAKE_REG(i32) #1

declare dso_local i64 @SSI_CLEAR_WAKE_REG(i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
