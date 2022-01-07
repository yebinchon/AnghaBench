; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_write_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hi8435.c_hi8435_write_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.hi8435_priv = type { i32*, i32*, i32 }

@HI8435_PSEN_REG = common dso_local global i32 0, align 4
@HI8435_SOCENHYS_REG = common dso_local global i32 0, align 4
@HI8435_GOCENHYS_REG = common dso_local global i32 0, align 4
@IIO_EV_DIR_FALLING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32, i32)* @hi8435_write_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi8435_write_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hi8435_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %22 = call %struct.hi8435_priv* @iio_priv(%struct.iio_dev* %21)
  store %struct.hi8435_priv* %22, %struct.hi8435_priv** %16, align 8
  %23 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %24 = load i32, i32* @HI8435_PSEN_REG, align 4
  %25 = call i32 @hi8435_readb(%struct.hi8435_priv* %23, i32 %24, i32* %19)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i32, i32* %17, align 4
  store i32 %29, i32* %8, align 4
  br label %268

30:                                               ; preds = %7
  %31 = load i32, i32* %19, align 4
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 8
  %36 = call i32 @BIT(i32 %35)
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %18, align 4
  %42 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @HI8435_SOCENHYS_REG, align 4
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* @HI8435_GOCENHYS_REG, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = call i32 @hi8435_readw(%struct.hi8435_priv* %42, i32 %50, i32* %20)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %17, align 4
  store i32 %55, i32* %8, align 4
  br label %268

56:                                               ; preds = %49
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @IIO_EV_DIR_FALLING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %126

60:                                               ; preds = %56
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %77, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = icmp sgt i32 %64, 21
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 2
  %69 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %70 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %68, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66, %63, %60
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %268

80:                                               ; preds = %66
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %83 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %81, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %8, align 4
  br label %268

91:                                               ; preds = %80
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %94 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %100 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %107 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %105, %112
  %114 = srem i32 %113, 2
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %91
  %117 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %118 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %91
  br label %197

126:                                              ; preds = %56
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %196

130:                                              ; preds = %126
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 3
  br i1 %132, label %147, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 22
  br i1 %135, label %147, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %139 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 2
  %146 = icmp slt i32 %137, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %136, %133, %130
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %268

150:                                              ; preds = %136
  %151 = load i32, i32* %14, align 4
  %152 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %153 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %18, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %151, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  br label %268

161:                                              ; preds = %150
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %164 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %162, i32* %168, align 4
  %169 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %170 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %177 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %175, %182
  %184 = srem i32 %183, 2
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %161
  %187 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %188 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %186, %161
  br label %196

196:                                              ; preds = %195, %126
  br label %197

197:                                              ; preds = %196, %125
  %198 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %199 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %198, i32 0, i32 2
  %200 = call i32 @mutex_lock(i32* %199)
  %201 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @HI8435_SOCENHYS_REG, align 4
  br label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @HI8435_GOCENHYS_REG, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = call i32 @hi8435_readw(%struct.hi8435_priv* %201, i32 %209, i32* %20)
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %215 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %214, i32 0, i32 2
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i32, i32* %17, align 4
  store i32 %217, i32* %8, align 4
  br label %268

218:                                              ; preds = %208
  %219 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %220 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %18, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %227 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sub nsw i32 %225, %232
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = shl i32 %234, 8
  store i32 %235, i32* %20, align 4
  %236 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %237 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %18, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %244 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %242, %249
  %251 = load i32, i32* %20, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %20, align 4
  %253 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %218
  %257 = load i32, i32* @HI8435_SOCENHYS_REG, align 4
  br label %260

258:                                              ; preds = %218
  %259 = load i32, i32* @HI8435_GOCENHYS_REG, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @hi8435_writew(%struct.hi8435_priv* %253, i32 %261, i32 %262)
  store i32 %263, i32* %17, align 4
  %264 = load %struct.hi8435_priv*, %struct.hi8435_priv** %16, align 8
  %265 = getelementptr inbounds %struct.hi8435_priv, %struct.hi8435_priv* %264, i32 0, i32 2
  %266 = call i32 @mutex_unlock(i32* %265)
  %267 = load i32, i32* %17, align 4
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %260, %213, %160, %147, %90, %77, %54, %28
  %269 = load i32, i32* %8, align 4
  ret i32 %269
}

declare dso_local %struct.hi8435_priv* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hi8435_readb(%struct.hi8435_priv*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hi8435_readw(%struct.hi8435_priv*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hi8435_writew(%struct.hi8435_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
