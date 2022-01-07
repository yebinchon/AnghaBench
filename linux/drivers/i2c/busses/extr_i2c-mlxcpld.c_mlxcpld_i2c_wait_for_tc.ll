; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_wait_for_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_wait_for_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@MLXCPLD_I2C_POLL_TIME = common dso_local global i32 0, align 4
@MLXCPLD_I2C_XFER_TO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_NUM_ADDR_REG = common dso_local global i32 0, align 4
@MLXCPLD_I2C_SMBUS_BLK_BIT = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_NUM_DAT_REG = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Incorrect smbus block read message len\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_DATA_REG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxcpld_i2c_priv*)* @mlxcpld_i2c_wait_for_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxcpld_i2c_wait_for_tc(%struct.mlxcpld_i2c_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %11 = sdiv i32 %10, 2
  %12 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %13 = call i32 @usleep_range(i32 %11, i32 %12)
  %14 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %15 = call i32 @mlxcpld_i2c_check_status(%struct.mlxcpld_i2c_priv* %14, i32* %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %31

18:                                               ; preds = %9
  %19 = load i32, i32* @MLXCPLD_I2C_POLL_TIME, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MLXCPLD_I2C_XFER_TO, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  br i1 %30, label %9, label %31

31:                                               ; preds = %29, %17
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %130 [
    i32 128, label %33
    i32 130, label %36
    i32 129, label %127
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %133

36:                                               ; preds = %31
  %37 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @I2C_M_RD, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %47, %51
  store i32 %52, i32* %2, align 4
  br label %133

53:                                               ; preds = %36
  %54 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %55 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %61

60:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %63 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %133

75:                                               ; preds = %61
  %76 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %77 = load i32, i32* @MLXCPLD_LPCI2C_NUM_ADDR_REG, align 4
  %78 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %76, i32 %77, i32* %8, i32 1)
  %79 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %80 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @MLXCPLD_I2C_SMBUS_BLK_BIT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %90 = load i32, i32* @MLXCPLD_LPCI2C_NUM_DAT_REG, align 4
  %91 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %89, i32 %90, i32* %7, i32 1)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %94 = add nsw i32 %93, 1
  %95 = icmp sgt i32 %92, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @unlikely(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %101 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_err(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* @E2BIG, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %133

106:                                              ; preds = %88
  br label %112

107:                                              ; preds = %83, %75
  %108 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %109 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %114 = load i32, i32* @MLXCPLD_LPCI2C_DATA_REG, align 4
  %115 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %3, align 8
  %116 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv* %113, i32 %114, i32* %123, i32 %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %133

127:                                              ; preds = %31
  %128 = load i32, i32* @ENXIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %133

130:                                              ; preds = %31
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %130, %127, %112, %99, %72, %43, %33
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mlxcpld_i2c_check_status(%struct.mlxcpld_i2c_priv*, i32*) #1

declare dso_local i32 @mlxcpld_i2c_read_comm(%struct.mlxcpld_i2c_priv*, i32, i32*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
