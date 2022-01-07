; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }

@MLXCPLD_LPCI2C_NUM_DAT_REG = common dso_local global i64 0, align 8
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@MLXCPLD_I2C_SMBUS_BLK_BIT = common dso_local global i32 0, align 4
@MLXCPLD_LPCI2C_NUM_ADDR_REG = common dso_local global i64 0, align 8
@MLXCPLD_LPCI2C_DATA_REG = common dso_local global i64 0, align 8
@MLXCPLD_LPCI2C_CMD_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxcpld_i2c_priv*)* @mlxcpld_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxcpld_i2c_xfer_msg(%struct.mlxcpld_i2c_priv* %0) #0 {
  %2 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %8 = load i64, i64* @MLXCPLD_LPCI2C_NUM_DAT_REG, align 8
  %9 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @mlxcpld_i2c_write_comm(%struct.mlxcpld_i2c_priv* %7, i64 %8, i32* %11, i32 1)
  %13 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %18 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %1
  %22 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %23 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %62

27:                                               ; preds = %21
  %28 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %29 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %62

36:                                               ; preds = %27
  %37 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %38 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %36
  %48 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %49 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @I2C_M_RD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @MLXCPLD_I2C_SMBUS_BLK_BIT, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %47, %36, %27, %21, %1
  %63 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %64 = load i64, i64* @MLXCPLD_LPCI2C_NUM_ADDR_REG, align 8
  %65 = call i32 @mlxcpld_i2c_write_comm(%struct.mlxcpld_i2c_priv* %63, i64 %64, i32* %6, i32 1)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %124, %62
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %69 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %66
  %74 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %75 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @I2C_M_RD, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @I2C_M_RD, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %73
  %88 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %89 = load i64, i64* @MLXCPLD_LPCI2C_DATA_REG, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %94 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %103 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mlxcpld_i2c_write_comm(%struct.mlxcpld_i2c_priv* %88, i64 %92, i32* %101, i32 %110)
  %112 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %113 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %87, %73
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %3, align 4
  br label %66

127:                                              ; preds = %66
  %128 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %129 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = shl i32 %134, 1
  %136 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %137 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %135, %139
  store i32 %140, i32* %5, align 4
  %141 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %2, align 8
  %142 = load i64, i64* @MLXCPLD_LPCI2C_CMD_REG, align 8
  %143 = call i32 @mlxcpld_i2c_write_comm(%struct.mlxcpld_i2c_priv* %141, i64 %142, i32* %5, i32 1)
  ret void
}

declare dso_local i32 @mlxcpld_i2c_write_comm(%struct.mlxcpld_i2c_priv*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
