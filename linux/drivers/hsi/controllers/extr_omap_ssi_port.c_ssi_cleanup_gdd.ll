; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_cleanup_gdd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_cleanup_gdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_controller = type { i32 }
%struct.hsi_client = type { i32 }
%struct.omap_ssi_controller = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.hsi_msg* }
%struct.hsi_msg = type { i64, %struct.hsi_client* }
%struct.hsi_port = type { i32 }
%struct.omap_ssi_port = type { i32 }

@SSI_MAX_GDD_LCH = common dso_local global i32 0, align 4
@HSI_MSG_READ = common dso_local global i64 0, align 8
@SSI_GDD_MPU_IRQ_ENABLE_REG = common dso_local global i64 0, align 8
@SSI_GDD_MPU_IRQ_STATUS_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsi_controller*, %struct.hsi_client*)* @ssi_cleanup_gdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssi_cleanup_gdd(%struct.hsi_controller* %0, %struct.hsi_client* %1) #0 {
  %3 = alloca %struct.hsi_controller*, align 8
  %4 = alloca %struct.hsi_client*, align 8
  %5 = alloca %struct.omap_ssi_controller*, align 8
  %6 = alloca %struct.hsi_port*, align 8
  %7 = alloca %struct.omap_ssi_port*, align 8
  %8 = alloca %struct.hsi_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hsi_controller* %0, %struct.hsi_controller** %3, align 8
  store %struct.hsi_client* %1, %struct.hsi_client** %4, align 8
  %12 = load %struct.hsi_controller*, %struct.hsi_controller** %3, align 8
  %13 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %12)
  store %struct.omap_ssi_controller* %13, %struct.omap_ssi_controller** %5, align 8
  %14 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %15 = call %struct.hsi_port* @hsi_get_port(%struct.hsi_client* %14)
  store %struct.hsi_port* %15, %struct.hsi_port** %6, align 8
  %16 = load %struct.hsi_port*, %struct.hsi_port** %6, align 8
  %17 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %16)
  store %struct.omap_ssi_port* %17, %struct.omap_ssi_port** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %74, %2
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SSI_MAX_GDD_LCH, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %24 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.hsi_msg*, %struct.hsi_msg** %29, align 8
  store %struct.hsi_msg* %30, %struct.hsi_msg** %8, align 8
  %31 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %32 = icmp ne %struct.hsi_msg* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %35 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %34, i32 0, i32 1
  %36 = load %struct.hsi_client*, %struct.hsi_client** %35, align 8
  %37 = load %struct.hsi_client*, %struct.hsi_client** %4, align 8
  %38 = icmp ne %struct.hsi_client* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %22
  br label %74

40:                                               ; preds = %33
  %41 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %42 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @SSI_GDD_CCR_REG(i32 %44)
  %46 = add nsw i64 %43, %45
  %47 = call i32 @writew_relaxed(i32 0, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.hsi_msg*, %struct.hsi_msg** %8, align 8
  %53 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HSI_MSG_READ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %40
  %58 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %7, align 8
  %59 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_mark_last_busy(i32 %60)
  %62 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %7, align 8
  %63 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_put_autosuspend(i32 %64)
  br label %66

66:                                               ; preds = %57, %40
  %67 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %68 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.hsi_msg* null, %struct.hsi_msg** %73, align 8
  br label %74

74:                                               ; preds = %66, %39
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %18

77:                                               ; preds = %18
  %78 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %79 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SSI_GDD_MPU_IRQ_ENABLE_REG, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readl_relaxed(i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %90 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SSI_GDD_MPU_IRQ_ENABLE_REG, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel_relaxed(i32 %88, i64 %93)
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %5, align 8
  %97 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SSI_GDD_MPU_IRQ_STATUS_REG, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  ret void
}

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local %struct.hsi_port* @hsi_get_port(%struct.hsi_client*) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local i32 @writew_relaxed(i32, i64) #1

declare dso_local i64 @SSI_GDD_CCR_REG(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
