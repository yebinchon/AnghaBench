; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_set_transf_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mlxcpld.c_mlxcpld_i2c_set_transf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxcpld_i2c_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxcpld_i2c_priv*, %struct.i2c_msg*, i32, i64)* @mlxcpld_i2c_set_transf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxcpld_i2c_set_transf_data(%struct.mlxcpld_i2c_priv* %0, %struct.i2c_msg* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mlxcpld_i2c_priv*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.mlxcpld_i2c_priv* %0, %struct.mlxcpld_i2c_priv** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %10 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 4
  store %struct.i2c_msg* %9, %struct.i2c_msg** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %15 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 %20
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I2C_M_RD, align 4
  %25 = and i32 %23, %24
  %26 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %27 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %30 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @I2C_M_RD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i64 0
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %48 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %52 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %50, %54
  %56 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i64 %55, i64* %58, align 8
  br label %67

59:                                               ; preds = %35, %4
  %60 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %61 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.mlxcpld_i2c_priv*, %struct.mlxcpld_i2c_priv** %5, align 8
  %65 = getelementptr inbounds %struct.mlxcpld_i2c_priv, %struct.mlxcpld_i2c_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %59, %42
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
