; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-iop3xx.c_iop3xx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }
%struct.i2c_adapter = type { i32, i32, %struct.i2c_adapter*, i32, i32, i32*, i32, i32, %struct.TYPE_3__, i32, i32, i64, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.i2c_algo_iop3xx_data = type { i32, i32, %struct.i2c_algo_iop3xx_data*, i32, i32, i32*, i32, i32, %struct.TYPE_3__, i32, i32, i64, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"scl\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"sda\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IOP3XX_I2C_IO_SIZE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@i2c_id = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@iop3xx_i2c_irq_handler = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@iop3xx_i2c_algo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iop3xx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop3xx_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.i2c_algo_iop3xx_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.i2c_algo_iop3xx_data* @kzalloc(i32 88, i32 %9)
  %11 = bitcast %struct.i2c_algo_iop3xx_data* %10 to %struct.i2c_adapter*
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %7, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %13 = icmp ne %struct.i2c_adapter* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %203

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.i2c_algo_iop3xx_data* @kzalloc(i32 88, i32 %18)
  store %struct.i2c_algo_iop3xx_data* %19, %struct.i2c_algo_iop3xx_data** %8, align 8
  %20 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %21 = icmp ne %struct.i2c_algo_iop3xx_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %199

25:                                               ; preds = %17
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load i32, i32* @GPIOD_ASIS, align 4
  %29 = call i8* @devm_gpiod_get_optional(%struct.TYPE_4__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %31 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %30, i32 0, i32 13
  store i8* %29, i8** %31, align 8
  %32 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %33 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %32, i32 0, i32 13
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %39 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %38, i32 0, i32 13
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %2, align 4
  br label %205

42:                                               ; preds = %25
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 1
  %45 = load i32, i32* @GPIOD_ASIS, align 4
  %46 = call i8* @devm_gpiod_get_optional(%struct.TYPE_4__* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %48 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %47, i32 0, i32 12
  store i8* %46, i8** %48, align 8
  %49 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %50 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %49, i32 0, i32 12
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %42
  %55 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %56 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %55, i32 0, i32 12
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @PTR_ERR(i8* %57)
  store i32 %58, i32* %2, align 4
  br label %205

59:                                               ; preds = %42
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %4, align 8
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %196

68:                                               ; preds = %59
  %69 = load %struct.resource*, %struct.resource** %4, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IOP3XX_I2C_IO_SIZE, align 4
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @request_mem_region(i32 %71, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @EBUSY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %196

81:                                               ; preds = %68
  %82 = load i32, i32* @i2c_id, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @i2c_id, align 4
  %84 = sext i32 %82 to i64
  %85 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %86 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %85, i32 0, i32 11
  store i64 %84, i64* %86, align 8
  %87 = load %struct.resource*, %struct.resource** %4, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IOP3XX_I2C_IO_SIZE, align 4
  %91 = call i32 @ioremap(i32 %89, i32 %90)
  %92 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %93 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %95 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %81
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %190

101:                                              ; preds = %81
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = call i32 @platform_get_irq(%struct.platform_device* %102, i32 0)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* @ENXIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %185

109:                                              ; preds = %101
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @iop3xx_i2c_irq_handler, align 4
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %116 = call i32 @request_irq(i32 %110, i32 %111, i32 0, i32 %114, %struct.i2c_algo_iop3xx_data* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %109
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %185

122:                                              ; preds = %109
  %123 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %124 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %123, i32 0, i32 10
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @strlen(i32 %131)
  %133 = call i32 @memcpy(i32 %125, i32 %128, i32 %132)
  %134 = load i32, i32* @THIS_MODULE, align 4
  %135 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %136 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %138 = load i32, i32* @I2C_CLASS_SPD, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 1
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store %struct.TYPE_4__* %143, %struct.TYPE_4__** %146, align 8
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %152 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %158 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* @HZ, align 4
  %160 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 8
  %162 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %163 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %162, i32 0, i32 5
  store i32* @iop3xx_i2c_algo, i32** %163, align 8
  %164 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %165 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %164, i32 0, i32 4
  %166 = call i32 @init_waitqueue_head(i32* %165)
  %167 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %168 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %167, i32 0, i32 3
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %171 = call i32 @iop3xx_i2c_reset(%struct.i2c_algo_iop3xx_data* %170)
  %172 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %173 = call i32 @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data* %172)
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %176 = bitcast %struct.i2c_adapter* %175 to %struct.i2c_algo_iop3xx_data*
  %177 = call i32 @platform_set_drvdata(%struct.platform_device* %174, %struct.i2c_algo_iop3xx_data* %176)
  %178 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %179 = bitcast %struct.i2c_algo_iop3xx_data* %178 to %struct.i2c_adapter*
  %180 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %181 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %180, i32 0, i32 2
  store %struct.i2c_adapter* %179, %struct.i2c_adapter** %181, align 8
  %182 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %183 = bitcast %struct.i2c_adapter* %182 to %struct.i2c_algo_iop3xx_data*
  %184 = call i32 @i2c_add_numbered_adapter(%struct.i2c_algo_iop3xx_data* %183)
  store i32 0, i32* %2, align 4
  br label %205

185:                                              ; preds = %119, %106
  %186 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %187 = getelementptr inbounds %struct.i2c_algo_iop3xx_data, %struct.i2c_algo_iop3xx_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @iounmap(i32 %188)
  br label %190

190:                                              ; preds = %185, %98
  %191 = load %struct.resource*, %struct.resource** %4, align 8
  %192 = getelementptr inbounds %struct.resource, %struct.resource* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @IOP3XX_I2C_IO_SIZE, align 4
  %195 = call i32 @release_mem_region(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %190, %78, %65
  %197 = load %struct.i2c_algo_iop3xx_data*, %struct.i2c_algo_iop3xx_data** %8, align 8
  %198 = call i32 @kfree(%struct.i2c_algo_iop3xx_data* %197)
  br label %199

199:                                              ; preds = %196, %22
  %200 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %201 = bitcast %struct.i2c_adapter* %200 to %struct.i2c_algo_iop3xx_data*
  %202 = call i32 @kfree(%struct.i2c_algo_iop3xx_data* %201)
  br label %203

203:                                              ; preds = %199, %14
  %204 = load i32, i32* %5, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %203, %122, %54, %37
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local %struct.i2c_algo_iop3xx_data* @kzalloc(i32, i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @iop3xx_i2c_reset(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @iop3xx_i2c_enable(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_algo_iop3xx_data*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.i2c_algo_iop3xx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
