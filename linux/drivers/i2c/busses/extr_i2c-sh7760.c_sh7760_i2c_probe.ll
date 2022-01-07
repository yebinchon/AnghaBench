; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh7760.c_sh7760_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32, i32 }
%struct.sh7760_i2c_platdata = type { i32 }
%struct.resource = type { i64 }
%struct.cami2c = type { i32, %struct.cami2c*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__, %struct.cami2c*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"no platform_data!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"no mem for private data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"no mmio resources\0A\00", align 1
@REGSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"mmio already reserved\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"cannot ioremap\0A\00", align 1
@sh7760_i2c_algo = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"SH7760 I2C at %08lx\00", align 1
@I2CMCR = common dso_local global i32 0, align 4
@I2CMSR = common dso_local global i32 0, align 4
@I2CMIER = common dso_local global i32 0, align 4
@I2CMAR = common dso_local global i32 0, align 4
@I2CSIER = common dso_local global i32 0, align 4
@I2CSAR = common dso_local global i32 0, align 4
@I2CSCR = common dso_local global i32 0, align 4
@I2CSSR = common dso_local global i32 0, align 4
@I2CFIER = common dso_local global i32 0, align 4
@I2CFCR = common dso_local global i32 0, align 4
@FCR_RFRST = common dso_local global i32 0, align 4
@FCR_TFRST = common dso_local global i32 0, align 4
@I2CFSR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid SCL clock: %dkHz\0A\00", align 1
@I2CCCR = common dso_local global i32 0, align 4
@sh7760_i2c_irq = common dso_local global i32 0, align 4
@SH7760_I2C_DEVNAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"cannot get irq %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%d kHz mmio %08x irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sh7760_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sh7760_i2c_platdata*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.cami2c*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.sh7760_i2c_platdata* @dev_get_platdata(i32* %9)
  store %struct.sh7760_i2c_platdata* %10, %struct.sh7760_i2c_platdata** %4, align 8
  %11 = load %struct.sh7760_i2c_platdata*, %struct.sh7760_i2c_platdata** %4, align 8
  %12 = icmp ne %struct.sh7760_i2c_platdata* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %240

19:                                               ; preds = %1
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.cami2c* @kzalloc(i32 72, i32 %20)
  store %struct.cami2c* %21, %struct.cami2c** %6, align 8
  %22 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %23 = icmp ne %struct.cami2c* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %240

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %237

42:                                               ; preds = %30
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @REGSIZE, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.cami2c* @request_mem_region(i64 %45, i32 %46, i32 %49)
  %51 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %52 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %51, i32 0, i32 1
  store %struct.cami2c* %50, %struct.cami2c** %52, align 8
  %53 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %54 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %53, i32 0, i32 1
  %55 = load %struct.cami2c*, %struct.cami2c** %54, align 8
  %56 = icmp ne %struct.cami2c* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %42
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %237

63:                                               ; preds = %42
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @REGSIZE, align 4
  %68 = call i32 @ioremap(i64 %66, i32 %67)
  %69 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %70 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %72 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %63
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %228

81:                                               ; preds = %63
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i32 @platform_get_irq(%struct.platform_device* %82, i32 0)
  %84 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %85 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %90 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 6
  store i32 %88, i32* %91, align 8
  %92 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %93 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32* @sh7760_i2c_algo, i32** %94, align 8
  %95 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %96 = load i32, i32* @I2C_CLASS_SPD, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %99 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %102 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 3, i32* %103, align 4
  %104 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %105 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %106 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  store %struct.cami2c* %104, %struct.cami2c** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %111 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  store i32* %109, i32** %113, align 8
  %114 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %115 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.resource*, %struct.resource** %5, align 8
  %119 = getelementptr inbounds %struct.resource, %struct.resource* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @snprintf(i32 %117, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %120)
  %122 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %123 = load i32, i32* @I2CMCR, align 4
  %124 = call i32 @OUT32(%struct.cami2c* %122, i32 %123, i32 0)
  %125 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %126 = load i32, i32* @I2CMSR, align 4
  %127 = call i32 @OUT32(%struct.cami2c* %125, i32 %126, i32 0)
  %128 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %129 = load i32, i32* @I2CMIER, align 4
  %130 = call i32 @OUT32(%struct.cami2c* %128, i32 %129, i32 0)
  %131 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %132 = load i32, i32* @I2CMAR, align 4
  %133 = call i32 @OUT32(%struct.cami2c* %131, i32 %132, i32 0)
  %134 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %135 = load i32, i32* @I2CSIER, align 4
  %136 = call i32 @OUT32(%struct.cami2c* %134, i32 %135, i32 0)
  %137 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %138 = load i32, i32* @I2CSAR, align 4
  %139 = call i32 @OUT32(%struct.cami2c* %137, i32 %138, i32 0)
  %140 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %141 = load i32, i32* @I2CSCR, align 4
  %142 = call i32 @OUT32(%struct.cami2c* %140, i32 %141, i32 0)
  %143 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %144 = load i32, i32* @I2CSSR, align 4
  %145 = call i32 @OUT32(%struct.cami2c* %143, i32 %144, i32 0)
  %146 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %147 = load i32, i32* @I2CFIER, align 4
  %148 = call i32 @OUT32(%struct.cami2c* %146, i32 %147, i32 0)
  %149 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %150 = load i32, i32* @I2CFCR, align 4
  %151 = load i32, i32* @FCR_RFRST, align 4
  %152 = load i32, i32* @FCR_TFRST, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @OUT32(%struct.cami2c* %149, i32 %150, i32 %153)
  %155 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %156 = load i32, i32* @I2CFSR, align 4
  %157 = call i32 @OUT32(%struct.cami2c* %155, i32 %156, i32 0)
  %158 = load %struct.sh7760_i2c_platdata*, %struct.sh7760_i2c_platdata** %4, align 8
  %159 = getelementptr inbounds %struct.sh7760_i2c_platdata, %struct.sh7760_i2c_platdata* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 1000
  %162 = call i32 @calc_CCR(i32 %161)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %81
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load %struct.sh7760_i2c_platdata*, %struct.sh7760_i2c_platdata** %4, align 8
  %169 = getelementptr inbounds %struct.sh7760_i2c_platdata, %struct.sh7760_i2c_platdata* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %167, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %170)
  br label %223

172:                                              ; preds = %81
  %173 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %174 = load i32, i32* @I2CCCR, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @OUT32(%struct.cami2c* %173, i32 %174, i32 %175)
  %177 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %178 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @sh7760_i2c_irq, align 4
  %181 = load i32, i32* @SH7760_I2C_DEVNAME, align 4
  %182 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %183 = call i64 @request_irq(i32 %179, i32 %180, i32 0, i32 %181, %struct.cami2c* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %172
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %189 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 (i32*, i8*, ...) @dev_err(i32* %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %190)
  %192 = load i32, i32* @EBUSY, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %7, align 4
  br label %223

194:                                              ; preds = %172
  %195 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %196 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %195, i32 0, i32 3
  %197 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_4__* %196)
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %217

201:                                              ; preds = %194
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.cami2c* %203)
  %205 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %206 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %205, i32 0, i32 0
  %207 = load %struct.sh7760_i2c_platdata*, %struct.sh7760_i2c_platdata** %4, align 8
  %208 = getelementptr inbounds %struct.sh7760_i2c_platdata, %struct.sh7760_i2c_platdata* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.resource*, %struct.resource** %5, align 8
  %211 = getelementptr inbounds %struct.resource, %struct.resource* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %214 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @dev_info(i32* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %209, i64 %212, i32 %215)
  store i32 0, i32* %2, align 4
  br label %242

217:                                              ; preds = %200
  %218 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %219 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %222 = call i32 @free_irq(i32 %220, %struct.cami2c* %221)
  br label %223

223:                                              ; preds = %217, %185, %165
  %224 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %225 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @iounmap(i32 %226)
  br label %228

228:                                              ; preds = %223, %75
  %229 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %230 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %229, i32 0, i32 1
  %231 = load %struct.cami2c*, %struct.cami2c** %230, align 8
  %232 = call i32 @release_resource(%struct.cami2c* %231)
  %233 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %234 = getelementptr inbounds %struct.cami2c, %struct.cami2c* %233, i32 0, i32 1
  %235 = load %struct.cami2c*, %struct.cami2c** %234, align 8
  %236 = call i32 @kfree(%struct.cami2c* %235)
  br label %237

237:                                              ; preds = %228, %57, %36
  %238 = load %struct.cami2c*, %struct.cami2c** %6, align 8
  %239 = call i32 @kfree(%struct.cami2c* %238)
  br label %240

240:                                              ; preds = %237, %24, %13
  %241 = load i32, i32* %7, align 4
  store i32 %241, i32* %2, align 4
  br label %242

242:                                              ; preds = %240, %201
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local %struct.sh7760_i2c_platdata* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.cami2c* @kzalloc(i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.cami2c* @request_mem_region(i64, i32, i32) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @OUT32(%struct.cami2c*, i32, i32) #1

declare dso_local i32 @calc_CCR(i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.cami2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cami2c*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @free_irq(i32, %struct.cami2c*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(%struct.cami2c*) #1

declare dso_local i32 @kfree(%struct.cami2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
