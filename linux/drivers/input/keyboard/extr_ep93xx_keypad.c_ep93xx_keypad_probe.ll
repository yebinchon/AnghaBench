; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_ep93xx_keypad.c_ep93xx_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ep93xx_keypad = type { i32*, i32, i32, %struct.TYPE_6__*, i32, %struct.input_dev* }
%struct.TYPE_6__ = type { i32, %struct.matrix_keymap_data* }
%struct.matrix_keymap_data = type { i32 }
%struct.input_dev = type { i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@ep93xx_keypad_open = common dso_local global i32 0, align 4
@ep93xx_keypad_close = common dso_local global i32 0, align 4
@EP93XX_MATRIX_ROWS = common dso_local global i32 0, align 4
@EP93XX_MATRIX_COLS = common dso_local global i32 0, align 4
@EP93XX_KEYPAD_AUTOREPEAT = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@ep93xx_keypad_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_keypad_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_keypad*, align 8
  %5 = alloca %struct.matrix_keymap_data*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ep93xx_keypad* @kzalloc(i32 40, i32 %9)
  store %struct.ep93xx_keypad* %10, %struct.ep93xx_keypad** %4, align 8
  %11 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %12 = icmp ne %struct.ep93xx_keypad* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %233

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_6__* @dev_get_platdata(i32* %18)
  %20 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %21 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %20, i32 0, i32 3
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %21, align 8
  %22 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %23 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %229

29:                                               ; preds = %16
  %30 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %31 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %33, align 8
  store %struct.matrix_keymap_data* %34, %struct.matrix_keymap_data** %5, align 8
  %35 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %5, align 8
  %36 = icmp ne %struct.matrix_keymap_data* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %229

40:                                               ; preds = %29
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @platform_get_irq(%struct.platform_device* %41, i32 0)
  %43 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %44 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %46 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %229

52:                                               ; preds = %40
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = call %struct.resource* @platform_get_resource(%struct.platform_device* %53, i32 %54, i32 0)
  store %struct.resource* %55, %struct.resource** %7, align 8
  %56 = load %struct.resource*, %struct.resource** %7, align 8
  %57 = icmp ne %struct.resource* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %229

61:                                               ; preds = %52
  %62 = load %struct.resource*, %struct.resource** %7, align 8
  %63 = getelementptr inbounds %struct.resource, %struct.resource* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.resource*, %struct.resource** %7, align 8
  %66 = call i32 @resource_size(%struct.resource* %65)
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.resource* @request_mem_region(i32 %64, i32 %66, i32 %69)
  store %struct.resource* %70, %struct.resource** %7, align 8
  %71 = load %struct.resource*, %struct.resource** %7, align 8
  %72 = icmp ne %struct.resource* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %61
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %229

76:                                               ; preds = %61
  %77 = load %struct.resource*, %struct.resource** %7, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = call i32 @resource_size(%struct.resource* %80)
  %82 = call i32* @ioremap(i32 %79, i32 %81)
  %83 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %84 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %83, i32 0, i32 0
  store i32* %82, i32** %84, align 8
  %85 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %86 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %76
  %90 = load i32, i32* @ENXIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %8, align 4
  br label %222

92:                                               ; preds = %76
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i32 @ep93xx_keypad_acquire_gpio(%struct.platform_device* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %217

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @clk_get(i32* %100, i32* null)
  %102 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %103 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %105 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @IS_ERR(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %111 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @PTR_ERR(i32 %112)
  store i32 %113, i32* %8, align 4
  br label %214

114:                                              ; preds = %98
  %115 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %115, %struct.input_dev** %6, align 8
  %116 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %117 = icmp ne %struct.input_dev* %116, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  br label %209

121:                                              ; preds = %114
  %122 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %123 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %124 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %123, i32 0, i32 5
  store %struct.input_dev* %122, %struct.input_dev** %124, align 8
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @BUS_HOST, align 4
  %131 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 8
  %134 = load i32, i32* @ep93xx_keypad_open, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @ep93xx_keypad_close, align 4
  %138 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i32* %141, i32** %144, align 8
  %145 = load %struct.matrix_keymap_data*, %struct.matrix_keymap_data** %5, align 8
  %146 = load i32, i32* @EP93XX_MATRIX_ROWS, align 4
  %147 = load i32, i32* @EP93XX_MATRIX_COLS, align 4
  %148 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %149 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %152 = call i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data* %145, i32* null, i32 %146, i32 %147, i32 %150, %struct.input_dev* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %121
  br label %206

156:                                              ; preds = %121
  %157 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %158 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %157, i32 0, i32 3
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @EP93XX_KEYPAD_AUTOREPEAT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load i32, i32* @EV_REP, align 4
  %167 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %168 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @__set_bit(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %156
  %172 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %173 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %174 = call i32 @input_set_drvdata(%struct.input_dev* %172, %struct.ep93xx_keypad* %173)
  %175 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %176 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ep93xx_keypad_irq_handler, align 4
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %183 = call i32 @request_irq(i32 %177, i32 %178, i32 0, i32 %181, %struct.ep93xx_keypad* %182)
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %171
  br label %206

187:                                              ; preds = %171
  %188 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %189 = call i32 @input_register_device(%struct.input_dev* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %200

193:                                              ; preds = %187
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %196 = call i32 @platform_set_drvdata(%struct.platform_device* %194, %struct.ep93xx_keypad* %195)
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %197, i32 0, i32 0
  %199 = call i32 @device_init_wakeup(i32* %198, i32 1)
  store i32 0, i32* %2, align 4
  br label %233

200:                                              ; preds = %192
  %201 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %202 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %205 = call i32 @free_irq(i32 %203, %struct.ep93xx_keypad* %204)
  br label %206

206:                                              ; preds = %200, %186, %155
  %207 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %208 = call i32 @input_free_device(%struct.input_dev* %207)
  br label %209

209:                                              ; preds = %206, %118
  %210 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %211 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @clk_put(i32 %212)
  br label %214

214:                                              ; preds = %209, %109
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = call i32 @ep93xx_keypad_release_gpio(%struct.platform_device* %215)
  br label %217

217:                                              ; preds = %214, %97
  %218 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %219 = getelementptr inbounds %struct.ep93xx_keypad, %struct.ep93xx_keypad* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @iounmap(i32* %220)
  br label %222

222:                                              ; preds = %217, %89
  %223 = load %struct.resource*, %struct.resource** %7, align 8
  %224 = getelementptr inbounds %struct.resource, %struct.resource* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.resource*, %struct.resource** %7, align 8
  %227 = call i32 @resource_size(%struct.resource* %226)
  %228 = call i32 @release_mem_region(i32 %225, i32 %227)
  br label %229

229:                                              ; preds = %222, %73, %58, %49, %37, %26
  %230 = load %struct.ep93xx_keypad*, %struct.ep93xx_keypad** %4, align 8
  %231 = call i32 @kfree(%struct.ep93xx_keypad* %230)
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %2, align 4
  br label %233

233:                                              ; preds = %229, %193, %13
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.ep93xx_keypad* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @ep93xx_keypad_acquire_gpio(%struct.platform_device*) #1

declare dso_local i32 @clk_get(i32*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @matrix_keypad_build_keymap(%struct.matrix_keymap_data*, i32*, i32, i32, i32, %struct.input_dev*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.ep93xx_keypad*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ep93xx_keypad*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ep93xx_keypad*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ep93xx_keypad*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @ep93xx_keypad_release_gpio(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.ep93xx_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
