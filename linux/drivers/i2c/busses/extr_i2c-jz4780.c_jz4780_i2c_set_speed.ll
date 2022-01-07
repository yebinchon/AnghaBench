; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-jz4780.c_jz4780_i2c_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4780_i2c = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"i2c not disabled\0A\00", align 1
@JZ4780_I2C_CTRL_SPDS = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL_REST = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL_SLVDIS = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL_MD = common dso_local global i16 0, align 2
@JZ4780_I2C_CTRL = common dso_local global i32 0, align 4
@JZ4780_I2C_SHCNT = common dso_local global i32 0, align 4
@JZ4780_I2C_SLCNT = common dso_local global i32 0, align 4
@JZ4780_I2C_CTRL_SPDF = common dso_local global i16 0, align 2
@JZ4780_I2C_FHCNT = common dso_local global i32 0, align 4
@JZ4780_I2C_FLCNT = common dso_local global i32 0, align 4
@JZ4780_I2C_SDASU = common dso_local global i32 0, align 4
@JZ4780_I2C_SDAHD_HDENB = common dso_local global i32 0, align 4
@JZ4780_I2C_SDAHD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jz4780_i2c*)* @jz4780_i2c_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4780_i2c_set_speed(%struct.jz4780_i2c* %0) #0 {
  %2 = alloca %struct.jz4780_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.jz4780_i2c* %0, %struct.jz4780_i2c** %2, align 8
  %11 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %12 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_get_rate(i32 %13)
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i16 0, i16* %9, align 2
  %16 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %17 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %20 = call i64 @jz4780_i2c_disable(%struct.jz4780_i2c* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %24 = getelementptr inbounds %struct.jz4780_i2c, %struct.jz4780_i2c* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %31, 100
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 4000
  %36 = sdiv i32 %35, 8700
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 600
  %40 = sdiv i32 %39, 1900
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 100
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load i16, i16* @JZ4780_I2C_CTRL_SPDS, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @JZ4780_I2C_CTRL_REST, align 2
  %51 = zext i16 %50 to i32
  %52 = or i32 %49, %51
  %53 = load i16, i16* @JZ4780_I2C_CTRL_SLVDIS, align 2
  %54 = zext i16 %53 to i32
  %55 = or i32 %52, %54
  %56 = load i16, i16* @JZ4780_I2C_CTRL_MD, align 2
  %57 = zext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = trunc i32 %58 to i16
  store i16 %59, i16* %9, align 2
  %60 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %61 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %62 = load i16, i16* %9, align 2
  %63 = zext i16 %62 to i32
  %64 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %60, i32 %61, i32 %63)
  %65 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %66 = load i32, i32* @JZ4780_I2C_SHCNT, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @JZ4780_I2CSHCNT_ADJUST(i32 %67)
  %69 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %65, i32 %66, i32 %68)
  %70 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %71 = load i32, i32* @JZ4780_I2C_SLCNT, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @JZ4780_I2CSLCNT_ADJUST(i32 %72)
  %74 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %70, i32 %71, i32 %73)
  br label %103

75:                                               ; preds = %41
  %76 = load i16, i16* @JZ4780_I2C_CTRL_SPDF, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @JZ4780_I2C_CTRL_REST, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %77, %79
  %81 = load i16, i16* @JZ4780_I2C_CTRL_SLVDIS, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %80, %82
  %84 = load i16, i16* @JZ4780_I2C_CTRL_MD, align 2
  %85 = zext i16 %84 to i32
  %86 = or i32 %83, %85
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %9, align 2
  %88 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %89 = load i32, i32* @JZ4780_I2C_CTRL, align 4
  %90 = load i16, i16* %9, align 2
  %91 = zext i16 %90 to i32
  %92 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %88, i32 %89, i32 %91)
  %93 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %94 = load i32, i32* @JZ4780_I2C_FHCNT, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @JZ4780_I2CFHCNT_ADJUST(i32 %95)
  %97 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %93, i32 %94, i32 %96)
  %98 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %99 = load i32, i32* @JZ4780_I2C_FLCNT, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @JZ4780_I2CFLCNT_ADJUST(i32 %100)
  %102 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %75, %47
  %104 = load i32, i32* %10, align 4
  %105 = icmp sle i32 %104, 100
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 300, i32* %7, align 4
  store i32 400, i32* %8, align 4
  br label %108

107:                                              ; preds = %103
  store i32 450, i32* %7, align 4
  store i32 450, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %3, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sdiv i32 %111, 1000000
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %3, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sdiv i32 %116, 1000000
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  store i32 255, i32* %7, align 4
  br label %122

122:                                              ; preds = %121, %108
  %123 = load i32, i32* %7, align 4
  %124 = icmp sle i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %125, %122
  %127 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %128 = load i32, i32* @JZ4780_I2C_SDASU, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp sgt i32 %131, 255
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 255, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32, i32* %8, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* @JZ4780_I2C_SDAHD_HDENB, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %142 = load i32, i32* @JZ4780_I2C_SDAHD, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %141, i32 %142, i32 %143)
  br label %149

145:                                              ; preds = %134
  %146 = load %struct.jz4780_i2c*, %struct.jz4780_i2c** %2, align 8
  %147 = load i32, i32* @JZ4780_I2C_SDAHD, align 4
  %148 = call i32 @jz4780_i2c_writew(%struct.jz4780_i2c* %146, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %145, %137
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i64 @jz4780_i2c_disable(%struct.jz4780_i2c*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @jz4780_i2c_writew(%struct.jz4780_i2c*, i32, i32) #1

declare dso_local i32 @JZ4780_I2CSHCNT_ADJUST(i32) #1

declare dso_local i32 @JZ4780_I2CSLCNT_ADJUST(i32) #1

declare dso_local i32 @JZ4780_I2CFHCNT_ADJUST(i32) #1

declare dso_local i32 @JZ4780_I2CFLCNT_ADJUST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
