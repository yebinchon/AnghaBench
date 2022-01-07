; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_async_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_async_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, i32, {}*, i32 }
%struct.hsi_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.omap_ssi_port = type { i32, i32, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.hsi_controller = type { i32 }
%struct.omap_ssi_controller = type { i64 }

@HSI_MSG_WRITE = common dso_local global i64 0, align 8
@SSI_MODE_FRAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SSI_SST_BREAK_REG = common dso_local global i64 0, align 8
@HSI_STATUS_COMPLETED = common dso_local global i32 0, align 4
@SSI_BREAKDETECTED = common dso_local global i32 0, align 4
@HSI_STATUS_PROCEEDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_msg*)* @ssi_async_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_async_break(%struct.hsi_msg* %0) #0 {
  %2 = alloca %struct.hsi_msg*, align 8
  %3 = alloca %struct.hsi_port*, align 8
  %4 = alloca %struct.omap_ssi_port*, align 8
  %5 = alloca %struct.hsi_controller*, align 8
  %6 = alloca %struct.omap_ssi_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %2, align 8
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %10 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.hsi_port* @hsi_get_port(i32 %11)
  store %struct.hsi_port* %12, %struct.hsi_port** %3, align 8
  %13 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %14 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %13)
  store %struct.omap_ssi_port* %14, %struct.omap_ssi_port** %4, align 8
  %15 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %16 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hsi_controller* @to_hsi_controller(i32 %18)
  store %struct.hsi_controller* %19, %struct.hsi_controller** %5, align 8
  %20 = load %struct.hsi_controller*, %struct.hsi_controller** %5, align 8
  %21 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %20)
  store %struct.omap_ssi_controller* %21, %struct.omap_ssi_controller** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %23 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  %26 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %27 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HSI_MSG_WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %1
  %32 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %33 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SSI_MODE_FRAME, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %104

41:                                               ; preds = %31
  %42 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %43 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SSI_SST_BREAK_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 1, i64 %46)
  %48 = load i32, i32* @HSI_STATUS_COMPLETED, align 4
  %49 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %50 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %52 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %51, i32 0, i32 3
  %53 = bitcast {}** %52 to i32 (%struct.hsi_msg*)**
  %54 = load i32 (%struct.hsi_msg*)*, i32 (%struct.hsi_msg*)** %53, align 8
  %55 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %56 = call i32 %54(%struct.hsi_msg* %55)
  br label %103

57:                                               ; preds = %1
  %58 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %59 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SSI_MODE_FRAME, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %104

67:                                               ; preds = %57
  %68 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %69 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %68, i32 0, i32 1
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %72 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %75 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @SSI_MPU_ENABLE_REG(i32 %76, i32 0)
  %78 = add nsw i64 %73, %77
  %79 = call i32 @readl(i64 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @SSI_BREAKDETECTED, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %6, align 8
  %84 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hsi_port*, %struct.hsi_port** %3, align 8
  %87 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @SSI_MPU_ENABLE_REG(i32 %88, i32 0)
  %90 = add nsw i64 %85, %89
  %91 = call i32 @writel(i32 %82, i64 %90)
  %92 = load i32, i32* @HSI_STATUS_PROCEEDING, align 4
  %93 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %94 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.hsi_msg*, %struct.hsi_msg** %2, align 8
  %96 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %95, i32 0, i32 1
  %97 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %98 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %97, i32 0, i32 2
  %99 = call i32 @list_add_tail(i32* %96, i32* %98)
  %100 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %101 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_bh(i32* %101)
  br label %103

103:                                              ; preds = %67, %41
  br label %104

104:                                              ; preds = %103, %64, %38
  %105 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %106 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @pm_runtime_mark_last_busy(i32 %107)
  %109 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %4, align 8
  %110 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @pm_runtime_put_autosuspend(i32 %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.hsi_port* @hsi_get_port(i32) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SSI_MPU_ENABLE_REG(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
