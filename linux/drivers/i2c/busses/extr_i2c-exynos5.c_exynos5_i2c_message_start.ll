; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_message_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-exynos5.c_exynos5_i2c_message_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos5_i2c = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@I2C_TYPE_EXYNOS7 = common dso_local global i64 0, align 8
@HSI2C_INT_I2C_TRANS = common dso_local global i32 0, align 4
@HSI2C_INT_I2C = common dso_local global i32 0, align 4
@HSI2C_CTL = common dso_local global i64 0, align 8
@HSI2C_TXCHON = common dso_local global i32 0, align 4
@HSI2C_RXCHON = common dso_local global i32 0, align 4
@HSI2C_RXFIFO_EN = common dso_local global i32 0, align 4
@HSI2C_TXFIFO_EN = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@HSI2C_READ_WRITE = common dso_local global i32 0, align 4
@HSI2C_INT_RX_ALMOSTFULL_EN = common dso_local global i32 0, align 4
@HSI2C_INT_TRAILING_EN = common dso_local global i32 0, align 4
@HSI2C_INT_TX_ALMOSTEMPTY_EN = common dso_local global i32 0, align 4
@HSI2C_ADDR = common dso_local global i64 0, align 8
@HSI2C_FIFO_CTL = common dso_local global i64 0, align 8
@HSI2C_INT_ENABLE = common dso_local global i64 0, align 8
@HSI2C_STOP_AFTER_TRANS = common dso_local global i32 0, align 4
@HSI2C_MASTER_RUN = common dso_local global i32 0, align 4
@HSI2C_AUTO_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos5_i2c*, i32)* @exynos5_i2c_message_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5_i2c_message_start(%struct.exynos5_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos5_i2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store %struct.exynos5_i2c* %0, %struct.exynos5_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %12 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I2C_TYPE_EXYNOS7, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @HSI2C_INT_I2C_TRANS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @HSI2C_INT_I2C, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %28 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HSI2C_CTL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @HSI2C_TXCHON, align 4
  %34 = load i32, i32* @HSI2C_RXCHON, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @HSI2C_RXFIFO_EN, align 4
  %40 = load i32, i32* @HSI2C_TXFIFO_EN, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %43 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @I2C_M_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %26
  %51 = load i32, i32* @HSI2C_RXCHON, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @HSI2C_READ_WRITE, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %58 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %63 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %50
  %69 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %70 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 3
  %75 = sdiv i32 %74, 4
  br label %82

76:                                               ; preds = %50
  %77 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %78 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  br label %82

82:                                               ; preds = %76, %68
  %83 = phi i32 [ %75, %68 ], [ %81, %76 ]
  %84 = trunc i32 %83 to i16
  store i16 %84, i16* %10, align 2
  %85 = load i16, i16* %10, align 2
  %86 = call i32 @HSI2C_RXFIFO_TRIGGER_LEVEL(i16 zeroext %85)
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @HSI2C_INT_RX_ALMOSTFULL_EN, align 4
  %90 = load i32, i32* @HSI2C_INT_TRAILING_EN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %133

94:                                               ; preds = %26
  %95 = load i32, i32* @HSI2C_TXCHON, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %99 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %104 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %103, i32 0, i32 3
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %102, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %94
  %110 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %111 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %114, 1
  %116 = sdiv i32 %115, 4
  br label %123

117:                                              ; preds = %94
  %118 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %119 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %118, i32 0, i32 2
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  br label %123

123:                                              ; preds = %117, %109
  %124 = phi i32 [ %116, %109 ], [ %122, %117 ]
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %10, align 2
  %126 = load i16, i16* %10, align 2
  %127 = call i32 @HSI2C_TXFIFO_TRIGGER_LEVEL(i16 zeroext %126)
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* @HSI2C_INT_TX_ALMOSTEMPTY_EN, align 4
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %123, %82
  %134 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %135 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @HSI2C_SLV_ADDR_MAS(i32 %138)
  %140 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %141 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HSI2C_ADDR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %148 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HSI2C_FIFO_CTL, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @writel(i32 %146, i64 %151)
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %155 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @HSI2C_CTL, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writel(i32 %153, i64 %158)
  %160 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %161 = call i32 @exynos5_i2c_bus_check(%struct.exynos5_i2c* %160)
  %162 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %163 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %162, i32 0, i32 0
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %168 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HSI2C_INT_ENABLE, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %179

175:                                              ; preds = %133
  %176 = load i32, i32* @HSI2C_STOP_AFTER_TRANS, align 4
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %175, %133
  %180 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %181 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* @HSI2C_MASTER_RUN, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %192 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @HSI2C_AUTO_CONF, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writel(i32 %190, i64 %195)
  %197 = load %struct.exynos5_i2c*, %struct.exynos5_i2c** %3, align 8
  %198 = getelementptr inbounds %struct.exynos5_i2c, %struct.exynos5_i2c* %197, i32 0, i32 0
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @spin_unlock_irqrestore(i32* %198, i64 %199)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @HSI2C_RXFIFO_TRIGGER_LEVEL(i16 zeroext) #1

declare dso_local i32 @HSI2C_TXFIFO_TRIGGER_LEVEL(i16 zeroext) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @HSI2C_SLV_ADDR_MAS(i32) #1

declare dso_local i32 @exynos5_i2c_bus_check(%struct.exynos5_i2c*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
