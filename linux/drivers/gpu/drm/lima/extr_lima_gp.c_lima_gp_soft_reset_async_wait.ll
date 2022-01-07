; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_soft_reset_async_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_gp.c_lima_gp_soft_reset_async_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { %struct.TYPE_2__, i64, %struct.lima_device* }
%struct.TYPE_2__ = type { i32 }
%struct.lima_device = type { i32 }

@LIMA_GP_INT_RAWSTAT = common dso_local global i64 0, align 8
@LIMA_GP_IRQ_RESET_COMPLETED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"gp soft reset time out\0A\00", align 1
@LIMA_GP_INT_CLEAR = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_MASK_ALL = common dso_local global i32 0, align 4
@LIMA_GP_INT_MASK = common dso_local global i32 0, align 4
@LIMA_GP_IRQ_MASK_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lima_ip*)* @lima_gp_soft_reset_async_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lima_gp_soft_reset_async_wait(%struct.lima_ip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lima_ip*, align 8
  %4 = alloca %struct.lima_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %3, align 8
  %7 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %8 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %7, i32 0, i32 2
  %9 = load %struct.lima_device*, %struct.lima_device** %8, align 8
  store %struct.lima_device* %9, %struct.lima_device** %4, align 8
  %10 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %11 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %18 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LIMA_GP_INT_RAWSTAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @LIMA_GP_IRQ_RESET_COMPLETED, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @readl_poll_timeout(i64 %21, i32 %22, i32 %25, i32 0, i32 100)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load %struct.lima_device*, %struct.lima_device** %4, align 8
  %31 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %45

35:                                               ; preds = %16
  %36 = load i32, i32* @LIMA_GP_INT_CLEAR, align 4
  %37 = load i32, i32* @LIMA_GP_IRQ_MASK_ALL, align 4
  %38 = call i32 @gp_write(i32 %36, i32 %37)
  %39 = load i32, i32* @LIMA_GP_INT_MASK, align 4
  %40 = load i32, i32* @LIMA_GP_IRQ_MASK_USED, align 4
  %41 = call i32 @gp_write(i32 %39, i32 %40)
  %42 = load %struct.lima_ip*, %struct.lima_ip** %3, align 8
  %43 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %35, %29, %15
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @gp_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
