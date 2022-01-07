; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_msg_len_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_i2c_msg_len_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_msg = type { i32, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@SERIALI2C_HDR_SIZE = common dso_local global i64 0, align 8
@TEGRA_I2C_IPC_MAX_IN_BUF_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TEGRA_I2C_IPC_MAX_OUT_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_msg*, i32)* @tegra_bpmp_i2c_msg_len_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_i2c_msg_len_check(%struct.i2c_msg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_msg* %0, %struct.i2c_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 %16
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @I2C_M_RD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* @SERIALI2C_HDR_SIZE, align 8
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i64 %27
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %24, %30
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %23, %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @TEGRA_I2C_IPC_MAX_IN_BUF_SIZE, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %81

45:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %70, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 %53
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @I2C_M_RD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i64 %63
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %60, %50
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @TEGRA_I2C_IPC_MAX_OUT_BUF_SIZE, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %77, %42
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
