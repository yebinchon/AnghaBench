; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pca953x.c_pca953x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i64 }
%struct.pca953x_platform_data = type { i32, i32, i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32, i32, i32 }
%struct.i2c_client.0 = type opaque
%struct.pca953x_chip = type { i32, i64, %struct.regulator*, %struct.TYPE_2__, i32*, i32, %struct.regulator*, %struct.i2c_client*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regulator = type { i32 }
%struct.gpio_desc = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"reg get err: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"reg en err: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pca953x_i2c_regmap = common dso_local global i32 0, align 4
@PCA_GPIO_MASK = common dso_local global i32 0, align 4
@PCA953X_TYPE = common dso_local global i64 0, align 8
@pca953x_regs = common dso_local global i32 0, align 4
@pca957x_regs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"setup failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pca953x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca953x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pca953x_platform_data*, align 8
  %7 = alloca %struct.pca953x_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.regulator*, align 8
  %12 = alloca %struct.gpio_desc*, align 8
  %13 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pca953x_chip* @devm_kzalloc(i32* %15, i32 72, i32 %16)
  store %struct.pca953x_chip* %17, %struct.pca953x_chip** %7, align 8
  %18 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %19 = icmp eq %struct.pca953x_chip* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %247

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call %struct.pca953x_platform_data* @dev_get_platdata(i32* %25)
  store %struct.pca953x_platform_data* %26, %struct.pca953x_platform_data** %6, align 8
  %27 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %28 = icmp ne %struct.pca953x_platform_data* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %31 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %34 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %37 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %39 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %10, align 4
  %41 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %45 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  br label %63

46:                                               ; preds = %23
  %47 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %48 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  store i32 0, i32* %8, align 4
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %52 = call %struct.regulator* @devm_gpiod_get_optional(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = bitcast %struct.regulator* %52 to %struct.gpio_desc*
  store %struct.gpio_desc* %53, %struct.gpio_desc** %12, align 8
  %54 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %55 = bitcast %struct.gpio_desc* %54 to %struct.regulator*
  %56 = call i64 @IS_ERR(%struct.regulator* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %12, align 8
  %60 = bitcast %struct.gpio_desc* %59 to %struct.regulator*
  %61 = call i32 @PTR_ERR(%struct.regulator* %60)
  store i32 %61, i32* %3, align 4
  br label %247

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %66 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %65, i32 0, i32 7
  store %struct.i2c_client* %64, %struct.i2c_client** %66, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call %struct.regulator* @devm_regulator_get(i32* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.regulator* %69, %struct.regulator** %11, align 8
  %70 = load %struct.regulator*, %struct.regulator** %11, align 8
  %71 = call i64 @IS_ERR(%struct.regulator* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %63
  %74 = load %struct.regulator*, %struct.regulator** %11, align 8
  %75 = call i32 @PTR_ERR(%struct.regulator* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @EPROBE_DEFER, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %247

87:                                               ; preds = %63
  %88 = load %struct.regulator*, %struct.regulator** %11, align 8
  %89 = call i32 @regulator_enable(%struct.regulator* %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %247

98:                                               ; preds = %87
  %99 = load %struct.regulator*, %struct.regulator** %11, align 8
  %100 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %101 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %100, i32 0, i32 2
  store %struct.regulator* %99, %struct.regulator** %101, align 8
  %102 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %103 = icmp ne %struct.i2c_device_id* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %106 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %109 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %124

110:                                              ; preds = %98
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i8* @device_get_match_data(i32* %112)
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %241

119:                                              ; preds = %110
  %120 = load i8*, i8** %13, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %123 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %119, %104
  %125 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %126 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %127 = call i32 @i2c_set_clientdata(%struct.i2c_client* %125, %struct.pca953x_chip* %126)
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = call %struct.regulator* @devm_regmap_init_i2c(%struct.i2c_client* %128, i32* @pca953x_i2c_regmap)
  %130 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %131 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %130, i32 0, i32 6
  store %struct.regulator* %129, %struct.regulator** %131, align 8
  %132 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %133 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %132, i32 0, i32 6
  %134 = load %struct.regulator*, %struct.regulator** %133, align 8
  %135 = call i64 @IS_ERR(%struct.regulator* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %139 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %138, i32 0, i32 6
  %140 = load %struct.regulator*, %struct.regulator** %139, align 8
  %141 = call i32 @PTR_ERR(%struct.regulator* %140)
  store i32 %141, i32* %9, align 4
  br label %241

142:                                              ; preds = %124
  %143 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %144 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %143, i32 0, i32 6
  %145 = load %struct.regulator*, %struct.regulator** %144, align 8
  %146 = call i32 @regcache_mark_dirty(%struct.regulator* %145)
  %147 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %148 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %147, i32 0, i32 5
  %149 = call i32 @mutex_init(i32* %148)
  %150 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %151 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %150, i32 0, i32 5
  %152 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %153 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @i2c_adapter_depth(i32 %154)
  %156 = call i32 @lockdep_set_subclass(i32* %151, i32 %155)
  %157 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %158 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %159 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @PCA_GPIO_MASK, align 4
  %162 = sext i32 %161 to i64
  %163 = and i64 %160, %162
  %164 = trunc i64 %163 to i32
  %165 = call i32 @pca953x_setup_gpio(%struct.pca953x_chip* %157, i32 %164)
  %166 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %167 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i64 @PCA_CHIP_TYPE(i32 %169)
  %171 = load i64, i64* @PCA953X_TYPE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %142
  %174 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %175 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %174, i32 0, i32 4
  store i32* @pca953x_regs, i32** %175, align 8
  %176 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @device_pca95xx_init(%struct.pca953x_chip* %176, i32 %177)
  store i32 %178, i32* %9, align 4
  br label %185

179:                                              ; preds = %142
  %180 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %181 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %180, i32 0, i32 4
  store i32* @pca957x_regs, i32** %181, align 8
  %182 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @device_pca957x_init(%struct.pca953x_chip* %182, i32 %183)
  store i32 %184, i32* %9, align 4
  br label %185

185:                                              ; preds = %179, %173
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %241

189:                                              ; preds = %185
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %193 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %192, i32 0, i32 3
  %194 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %195 = call i32 @devm_gpiochip_add_data(i32* %191, %struct.TYPE_2__* %193, %struct.pca953x_chip* %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %241

199:                                              ; preds = %189
  %200 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @pca953x_irq_setup(%struct.pca953x_chip* %200, i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %241

206:                                              ; preds = %199
  %207 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %208 = icmp ne %struct.pca953x_platform_data* %207, null
  br i1 %208, label %209, label %240

209:                                              ; preds = %206
  %210 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %211 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %210, i32 0, i32 2
  %212 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %211, align 8
  %213 = icmp ne i32 (%struct.i2c_client.0*, i32, i32, i32)* %212, null
  br i1 %213, label %214, label %240

214:                                              ; preds = %209
  %215 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %216 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %215, i32 0, i32 2
  %217 = load i32 (%struct.i2c_client.0*, i32, i32, i32)*, i32 (%struct.i2c_client.0*, i32, i32, i32)** %216, align 8
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = bitcast %struct.i2c_client* %218 to %struct.i2c_client.0*
  %220 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %221 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %220, i32 0, i32 3
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %225 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pca953x_platform_data*, %struct.pca953x_platform_data** %6, align 8
  %229 = getelementptr inbounds %struct.pca953x_platform_data, %struct.pca953x_platform_data* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = call i32 %217(%struct.i2c_client.0* %219, i32 %223, i32 %227, i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %214
  %235 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %236 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %235, i32 0, i32 0
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @dev_warn(i32* %236, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %237)
  br label %239

239:                                              ; preds = %234, %214
  br label %240

240:                                              ; preds = %239, %209, %206
  store i32 0, i32* %3, align 4
  br label %247

241:                                              ; preds = %205, %198, %188, %137, %116
  %242 = load %struct.pca953x_chip*, %struct.pca953x_chip** %7, align 8
  %243 = getelementptr inbounds %struct.pca953x_chip, %struct.pca953x_chip* %242, i32 0, i32 2
  %244 = load %struct.regulator*, %struct.regulator** %243, align 8
  %245 = call i32 @regulator_disable(%struct.regulator* %244)
  %246 = load i32, i32* %9, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %241, %240, %92, %85, %58, %20
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local %struct.pca953x_chip* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.pca953x_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.regulator* @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local %struct.regulator* @devm_regulator_get(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i8* @device_get_match_data(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pca953x_chip*) #1

declare dso_local %struct.regulator* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i32 @regcache_mark_dirty(%struct.regulator*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_subclass(i32*, i32) #1

declare dso_local i32 @i2c_adapter_depth(i32) #1

declare dso_local i32 @pca953x_setup_gpio(%struct.pca953x_chip*, i32) #1

declare dso_local i64 @PCA_CHIP_TYPE(i32) #1

declare dso_local i32 @device_pca95xx_init(%struct.pca953x_chip*, i32) #1

declare dso_local i32 @device_pca957x_init(%struct.pca953x_chip*, i32) #1

declare dso_local i32 @devm_gpiochip_add_data(i32*, %struct.TYPE_2__*, %struct.pca953x_chip*) #1

declare dso_local i32 @pca953x_irq_setup(%struct.pca953x_chip*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
