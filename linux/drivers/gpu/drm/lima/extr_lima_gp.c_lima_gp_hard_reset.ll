; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_hard_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_hard_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.lima_device* }
%struct.lima_device = type { i32 }

@LIMA_GP_PERF_CNT_0_LIMIT = common dso_local global i32 0, align 4
@LIMA_GP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_GP_CMD = common dso_local global i32 0, align 4
@LIMA_GP_CMD_RESET = common dso_local global i32 0, align 4
@lima_gp_hard_reset_poll = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"gp hard reset timeout\0A\00", align 1
@LIMA_GP_INT_CLEAR = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_MASK_ALL = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_MASK_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*)* @lima_gp_hard_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gp_hard_reset(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %6 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %7 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %6, i32 0, i32 0
  %8 = load %struct.lima_device*, %struct.lima_device** %7, align 8
  store %struct.lima_device* %8, %struct.lima_device** %4, align 8
  %9 = load i32, i32* @LIMA_GP_PERF_CNT_0_LIMIT, align 4
  %10 = call i32 @gp_write(i32 %9, i32 -1056972800)
  %11 = load i32, i32* @LIMA_GP_INT_MASK, align 4
  %12 = call i32 @gp_write(i32 %11, i32 0)
  %13 = load i32, i32* @LIMA_GP_CMD, align 4
  %14 = load i32, i32* @LIMA_GP_CMD_RESET, align 4
  %15 = call i32 @gp_write(i32 %13, i32 %14)
  %16 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %17 = load i32, i32* @lima_gp_hard_reset_poll, align 4
  %18 = call i32 @lima_poll_timeout(%struct.lima_ip* %16, i32 %17, i32 10, i32 100)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %23 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @LIMA_GP_PERF_CNT_0_LIMIT, align 4
  %29 = call i32 @gp_write(i32 %28, i32 0)
  %30 = load i32, i32* @LIMA_GP_INT_CLEAR, align 4
  %31 = load i32, i32* @LIMA_GP_IRQ_MASK_ALL, align 4
  %32 = call i32 @gp_write(i32 %30, i32 %31)
  %33 = load i32, i32* @LIMA_GP_INT_MASK, align 4
  %34 = load i32, i32* @LIMA_GP_IRQ_MASK_USED, align 4
  %35 = call i32 @gp_write(i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @gp_write(i32, i32) #1

declare dso_local i32 @lima_poll_timeout(%struct.lima_ip*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
