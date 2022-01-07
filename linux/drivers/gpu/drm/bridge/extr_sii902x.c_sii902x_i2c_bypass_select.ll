; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_i2c_bypass_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_i2c_bypass_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.sii902x = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@SII902X_SYS_CTRL_DATA = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_DDC_BUS_REQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_DDC_BUS_GRTD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to acquire the i2c bus\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @sii902x_i2c_bypass_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_i2c_bypass_select(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sii902x*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %12 = call %struct.sii902x* @i2c_mux_priv(%struct.i2c_mux_core* %11)
  store %struct.sii902x* %12, %struct.sii902x** %6, align 8
  %13 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %14 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %7, align 8
  %17 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %18 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %21 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_REQ, align 4
  %22 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_REQ, align 4
  %23 = call i32 @sii902x_update_bits_unlocked(%struct.TYPE_4__* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %73

28:                                               ; preds = %2
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i32, i32* @SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS, align 4
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add i64 %29, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %54, %28
  %34 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %35 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %38 = call i32 @sii902x_read_unlocked(%struct.TYPE_4__* %36, i32 %37, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %73

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_GRTD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @time_before(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ false, %44 ], [ %53, %49 ]
  br i1 %55, label %33, label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_GRTD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %56
  %67 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %68 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @sii902x_write_unlocked(%struct.TYPE_4__* %69, i32 %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %61, %41, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.sii902x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @sii902x_update_bits_unlocked(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @sii902x_read_unlocked(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @sii902x_write_unlocked(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
