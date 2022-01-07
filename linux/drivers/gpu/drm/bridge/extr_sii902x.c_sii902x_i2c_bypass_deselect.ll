; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_i2c_bypass_deselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_i2c_bypass_deselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.sii902x = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@SII902X_SYS_CTRL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to read status (%d)\0A\00", align 1
@SII902X_SYS_CTRL_DDC_BUS_REQ = common dso_local global i32 0, align 4
@SII902X_SYS_CTRL_DDC_BUS_GRTD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to release the i2c bus\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @sii902x_i2c_bypass_deselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_i2c_bypass_deselect(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_mux_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sii902x*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %4, align 8
  %13 = call %struct.sii902x* @i2c_mux_priv(%struct.i2c_mux_core* %12)
  store %struct.sii902x* %13, %struct.sii902x** %6, align 8
  %14 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %15 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = call i32 @udelay(i32 30)
  store i32 5, i32* %9, align 4
  br label %19

19:                                               ; preds = %33, %2
  %20 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %21 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %24 = call i32 @sii902x_read_unlocked(%struct.TYPE_3__* %22, i32 %23, i32* %10)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %19, label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.device*, %struct.device** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %99

43:                                               ; preds = %35
  %44 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %45 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %48 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_REQ, align 4
  %49 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_GRTD, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @sii902x_update_bits_unlocked(%struct.TYPE_3__* %46, i32 %47, i32 %50, i32 0)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %3, align 4
  br label %99

56:                                               ; preds = %43
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @SII902X_I2C_BUS_ACQUISITION_TIMEOUT_MS, align 4
  %59 = call i64 @msecs_to_jiffies(i32 %58)
  %60 = add i64 %57, %59
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %84, %56
  %62 = load %struct.sii902x*, %struct.sii902x** %6, align 8
  %63 = getelementptr inbounds %struct.sii902x, %struct.sii902x* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* @SII902X_SYS_CTRL_DATA, align 4
  %66 = call i32 @sii902x_read_unlocked(%struct.TYPE_3__* %64, i32 %65, i32* %10)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %3, align 4
  br label %99

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_REQ, align 4
  %75 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_GRTD, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @time_before(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %79, %72
  %85 = phi i1 [ false, %72 ], [ %83, %79 ]
  br i1 %85, label %61, label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_REQ, align 4
  %89 = load i32, i32* @SII902X_SYS_CTRL_DDC_BUS_GRTD, align 4
  %90 = or i32 %88, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.device*, %struct.device** %7, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @ETIMEDOUT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %99

98:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %69, %54, %38
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.sii902x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sii902x_read_unlocked(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @sii902x_update_bits_unlocked(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
