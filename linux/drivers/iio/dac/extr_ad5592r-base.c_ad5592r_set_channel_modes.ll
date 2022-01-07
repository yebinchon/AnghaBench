; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_set_channel_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_set_channel_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5592r_state = type { i32, i32*, i32, i32, i32, i32, i32*, %struct.ad5592r_rw_ops* }
%struct.ad5592r_rw_ops = type { i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32*)* }
%struct.iio_dev = type { i32 }

@AD5592R_REG_PULLDOWN = common dso_local global i32 0, align 4
@AD5592R_REG_TRISTATE = common dso_local global i32 0, align 4
@AD5592R_REG_DAC_EN = common dso_local global i32 0, align 4
@AD5592R_REG_ADC_EN = common dso_local global i32 0, align 4
@AD5592R_REG_GPIO_SET = common dso_local global i32 0, align 4
@AD5592R_REG_GPIO_OUT_EN = common dso_local global i32 0, align 4
@AD5592R_REG_GPIO_IN_EN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5592r_state*)* @ad5592r_set_channel_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5592r_set_channel_modes(%struct.ad5592r_state* %0) #0 {
  %2 = alloca %struct.ad5592r_state*, align 8
  %3 = alloca %struct.ad5592r_rw_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ad5592r_state* %0, %struct.ad5592r_state** %2, align 8
  %12 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %13 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %12, i32 0, i32 7
  %14 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %13, align 8
  store %struct.ad5592r_rw_ops* %14, %struct.ad5592r_rw_ops** %3, align 8
  %15 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %16 = call %struct.iio_dev* @iio_priv_to_dev(%struct.ad5592r_state* %15)
  store %struct.iio_dev* %16, %struct.iio_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %105, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %20 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %108

23:                                               ; preds = %17
  %24 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %25 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %64 [
    i32 135, label %31
    i32 136, label %36
    i32 134, label %41
    i32 133, label %50
    i32 132, label %63
  ]

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @BIT(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %104

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %104

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %104

50:                                               ; preds = %23
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %54 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %60 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %104

63:                                               ; preds = %23
  br label %64

64:                                               ; preds = %23, %63
  %65 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %66 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %98 [
    i32 129, label %72
    i32 130, label %77
    i32 131, label %84
    i32 128, label %97
  ]

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %103

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %81 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %103

84:                                               ; preds = %64
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %88 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @BIT(i32 %91)
  %93 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %94 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %103

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %64, %97
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @BIT(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %98, %84, %77, %72
  br label %104

104:                                              ; preds = %103, %50, %41, %36, %31
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %17

108:                                              ; preds = %17
  %109 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %110 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %109, i32 0, i32 0
  %111 = call i32 @mutex_lock(i32* %110)
  %112 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %113 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %112, i32 0, i32 0
  %114 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %113, align 8
  %115 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %116 = load i32, i32* @AD5592R_REG_PULLDOWN, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 %114(%struct.ad5592r_state* %115, i32 %116, i32 %117)
  store i32 %118, i32* %4, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %212

122:                                              ; preds = %108
  %123 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %124 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %123, i32 0, i32 0
  %125 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %124, align 8
  %126 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %127 = load i32, i32* @AD5592R_REG_TRISTATE, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 %125(%struct.ad5592r_state* %126, i32 %127, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %212

133:                                              ; preds = %122
  %134 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %135 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %134, i32 0, i32 0
  %136 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %135, align 8
  %137 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %138 = load i32, i32* @AD5592R_REG_DAC_EN, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 %136(%struct.ad5592r_state* %137, i32 %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %212

144:                                              ; preds = %133
  %145 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %146 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %145, i32 0, i32 0
  %147 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %146, align 8
  %148 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %149 = load i32, i32* @AD5592R_REG_ADC_EN, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 %147(%struct.ad5592r_state* %148, i32 %149, i32 %150)
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %212

155:                                              ; preds = %144
  %156 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %157 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %156, i32 0, i32 0
  %158 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %157, align 8
  %159 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %160 = load i32, i32* @AD5592R_REG_GPIO_SET, align 4
  %161 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %162 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = call i32 %158(%struct.ad5592r_state* %159, i32 %160, i32 %163)
  store i32 %164, i32* %4, align 4
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  br label %212

168:                                              ; preds = %155
  %169 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %170 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %169, i32 0, i32 0
  %171 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %170, align 8
  %172 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %173 = load i32, i32* @AD5592R_REG_GPIO_OUT_EN, align 4
  %174 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %175 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 %171(%struct.ad5592r_state* %172, i32 %173, i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %168
  br label %212

181:                                              ; preds = %168
  %182 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %183 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %182, i32 0, i32 0
  %184 = load i32 (%struct.ad5592r_state*, i32, i32)*, i32 (%struct.ad5592r_state*, i32, i32)** %183, align 8
  %185 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %186 = load i32, i32* @AD5592R_REG_GPIO_IN_EN, align 4
  %187 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %188 = getelementptr inbounds %struct.ad5592r_state, %struct.ad5592r_state* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 %184(%struct.ad5592r_state* %185, i32 %186, i32 %189)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  br label %212

194:                                              ; preds = %181
  %195 = load %struct.ad5592r_rw_ops*, %struct.ad5592r_rw_ops** %3, align 8
  %196 = getelementptr inbounds %struct.ad5592r_rw_ops, %struct.ad5592r_rw_ops* %195, i32 0, i32 1
  %197 = load i32 (%struct.ad5592r_state*, i32, i32*)*, i32 (%struct.ad5592r_state*, i32, i32*)** %196, align 8
  %198 = load %struct.ad5592r_state*, %struct.ad5592r_state** %2, align 8
  %199 = load i32, i32* @AD5592R_REG_ADC_EN, align 4
  %200 = call i32 %197(%struct.ad5592r_state* %198, i32 %199, i32* %11)
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %4, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %194
  %204 = load i32, i32* %11, align 4
  %205 = and i32 %204, 255
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %208, %203, %194
  br label %212

212:                                              ; preds = %211, %193, %180, %167, %154, %143, %132, %121
  %213 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %214 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %213, i32 0, i32 0
  %215 = call i32 @mutex_unlock(i32* %214)
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.ad5592r_state*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
