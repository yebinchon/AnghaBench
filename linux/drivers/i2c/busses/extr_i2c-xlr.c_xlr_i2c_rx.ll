; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_i2c_private = type { i64, i32, i64, %struct.TYPE_2__*, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }

@XLR_I2C_CFG = common dso_local global i32 0, align 4
@XLR_I2C_CFG_NOADDR = common dso_local global i32 0, align 4
@XLR_I2C_BYTECNT = common dso_local global i32 0, align 4
@XLR_I2C_DEVADDR = common dso_local global i32 0, align 4
@XLR_I2C_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XLR_I2C_STARTXFR = common dso_local global i32 0, align 4
@XLR_I2C_STARTXFR_RD = common dso_local global i32 0, align 4
@XLR_I2C_STATUS = common dso_local global i32 0, align 4
@XLR_I2C_RXRDY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XLR_I2C_DATAIN = common dso_local global i32 0, align 4
@XLR_I2C_ARB_STARTERR = common dso_local global i32 0, align 4
@XLR_I2C_ACK_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"I2C receive timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_i2c_private*, i32, i8**, i32)* @xlr_i2c_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_rx(%struct.xlr_i2c_private* %0, i32 %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlr_i2c_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xlr_i2c_private* %0, %struct.xlr_i2c_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %18 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %17, i32 0, i32 4
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %10, align 8
  %19 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %20 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @XLR_I2C_CFG, align 4
  %23 = load i32, i32* @XLR_I2C_CFG_NOADDR, align 4
  %24 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %25 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %23, %28
  %30 = call i32 @xlr_i2c_wreg(i32 %21, i32 %22, i32 %29)
  %31 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %32 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @XLR_I2C_BYTECNT, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @xlr_i2c_wreg(i32 %33, i32 %34, i32 %36)
  %38 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %39 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @XLR_I2C_DEVADDR, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @xlr_i2c_wreg(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %45 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @XLR_I2C_TIMEOUT, align 4
  %47 = call i64 @msecs_to_jiffies(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %118, %4
  %52 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %53 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XLR_I2C_STARTXFR, align 4
  %56 = load i32, i32* @XLR_I2C_STARTXFR_RD, align 4
  %57 = call i32 @xlr_i2c_wreg(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %59 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %64 = load i32, i32* @XLR_I2C_TIMEOUT, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @xlr_i2c_wait(%struct.xlr_i2c_private* %63, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %140

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %133, %68
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %73, label %134

73:                                               ; preds = %69
  %74 = load i64, i64* @jiffies, align 8
  store i64 %74, i64* %14, align 8
  %75 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %76 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @XLR_I2C_STATUS, align 4
  %79 = call i8* @xlr_i2c_rdreg(i32 %77, i32 %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @XLR_I2C_RXRDY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %106

85:                                               ; preds = %73
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %140

92:                                               ; preds = %85
  %93 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %94 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @XLR_I2C_DATAIN, align 4
  %97 = call i8* @xlr_i2c_rdreg(i32 %95, i32 %96)
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  store i8* %97, i8** %102, align 8
  %103 = load i64, i64* @jiffies, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add i64 %103, %104
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %92, %73
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %13, align 8
  %109 = call i32 @time_after(i64 %107, i64 %108)
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @XLR_I2C_ARB_STARTERR, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %106
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %134

118:                                              ; preds = %114
  br label %51

119:                                              ; preds = %106
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @XLR_I2C_ACK_ERR, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  br label %140

127:                                              ; preds = %119
  %128 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @xlr_i2c_busy(%struct.xlr_i2c_private* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store i32 0, i32* %5, align 4
  br label %140

133:                                              ; preds = %127
  br label %69

134:                                              ; preds = %117, %69
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %135, i32 0, i32 0
  %137 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %138 = load i32, i32* @ETIMEDOUT, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %134, %132, %124, %89, %62
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @xlr_i2c_wreg(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xlr_i2c_wait(%struct.xlr_i2c_private*, i32) #1

declare dso_local i8* @xlr_i2c_rdreg(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @xlr_i2c_busy(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
