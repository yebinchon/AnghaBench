; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_slave_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-rcar.c_rcar_i2c_slave_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_i2c_priv = type { i32 }

@ICSSR = common dso_local global i32 0, align 4
@ICSIER = common dso_local global i32 0, align 4
@SAR = common dso_local global i32 0, align 4
@STM = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_REQUESTED = common dso_local global i32 0, align 4
@ICRXTX = common dso_local global i32 0, align 4
@SDE = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_REQUESTED = common dso_local global i32 0, align 4
@SDR = common dso_local global i32 0, align 4
@I2C_SLAVE_STOP = common dso_local global i32 0, align 4
@I2C_SLAVE_WRITE_RECEIVED = common dso_local global i32 0, align 4
@ICSCR = common dso_local global i32 0, align 4
@SIE = common dso_local global i32 0, align 4
@SDBS = common dso_local global i32 0, align 4
@FNA = common dso_local global i32 0, align 4
@I2C_SLAVE_READ_PROCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_i2c_priv*)* @rcar_i2c_slave_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_i2c_slave_irq(%struct.rcar_i2c_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_i2c_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rcar_i2c_priv* %0, %struct.rcar_i2c_priv** %3, align 8
  %8 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %9 = load i32, i32* @ICSSR, align 4
  %10 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %8, i32 %9)
  %11 = and i32 %10, 255
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %14 = load i32, i32* @ICSIER, align 4
  %15 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %13, i32 %14)
  %16 = and i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %151

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SAR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @STM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I2C_SLAVE_READ_REQUESTED, align 4
  %35 = call i32 @i2c_slave_event(i32 %33, i32 %34, i32* %6)
  %36 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %37 = load i32, i32* @ICRXTX, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %36, i32 %37, i32 %38)
  %40 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %41 = load i32, i32* @ICSIER, align 4
  %42 = load i32, i32* @SDE, align 4
  %43 = load i32, i32* @SSR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SAR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %40, i32 %41, i32 %46)
  br label %65

48:                                               ; preds = %25
  %49 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I2C_SLAVE_WRITE_REQUESTED, align 4
  %53 = call i32 @i2c_slave_event(i32 %51, i32 %52, i32* %6)
  %54 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %55 = load i32, i32* @ICRXTX, align 4
  %56 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %54, i32 %55)
  %57 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %58 = load i32, i32* @ICSIER, align 4
  %59 = load i32, i32* @SDR, align 4
  %60 = load i32, i32* @SSR, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SAR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %57, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %48, %30
  %66 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %67 = load i32, i32* @ICSSR, align 4
  %68 = load i32, i32* @SAR, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %69, 255
  %71 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %66, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %20
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SSR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %79 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @I2C_SLAVE_STOP, align 4
  %82 = call i32 @i2c_slave_event(i32 %80, i32 %81, i32* %6)
  %83 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %84 = load i32, i32* @ICSIER, align 4
  %85 = load i32, i32* @SAR, align 4
  %86 = load i32, i32* @SSR, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %83, i32 %84, i32 %87)
  %89 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %90 = load i32, i32* @ICSSR, align 4
  %91 = load i32, i32* @SSR, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %92, 255
  %94 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %77, %72
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SDR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  %101 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %102 = load i32, i32* @ICRXTX, align 4
  %103 = call i32 @rcar_i2c_read(%struct.rcar_i2c_priv* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %105 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @I2C_SLAVE_WRITE_RECEIVED, align 4
  %108 = call i32 @i2c_slave_event(i32 %106, i32 %107, i32* %6)
  store i32 %108, i32* %7, align 4
  %109 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %110 = load i32, i32* @ICSCR, align 4
  %111 = load i32, i32* @SIE, align 4
  %112 = load i32, i32* @SDBS, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* @FNA, align 4
  br label %119

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = or i32 %113, %120
  %122 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %109, i32 %110, i32 %121)
  %123 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %124 = load i32, i32* @ICSSR, align 4
  %125 = load i32, i32* @SDR, align 4
  %126 = xor i32 %125, -1
  %127 = and i32 %126, 255
  %128 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %119, %95
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @SDE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %129
  %135 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %136 = getelementptr inbounds %struct.rcar_i2c_priv, %struct.rcar_i2c_priv* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @I2C_SLAVE_READ_PROCESSED, align 4
  %139 = call i32 @i2c_slave_event(i32 %137, i32 %138, i32* %6)
  %140 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %141 = load i32, i32* @ICRXTX, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %140, i32 %141, i32 %142)
  %144 = load %struct.rcar_i2c_priv*, %struct.rcar_i2c_priv** %3, align 8
  %145 = load i32, i32* @ICSSR, align 4
  %146 = load i32, i32* @SDE, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %147, 255
  %149 = call i32 @rcar_i2c_write(%struct.rcar_i2c_priv* %144, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %134, %129
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %19
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @rcar_i2c_read(%struct.rcar_i2c_priv*, i32) #1

declare dso_local i32 @i2c_slave_event(i32, i32, i32*) #1

declare dso_local i32 @rcar_i2c_write(%struct.rcar_i2c_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
