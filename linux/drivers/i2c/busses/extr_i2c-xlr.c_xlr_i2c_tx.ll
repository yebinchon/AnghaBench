; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_i2c_private = type { i32, i64, i32, %struct.TYPE_2__*, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }

@XLR_I2C_ADDR = common dso_local global i32 0, align 4
@XLR_I2C_DEVADDR = common dso_local global i32 0, align 4
@XLR_I2C_CFG = common dso_local global i32 0, align 4
@XLR_I2C_CFG_ADDR = common dso_local global i32 0, align 4
@XLR_I2C_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XLR_I2C_BYTECNT = common dso_local global i32 0, align 4
@XLR_I2C_STARTXFR_ND = common dso_local global i32 0, align 4
@XLR_I2C_DATAOUT = common dso_local global i32 0, align 4
@XLR_I2C_STARTXFR_WR = common dso_local global i32 0, align 4
@XLR_I2C_STARTXFR = common dso_local global i32 0, align 4
@XLR_I2C_STATUS = common dso_local global i32 0, align 4
@XLR_I2C_SDOEMPTY = common dso_local global i32 0, align 4
@XLR_I2C_ARB_STARTERR = common dso_local global i32 0, align 4
@XLR_I2C_ACK_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"I2C transmit timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_i2c_private*, i32, i32*, i32)* @xlr_i2c_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_tx(%struct.xlr_i2c_private* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xlr_i2c_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xlr_i2c_private* %0, %struct.xlr_i2c_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %20 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %19, i32 0, i32 4
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %10, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %25 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XLR_I2C_ADDR, align 4
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @xlr_i2c_wreg(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %31 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @XLR_I2C_DEVADDR, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @xlr_i2c_wreg(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %37 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @XLR_I2C_CFG, align 4
  %40 = load i32, i32* @XLR_I2C_CFG_ADDR, align 4
  %41 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %42 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %41, i32 0, i32 3
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = call i32 @xlr_i2c_wreg(i32 %38, i32 %39, i32 %46)
  %48 = load i32, i32* @XLR_I2C_TIMEOUT, align 4
  %49 = call i64 @msecs_to_jiffies(i32 %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 %50, %51
  store i64 %52, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %4
  %56 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %57 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @XLR_I2C_BYTECNT, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @xlr_i2c_wreg(i32 %58, i32 %59, i32 %61)
  %63 = load i32, i32* @XLR_I2C_STARTXFR_ND, align 4
  store i32 %63, i32* %18, align 4
  store i32 1, i32* %15, align 4
  br label %81

64:                                               ; preds = %4
  %65 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %66 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @XLR_I2C_BYTECNT, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, 2
  %71 = call i32 @xlr_i2c_wreg(i32 %67, i32 %68, i32 %70)
  %72 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %73 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @XLR_I2C_DATAOUT, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @xlr_i2c_wreg(i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* @XLR_I2C_STARTXFR_WR, align 4
  store i32 %80, i32* %18, align 4
  store i32 2, i32* %15, align 4
  br label %81

81:                                               ; preds = %64, %55
  %82 = load i32, i32* %15, align 4
  %83 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %84 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %149, %81
  %86 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %87 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @XLR_I2C_STARTXFR, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @xlr_i2c_wreg(i32 %88, i32 %89, i32 %90)
  %92 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %93 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %98 = load i32, i32* @XLR_I2C_TIMEOUT, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %98, %99
  %101 = call i32 @xlr_i2c_wait(%struct.xlr_i2c_private* %97, i32 %100)
  store i32 %101, i32* %5, align 4
  br label %175

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %168, %102
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %107, label %169

107:                                              ; preds = %103
  %108 = load i64, i64* @jiffies, align 8
  store i64 %108, i64* %13, align 8
  %109 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %110 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @XLR_I2C_STATUS, align 4
  %113 = call i32 @xlr_i2c_rdreg(i32 %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @XLR_I2C_SDOEMPTY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %107
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %124 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @XLR_I2C_DATAOUT, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @xlr_i2c_wreg(i32 %125, i32 %126, i32 %132)
  %134 = load i64, i64* @jiffies, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %134, %135
  store i64 %136, i64* %12, align 8
  br label %137

137:                                              ; preds = %122, %118, %107
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %12, align 8
  %140 = call i32 @time_after(i64 %138, i64 %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @XLR_I2C_ARB_STARTERR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  br label %169

149:                                              ; preds = %145
  br label %85

150:                                              ; preds = %137
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* @XLR_I2C_ACK_ERR, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %5, align 4
  br label %175

158:                                              ; preds = %150
  %159 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @xlr_i2c_busy(%struct.xlr_i2c_private* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp sge i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %175

168:                                              ; preds = %163, %158
  br label %103

169:                                              ; preds = %148, %103
  %170 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %171 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %170, i32 0, i32 0
  %172 = call i32 @dev_err(i32* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %173 = load i32, i32* @ETIMEDOUT, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %169, %167, %155, %96
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @xlr_i2c_wreg(i32, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @xlr_i2c_wait(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @xlr_i2c_rdreg(i32, i32) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @xlr_i2c_busy(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
