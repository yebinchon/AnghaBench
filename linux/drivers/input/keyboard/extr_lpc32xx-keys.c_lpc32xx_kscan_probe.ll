; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_kscan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_kscan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.lpc32xx_kscan_drv = type { i32, i32, i32, i32, %struct.input_dev*, i32, i32, i8* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to get platform I/O memory\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to parse device tree\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"lpc32xx/input0\00", align 1
@lpc32xx_kscan_open = common dso_local global i32 0, align 4
@lpc32xx_kscan_close = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to build keymap\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@LPC32XX_KSCAN_FTST_USE32K_CLK = common dso_local global i32 0, align 4
@lpc32xx_kscan_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_kscan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_kscan_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.lpc32xx_kscan_drv*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_MEM, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %6, align 8
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %264

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = call i32 @platform_get_irq(%struct.platform_device* %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %264

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @devm_kzalloc(i32* %31, i64 40, i32 %32)
  %34 = bitcast i8* %33 to %struct.lpc32xx_kscan_drv*
  store %struct.lpc32xx_kscan_drv* %34, %struct.lpc32xx_kscan_drv** %4, align 8
  %35 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %36 = icmp ne %struct.lpc32xx_kscan_drv* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %264

40:                                               ; preds = %29
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %44 = call i32 @lpc32xx_parse_dt(i32* %42, %struct.lpc32xx_kscan_drv* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %264

52:                                               ; preds = %40
  %53 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %57 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = mul i64 1, %60
  store i64 %61, i64* %7, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @devm_kzalloc(i32* %63, i64 %64, i32 %65)
  %67 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %68 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %67, i32 0, i32 7
  store i8* %66, i8** %68, align 8
  %69 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %70 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %69, i32 0, i32 7
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %52
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %264

76:                                               ; preds = %52
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call %struct.input_dev* @devm_input_allocate_device(i32* %78)
  store %struct.input_dev* %79, %struct.input_dev** %5, align 8
  %80 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %81 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %80, i32 0, i32 4
  store %struct.input_dev* %79, %struct.input_dev** %81, align 8
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = icmp ne %struct.input_dev* %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %76
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(i32* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %264

90:                                               ; preds = %76
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %97, align 8
  %98 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  store i32 256, i32* %106, align 8
  %107 = load i32, i32* @lpc32xx_kscan_open, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @lpc32xx_kscan_close, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %116 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32* %114, i32** %117, align 8
  %118 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %119 = load i32, i32* @EV_MSC, align 4
  %120 = load i32, i32* @MSC_SCAN, align 4
  %121 = call i32 @input_set_capability(%struct.input_dev* %118, i32 %119, i32 %120)
  %122 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %123 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %126 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %129 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %128, i32 0, i32 7
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %132 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %131, i32 0, i32 4
  %133 = load %struct.input_dev*, %struct.input_dev** %132, align 8
  %134 = call i32 @matrix_keypad_build_keymap(i32* null, i32* null, i32 %124, i32 %127, i8* %130, %struct.input_dev* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %90
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %2, align 4
  br label %264

142:                                              ; preds = %90
  %143 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %144 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %143, i32 0, i32 4
  %145 = load %struct.input_dev*, %struct.input_dev** %144, align 8
  %146 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %147 = call i32 @input_set_drvdata(%struct.input_dev* %145, %struct.lpc32xx_kscan_drv* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.resource*, %struct.resource** %6, align 8
  %151 = call i32 @devm_ioremap_resource(i32* %149, %struct.resource* %150)
  %152 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %153 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %152, i32 0, i32 6
  store i32 %151, i32* %153, align 4
  %154 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %155 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @IS_ERR(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %142
  %160 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %161 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PTR_ERR(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %264

164:                                              ; preds = %142
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 @devm_clk_get(i32* %166, i32* null)
  %168 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %169 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  %170 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %171 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @IS_ERR(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %164
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @dev_err(i32* %177, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %179 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %180 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @PTR_ERR(i32 %181)
  store i32 %182, i32* %2, align 4
  br label %264

183:                                              ; preds = %164
  %184 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %185 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @clk_prepare_enable(i32 %186)
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %2, align 4
  br label %264

192:                                              ; preds = %183
  %193 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %194 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %197 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @LPC32XX_KS_DEB(i32 %198)
  %200 = call i32 @writel(i32 %195, i32 %199)
  %201 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %202 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %205 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @LPC32XX_KS_SCAN_CTL(i32 %206)
  %208 = call i32 @writel(i32 %203, i32 %207)
  %209 = load i32, i32* @LPC32XX_KSCAN_FTST_USE32K_CLK, align 4
  %210 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %211 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @LPC32XX_KS_FAST_TST(i32 %212)
  %214 = call i32 @writel(i32 %209, i32 %213)
  %215 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %216 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %219 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @LPC32XX_KS_MATRIX_DIM(i32 %220)
  %222 = call i32 @writel(i32 %217, i32 %221)
  %223 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %224 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @LPC32XX_KS_IRQ(i32 %225)
  %227 = call i32 @writel(i32 1, i32 %226)
  %228 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %229 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @clk_disable_unprepare(i32 %230)
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @lpc32xx_kscan_irq, align 4
  %236 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %237 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %240 = call i32 @devm_request_irq(i32* %233, i32 %234, i32 %235, i32 0, i32 %238, %struct.lpc32xx_kscan_drv* %239)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %192
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %244, i32 0, i32 0
  %246 = call i32 @dev_err(i32* %245, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %247 = load i32, i32* %8, align 4
  store i32 %247, i32* %2, align 4
  br label %264

248:                                              ; preds = %192
  %249 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %250 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %249, i32 0, i32 4
  %251 = load %struct.input_dev*, %struct.input_dev** %250, align 8
  %252 = call i32 @input_register_device(%struct.input_dev* %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %248
  %256 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %257 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %256, i32 0, i32 0
  %258 = call i32 @dev_err(i32* %257, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %259 = load i32, i32* %8, align 4
  store i32 %259, i32* %2, align 4
  br label %264

260:                                              ; preds = %248
  %261 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %262 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %4, align 8
  %263 = call i32 @platform_set_drvdata(%struct.platform_device* %261, %struct.lpc32xx_kscan_drv* %262)
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %260, %255, %243, %190, %175, %159, %137, %84, %73, %47, %37, %26, %15
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_kzalloc(i32*, i64, i32) #1

declare dso_local i32 @lpc32xx_parse_dt(i32*, %struct.lpc32xx_kscan_drv*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @matrix_keypad_build_keymap(i32*, i32*, i32, i32, i8*, %struct.input_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.lpc32xx_kscan_drv*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_KS_DEB(i32) #1

declare dso_local i32 @LPC32XX_KS_SCAN_CTL(i32) #1

declare dso_local i32 @LPC32XX_KS_FAST_TST(i32) #1

declare dso_local i32 @LPC32XX_KS_MATRIX_DIM(i32) #1

declare dso_local i32 @LPC32XX_KS_IRQ(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.lpc32xx_kscan_drv*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.lpc32xx_kscan_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
