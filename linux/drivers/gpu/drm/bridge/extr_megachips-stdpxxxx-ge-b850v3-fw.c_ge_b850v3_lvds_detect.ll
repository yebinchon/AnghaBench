; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_megachips-stdpxxxx-ge-b850v3-fw.c_ge_b850v3_lvds_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.drm_connector = type { i32 }

@ge_b850v3_lvds_ptr = common dso_local global %struct.TYPE_2__* null, align 8
@STDP4028_DPTX_STS_REG = common dso_local global i32 0, align 4
@STDP4028_CON_STATE_CONNECTED = common dso_local global i64 0, align 8
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @ge_b850v3_lvds_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ge_b850v3_lvds_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ge_b850v3_lvds_ptr, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %12 = load i32, i32* @STDP4028_DPTX_STS_REG, align 4
  %13 = call i64 @i2c_smbus_read_word_data(%struct.i2c_client* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @STDP4028_CON_STATE_CONNECTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @connector_status_connected, align 4
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %23, i32* %3, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @connector_status_unknown, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %22, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
