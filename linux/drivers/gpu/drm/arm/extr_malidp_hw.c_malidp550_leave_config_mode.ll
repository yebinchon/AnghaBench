; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_leave_config_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_leave_config_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@MALIDP_CFG_VALID = common dso_local global i64 0, align 8
@MALIDP550_CONFIG_VALID = common dso_local global i32 0, align 4
@MALIDP550_DC_CONFIG_REQ = common dso_local global i64 0, align 8
@MALIDP550_DC_CONTROL = common dso_local global i32 0, align 4
@MALIDP_REG_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"timeout while leaving config mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malidp_hw_device*)* @malidp550_leave_config_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp550_leave_config_mode(%struct.malidp_hw_device* %0) #0 {
  %2 = alloca %struct.malidp_hw_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %2, align 8
  store i64 100, i64* %4, align 8
  %5 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %6 = load i64, i64* @MALIDP_CFG_VALID, align 8
  %7 = load i32, i32* @MALIDP550_CONFIG_VALID, align 4
  %8 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %5, i64 %6, i32 %7)
  %9 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %10 = load i64, i64* @MALIDP550_DC_CONFIG_REQ, align 8
  %11 = load i32, i32* @MALIDP550_DC_CONTROL, align 4
  %12 = call i32 @malidp_hw_clearbits(%struct.malidp_hw_device* %9, i64 %10, i32 %11)
  br label %13

13:                                               ; preds = %32, %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %2, align 8
  %19 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @malidp_hw_read(%struct.malidp_hw_device* %17, i64 %25)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @MALIDP550_DC_CONFIG_REQ, align 8
  %29 = and i64 %27, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %36

32:                                               ; preds = %16
  %33 = call i32 @usleep_range(i32 100, i32 1000)
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %4, align 8
  br label %13

36:                                               ; preds = %31, %13
  %37 = load i64, i64* %4, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @malidp_hw_clearbits(%struct.malidp_hw_device*, i64, i32) #1

declare dso_local i64 @malidp_hw_read(%struct.malidp_hw_device*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
