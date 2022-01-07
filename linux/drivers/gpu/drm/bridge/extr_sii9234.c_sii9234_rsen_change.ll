; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_rsen_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_rsen_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i64, i32 }

@ST_RGND_1K = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"RSEN_HIGH without RGND_1K\0A\00", align 1
@ST_FAILURE = common dso_local global i32 0, align 4
@MHL_TX_SYSSTAT_REG = common dso_local global i32 0, align 4
@RSEN_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"MHL cable connected.. RSEN High\0A\00", align 1
@ST_RSEN_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"RSEN lost\0A\00", align 1
@T_SRC_RXSENSE_DEGLITCH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"sys_stat: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"RSEN recovery\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"RSEN Really LOW\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_rsen_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_rsen_change(%struct.sii9234* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sii9234*, align 8
  %4 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %3, align 8
  %5 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %6 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ST_RGND_1K, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %12 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ST_FAILURE, align 4
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %18 = load i32, i32* @MHL_TX_SYSSTAT_REG, align 4
  %19 = call i32 @mhl_tx_readb(%struct.sii9234* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ST_FAILURE, align 4
  store i32 %23, i32* %2, align 4
  br label %77

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RSEN_STATUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %31 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @ST_RSEN_HIGH, align 4
  store i32 %34, i32* %2, align 4
  br label %77

35:                                               ; preds = %24
  %36 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %37 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @T_SRC_RXSENSE_DEGLITCH, align 4
  %41 = call i32 @msleep(i32 %40)
  %42 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %43 = load i32, i32* @MHL_TX_SYSSTAT_REG, align 4
  %44 = call i32 @mhl_tx_readb(%struct.sii9234* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* @ST_FAILURE, align 4
  store i32 %48, i32* %2, align 4
  br label %77

49:                                               ; preds = %35
  %50 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %51 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @RSEN_STATUS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %61 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @ST_RSEN_HIGH, align 4
  store i32 %64, i32* %2, align 4
  br label %77

65:                                               ; preds = %49
  %66 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %67 = getelementptr inbounds %struct.sii9234, %struct.sii9234* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_dbg(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %70 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %71 = call i32 @sii9234_tmds_control(%struct.sii9234* %70, i32 0)
  %72 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %73 = call i32 @force_usb_id_switch_open(%struct.sii9234* %72)
  %74 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %75 = call i32 @release_usb_id_switch_open(%struct.sii9234* %74)
  %76 = load i32, i32* @ST_FAILURE, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %65, %59, %47, %29, %22, %10
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mhl_tx_readb(%struct.sii9234*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sii9234_tmds_control(%struct.sii9234*, i32) #1

declare dso_local i32 @force_usb_id_switch_open(%struct.sii9234*) #1

declare dso_local i32 @release_usb_id_switch_open(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
