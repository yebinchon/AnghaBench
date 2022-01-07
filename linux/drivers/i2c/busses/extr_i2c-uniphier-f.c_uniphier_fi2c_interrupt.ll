; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-uniphier-f.c_uniphier_fi2c_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_fi2c_priv = type { i32, i32, i32, i32, i32, i64, i32 }

@UNIPHIER_FI2C_INT = common dso_local global i64 0, align 8
@UNIPHIER_FI2C_INT_STOP = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_AL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_NA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_RD = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_DEFER_STOP_COMP = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_TE = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_RF = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_INT_RB = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_MANUAL_NACK = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_FIFO_SIZE = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_BYTE_WISE = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR_MST = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR_NACK = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_CR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@UNIPHIER_FI2C_STOP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @uniphier_fi2c_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_fi2c_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uniphier_fi2c_priv*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.uniphier_fi2c_priv*
  store %struct.uniphier_fi2c_priv* %9, %struct.uniphier_fi2c_priv** %6, align 8
  %10 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %11 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %10, i32 0, i32 3
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %14 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UNIPHIER_FI2C_INT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %20 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @UNIPHIER_FI2C_INT_STOP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %168

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UNIPHIER_FI2C_INT_AL, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %39 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  br label %168

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @UNIPHIER_FI2C_INT_NA, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %50 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %52 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UNIPHIER_FI2C_RD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %59 = call i32 @uniphier_fi2c_stop(%struct.uniphier_fi2c_priv* %58)
  %60 = load i32, i32* @UNIPHIER_FI2C_DEFER_STOP_COMP, align 4
  %61 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %62 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %168

65:                                               ; preds = %46
  br label %164

66:                                               ; preds = %40
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @UNIPHIER_FI2C_INT_TE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %73 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %156

77:                                               ; preds = %71
  %78 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %79 = call i32 @uniphier_fi2c_fill_txfifo(%struct.uniphier_fi2c_priv* %78, i32 0)
  br label %177

80:                                               ; preds = %66
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @UNIPHIER_FI2C_INT_RF, align 4
  %83 = load i32, i32* @UNIPHIER_FI2C_INT_RB, align 4
  %84 = or i32 %82, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %151

87:                                               ; preds = %80
  %88 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %89 = call i32 @uniphier_fi2c_drain_rxfifo(%struct.uniphier_fi2c_priv* %88)
  %90 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %91 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @UNIPHIER_FI2C_INT_RB, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %156

100:                                              ; preds = %94, %87
  %101 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %102 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UNIPHIER_FI2C_MANUAL_NACK, align 4
  %105 = and i32 %103, %104
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %150

108:                                              ; preds = %100
  %109 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %110 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @UNIPHIER_FI2C_FIFO_SIZE, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  %115 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %116 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @UNIPHIER_FI2C_BYTE_WISE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* @UNIPHIER_FI2C_INT_RB, align 4
  %123 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %124 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %128 = call i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv* %127)
  %129 = load i32, i32* @UNIPHIER_FI2C_BYTE_WISE, align 4
  %130 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %131 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %121, %114, %108
  %135 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %136 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp sle i32 %137, 1
  br i1 %138, label %139, label %149

139:                                              ; preds = %134
  %140 = load i32, i32* @UNIPHIER_FI2C_CR_MST, align 4
  %141 = load i32, i32* @UNIPHIER_FI2C_CR_NACK, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %144 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @UNIPHIER_FI2C_CR, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @writel(i32 %142, i64 %147)
  br label %149

149:                                              ; preds = %139, %134
  br label %150

150:                                              ; preds = %149, %100
  br label %177

151:                                              ; preds = %80
  %152 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %153 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %152, i32 0, i32 3
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load i32, i32* @IRQ_NONE, align 4
  store i32 %155, i32* %3, align 4
  br label %185

156:                                              ; preds = %99, %76
  %157 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %158 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @UNIPHIER_FI2C_STOP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  br label %164

164:                                              ; preds = %163, %65
  %165 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %166 = call i32 @uniphier_fi2c_stop(%struct.uniphier_fi2c_priv* %165)
  br label %176

167:                                              ; preds = %156
  br label %168

168:                                              ; preds = %167, %57, %35, %28
  %169 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %170 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %169, i32 0, i32 0
  store i32 0, i32* %170, align 8
  %171 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %172 = call i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv* %171)
  %173 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %174 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %173, i32 0, i32 4
  %175 = call i32 @complete(i32* %174)
  br label %176

176:                                              ; preds = %168, %164
  br label %177

177:                                              ; preds = %176, %150, %77
  %178 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @uniphier_fi2c_clear_irqs(%struct.uniphier_fi2c_priv* %178, i32 %179)
  %181 = load %struct.uniphier_fi2c_priv*, %struct.uniphier_fi2c_priv** %6, align 8
  %182 = getelementptr inbounds %struct.uniphier_fi2c_priv, %struct.uniphier_fi2c_priv* %181, i32 0, i32 3
  %183 = call i32 @spin_unlock(i32* %182)
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %177, %151
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uniphier_fi2c_stop(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @uniphier_fi2c_fill_txfifo(%struct.uniphier_fi2c_priv*, i32) #1

declare dso_local i32 @uniphier_fi2c_drain_rxfifo(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @uniphier_fi2c_set_irqs(%struct.uniphier_fi2c_priv*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @uniphier_fi2c_clear_irqs(%struct.uniphier_fi2c_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
