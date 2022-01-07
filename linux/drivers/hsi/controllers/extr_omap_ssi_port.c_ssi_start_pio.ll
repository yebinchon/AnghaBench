; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_start_pio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/controllers/extr_omap_ssi_port.c_ssi_start_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsi_msg = type { i64, i32, i64, i32, i32 }
%struct.hsi_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.omap_ssi_port = type { i32 }
%struct.hsi_controller = type { i32 }
%struct.omap_ssi_controller = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"ssi_start_pio called without runtime PM!\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@HSI_MSG_WRITE = common dso_local global i64 0, align 8
@SSI_ERROROCCURED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Single %s transfer\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@HSI_STATUS_PROCEEDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsi_msg*)* @ssi_start_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssi_start_pio(%struct.hsi_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsi_msg*, align 8
  %4 = alloca %struct.hsi_port*, align 8
  %5 = alloca %struct.omap_ssi_port*, align 8
  %6 = alloca %struct.hsi_controller*, align 8
  %7 = alloca %struct.omap_ssi_controller*, align 8
  %8 = alloca i32, align 4
  store %struct.hsi_msg* %0, %struct.hsi_msg** %3, align 8
  %9 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %10 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.hsi_port* @hsi_get_port(i32 %11)
  store %struct.hsi_port* %12, %struct.hsi_port** %4, align 8
  %13 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %14 = call %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port* %13)
  store %struct.omap_ssi_port* %14, %struct.omap_ssi_port** %5, align 8
  %15 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %16 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hsi_controller* @to_hsi_controller(i32 %18)
  store %struct.hsi_controller* %19, %struct.hsi_controller** %6, align 8
  %20 = load %struct.hsi_controller*, %struct.hsi_controller** %6, align 8
  %21 = call %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller* %20)
  store %struct.omap_ssi_controller* %21, %struct.omap_ssi_controller** %7, align 8
  %22 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %23 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get(i32 %24)
  %26 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %27 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_active(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %1
  %32 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %33 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %32, i32 0, i32 1
  %34 = call i32 @dev_warn(%struct.TYPE_3__* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %36 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pm_runtime_put_autosuspend(i32 %37)
  %39 = load i32, i32* @EREMOTEIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %103

41:                                               ; preds = %1
  %42 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %43 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HSI_MSG_WRITE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %49 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @SSI_DATAACCEPT(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %53 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pm_runtime_get(i32 %54)
  br label %63

56:                                               ; preds = %41
  %57 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %58 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SSI_DATAAVAILABLE(i32 %59)
  %61 = load i32, i32* @SSI_ERROROCCURED, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %47
  %64 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %65 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %64, i32 0, i32 1
  %66 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %67 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 @dev_dbg(%struct.TYPE_3__* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %7, align 8
  %74 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %77 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @SSI_MPU_ENABLE_REG(i32 %78, i32 0)
  %80 = add nsw i64 %75, %79
  %81 = call i32 @readl(i64 %80)
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.omap_ssi_controller*, %struct.omap_ssi_controller** %7, align 8
  %86 = getelementptr inbounds %struct.omap_ssi_controller, %struct.omap_ssi_controller* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.hsi_port*, %struct.hsi_port** %4, align 8
  %89 = getelementptr inbounds %struct.hsi_port, %struct.hsi_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @SSI_MPU_ENABLE_REG(i32 %90, i32 0)
  %92 = add nsw i64 %87, %91
  %93 = call i32 @writel(i32 %84, i64 %92)
  %94 = load %struct.omap_ssi_port*, %struct.omap_ssi_port** %5, align 8
  %95 = getelementptr inbounds %struct.omap_ssi_port, %struct.omap_ssi_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pm_runtime_put_autosuspend(i32 %96)
  %98 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %99 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @HSI_STATUS_PROCEEDING, align 4
  %101 = load %struct.hsi_msg*, %struct.hsi_msg** %3, align 8
  %102 = getelementptr inbounds %struct.hsi_msg, %struct.hsi_msg* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %63, %31
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.hsi_port* @hsi_get_port(i32) #1

declare dso_local %struct.omap_ssi_port* @hsi_port_drvdata(%struct.hsi_port*) #1

declare dso_local %struct.hsi_controller* @to_hsi_controller(i32) #1

declare dso_local %struct.omap_ssi_controller* @hsi_controller_drvdata(%struct.hsi_controller*) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @SSI_DATAACCEPT(i32) #1

declare dso_local i32 @SSI_DATAAVAILABLE(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SSI_MPU_ENABLE_REG(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
