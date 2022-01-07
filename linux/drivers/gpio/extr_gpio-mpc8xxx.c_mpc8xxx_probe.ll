; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mpc8xxx.c_mpc8xxx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc8xxx_gpio_devtype = type { i32 (%struct.gpio_chip.0*)*, i64, i64, i32 }
%struct.gpio_chip.0 = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mpc8xxx_gpio_chip = type { i64, i32, i32, i64, %struct.gpio_chip, i32 }
%struct.gpio_chip = type { i32 (i64, i32)*, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"little-endian\00", align 1
@GPIO_DAT = common dso_local global i64 0, align 8
@GPIO_DIR = common dso_local global i64 0, align 8
@BGPIOF_BIG_ENDIAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"GPIO registers are LITTLE endian\0A\00", align 1
@BGPIOF_BIG_ENDIAN_BYTE_ORDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GPIO registers are BIG endian\0A\00", align 1
@mpc8xxx_gpio_devtype_default = common dso_local global %struct.mpc8xxx_gpio_devtype zeroinitializer, align 8
@mpc8xxx_irq_chip = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@mpc8xxx_gpio_to_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"%pOF: GPIO chip registration failed with status %d\0A\00", align 1
@MPC8XXX_GPIO_PINS = common dso_local global i32 0, align 4
@mpc8xxx_gpio_irq_ops = common dso_local global i32 0, align 4
@GPIO_IER = common dso_local global i64 0, align 8
@GPIO_IMR = common dso_local global i64 0, align 8
@mpc8xxx_gpio_irq_cascade = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc8xxx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc8xxx_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.mpc8xxx_gpio_chip*, align 8
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.mpc8xxx_gpio_devtype*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.mpc8xxx_gpio_devtype* @of_device_get_match_data(%struct.TYPE_6__* %14)
  store %struct.mpc8xxx_gpio_devtype* %15, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mpc8xxx_gpio_chip* @devm_kzalloc(%struct.TYPE_6__* %17, i32 64, i32 %18)
  store %struct.mpc8xxx_gpio_chip* %19, %struct.mpc8xxx_gpio_chip** %5, align 8
  %20 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %21 = icmp ne %struct.mpc8xxx_gpio_chip* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %209

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.mpc8xxx_gpio_chip* %27)
  %29 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %30 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %29, i32 0, i32 5
  %31 = call i32 @raw_spin_lock_init(i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i64 @of_iomap(%struct.device_node* %32, i32 0)
  %34 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %37 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %209

43:                                               ; preds = %25
  %44 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %45 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %44, i32 0, i32 4
  store %struct.gpio_chip* %45, %struct.gpio_chip** %6, align 8
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = call i64 @of_property_read_bool(%struct.device_node* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %54 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @GPIO_DAT, align 8
  %57 = add nsw i64 %55, %56
  %58 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %59 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GPIO_DIR, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* @BGPIOF_BIG_ENDIAN, align 4
  %64 = call i32 @bgpio_init(%struct.gpio_chip* %50, %struct.TYPE_6__* %52, i32 4, i64 %57, i32* null, i32* null, i64 %62, i32* null, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %203

68:                                               ; preds = %49
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_dbg(%struct.TYPE_6__* %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %97

72:                                               ; preds = %43
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %77 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GPIO_DAT, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %82 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @GPIO_DIR, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i32, i32* @BGPIOF_BIG_ENDIAN, align 4
  %87 = load i32, i32* @BGPIOF_BIG_ENDIAN_BYTE_ORDER, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @bgpio_init(%struct.gpio_chip* %73, %struct.TYPE_6__* %75, i32 4, i64 %80, i32* null, i32* null, i64 %85, i32* null, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %72
  br label %203

93:                                               ; preds = %72
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = call i32 @dev_dbg(%struct.TYPE_6__* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %68
  %98 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %99 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %102 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %104 = icmp ne %struct.mpc8xxx_gpio_devtype* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  store %struct.mpc8xxx_gpio_devtype* @mpc8xxx_gpio_devtype_default, %struct.mpc8xxx_gpio_devtype** %7, align 8
  br label %106

106:                                              ; preds = %105, %97
  %107 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %108 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mpc8xxx_irq_chip, i32 0, i32 0), align 4
  %110 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %111 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %116 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %119 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %114, %106
  %121 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %122 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %127 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %130 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %125, %120
  %132 = load i32, i32* @mpc8xxx_gpio_to_irq, align 4
  %133 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %134 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %136 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %137 = call i32 @gpiochip_add_data(%struct.gpio_chip* %135, %struct.mpc8xxx_gpio_chip* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = load %struct.device_node*, %struct.device_node** %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %141, i32 %142)
  br label %203

144:                                              ; preds = %131
  %145 = load %struct.device_node*, %struct.device_node** %4, align 8
  %146 = call i32 @irq_of_parse_and_map(%struct.device_node* %145, i32 0)
  %147 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %148 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %150 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %209

154:                                              ; preds = %144
  %155 = load %struct.device_node*, %struct.device_node** %4, align 8
  %156 = load i32, i32* @MPC8XXX_GPIO_PINS, align 4
  %157 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %158 = call i32 @irq_domain_add_linear(%struct.device_node* %155, i32 %156, i32* @mpc8xxx_gpio_irq_ops, %struct.mpc8xxx_gpio_chip* %157)
  %159 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %160 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %162 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %209

166:                                              ; preds = %154
  %167 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %168 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %167, i32 0, i32 0
  %169 = load i32 (i64, i32)*, i32 (i64, i32)** %168, align 8
  %170 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %171 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @GPIO_IER, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 %169(i64 %174, i32 -1)
  %176 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %177 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %176, i32 0, i32 0
  %178 = load i32 (i64, i32)*, i32 (i64, i32)** %177, align 8
  %179 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %180 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @GPIO_IMR, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 %178(i64 %183, i32 0)
  %185 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %186 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %185, i32 0, i32 0
  %187 = load i32 (%struct.gpio_chip.0*)*, i32 (%struct.gpio_chip.0*)** %186, align 8
  %188 = icmp ne i32 (%struct.gpio_chip.0*)* %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %166
  %190 = load %struct.mpc8xxx_gpio_devtype*, %struct.mpc8xxx_gpio_devtype** %7, align 8
  %191 = getelementptr inbounds %struct.mpc8xxx_gpio_devtype, %struct.mpc8xxx_gpio_devtype* %190, i32 0, i32 0
  %192 = load i32 (%struct.gpio_chip.0*)*, i32 (%struct.gpio_chip.0*)** %191, align 8
  %193 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %194 = bitcast %struct.gpio_chip* %193 to %struct.gpio_chip.0*
  %195 = call i32 %192(%struct.gpio_chip.0* %194)
  br label %196

196:                                              ; preds = %189, %166
  %197 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %198 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @mpc8xxx_gpio_irq_cascade, align 4
  %201 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %202 = call i32 @irq_set_chained_handler_and_data(i32 %199, i32 %200, %struct.mpc8xxx_gpio_chip* %201)
  store i32 0, i32* %2, align 4
  br label %209

203:                                              ; preds = %140, %92, %67
  %204 = load %struct.mpc8xxx_gpio_chip*, %struct.mpc8xxx_gpio_chip** %5, align 8
  %205 = getelementptr inbounds %struct.mpc8xxx_gpio_chip, %struct.mpc8xxx_gpio_chip* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @iounmap(i64 %206)
  %208 = load i32, i32* %8, align 4
  store i32 %208, i32* %2, align 4
  br label %209

209:                                              ; preds = %203, %196, %165, %153, %40, %22
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local %struct.mpc8xxx_gpio_devtype* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local %struct.mpc8xxx_gpio_chip* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mpc8xxx_gpio_chip*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i64 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @bgpio_init(%struct.gpio_chip*, %struct.TYPE_6__*, i32, i64, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.mpc8xxx_gpio_chip*) #1

declare dso_local i32 @pr_err(i8*, %struct.device_node*, i32) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @irq_domain_add_linear(%struct.device_node*, i32, i32*, %struct.mpc8xxx_gpio_chip*) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.mpc8xxx_gpio_chip*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
