; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_xlate_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra-bpmp.c_tegra_bpmp_xlate_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_M_TEN = common dso_local global i32 0, align 4
@SERIALI2C_TEN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@SERIALI2C_RD = common dso_local global i32 0, align 4
@I2C_M_STOP = common dso_local global i32 0, align 4
@SERIALI2C_STOP = common dso_local global i32 0, align 4
@I2C_M_NOSTART = common dso_local global i32 0, align 4
@SERIALI2C_NOSTART = common dso_local global i32 0, align 4
@I2C_M_REV_DIR_ADDR = common dso_local global i32 0, align 4
@SERIALI2C_REV_DIR_ADDR = common dso_local global i32 0, align 4
@I2C_M_IGNORE_NAK = common dso_local global i32 0, align 4
@SERIALI2C_IGNORE_NAK = common dso_local global i32 0, align 4
@I2C_M_NO_RD_ACK = common dso_local global i32 0, align 4
@SERIALI2C_NO_RD_ACK = common dso_local global i32 0, align 4
@I2C_M_RECV_LEN = common dso_local global i32 0, align 4
@SERIALI2C_RECV_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @tegra_bpmp_xlate_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bpmp_xlate_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @I2C_M_TEN, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @SERIALI2C_TEN, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @I2C_M_TEN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @I2C_M_RD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* @SERIALI2C_RD, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %18
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @I2C_M_STOP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @SERIALI2C_STOP, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @I2C_M_STOP, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %32
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @I2C_M_NOSTART, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32, i32* @SERIALI2C_NOSTART, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @I2C_M_NOSTART, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %3, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %46
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* @SERIALI2C_REV_DIR_ADDR, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @I2C_M_REV_DIR_ADDR, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %65, %60
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32, i32* @SERIALI2C_IGNORE_NAK, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @I2C_M_IGNORE_NAK, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %74
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32, i32* @SERIALI2C_NO_RD_ACK, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* @I2C_M_NO_RD_ACK, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %3, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %88
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @SERIALI2C_RECV_LEN, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @I2C_M_RECV_LEN, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %3, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %107, %102
  %117 = load i32, i32* %3, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  br label %123

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %119
  %124 = phi i32 [ %121, %119 ], [ 0, %122 ]
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
