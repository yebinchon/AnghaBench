; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sun6i-p2wi.c_p2wi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.p2wi = type { i32, i64, i64, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.device_node*, %struct.device* }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@P2WI_MAX_FREQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"required clock-frequency (%u Hz) is too high (max = 6MHz)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"P2WI only supports one slave device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"invalid slave address on node %pOF\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to retrieve irq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to retrieve clk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"failed to retrieve reset controller: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed to deassert reset line: %d\0A\00", align 1
@p2wi_algo = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@p2wi_interrupt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"can't register interrupt handler irq%d: %d\0A\00", align 1
@P2WI_CTRL_SOFT_RST = common dso_local global i32 0, align 4
@P2WI_CTRL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [51 x i8] c"clock-frequency is too high, setting it to %lu Hz\0A\00", align 1
@P2WI_CCR_MAX_CLK_DIV = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"clock-frequency is too low, setting it to %lu Hz\0A\00", align 1
@P2WI_CCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @p2wi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2wi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.p2wi*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  store %struct.device* %16, %struct.device** %4, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %5, align 8
  store i64 100000, i64* %8, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64* %8)
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @P2WI_MAX_FREQ, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %279

31:                                               ; preds = %1
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_get_child_count(%struct.device_node* %32)
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %279

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.p2wi* @devm_kzalloc(%struct.device* %41, i32 80, i32 %42)
  store %struct.p2wi* %43, %struct.p2wi** %10, align 8
  %44 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %45 = icmp ne %struct.p2wi* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %279

49:                                               ; preds = %40
  %50 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %51 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.device_node*, %struct.device_node** %5, align 8
  %53 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %52, i32* null)
  store %struct.device_node* %53, %struct.device_node** %6, align 8
  %54 = load %struct.device_node*, %struct.device_node** %6, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %49
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i32 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64* %11)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.device_node*, %struct.device_node** %6, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %279

67:                                               ; preds = %56
  %68 = load i64, i64* %11, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %71 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %49
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load i32, i32* @IORESOURCE_MEM, align 4
  %75 = call %struct.resource* @platform_get_resource(%struct.platform_device* %73, i32 %74, i32 0)
  store %struct.resource* %75, %struct.resource** %9, align 8
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.resource*, %struct.resource** %9, align 8
  %78 = call i64 @devm_ioremap_resource(%struct.device* %76, %struct.resource* %77)
  %79 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %80 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %82 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @IS_ERR(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %72
  %87 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %88 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @PTR_ERR(i64 %89)
  store i32 %90, i32* %2, align 4
  br label %279

91:                                               ; preds = %72
  %92 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %93 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @strlcpy(i32 %95, i32 %98, i32 4)
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = call i32 @platform_get_irq(%struct.platform_device* %100, i32 0)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %2, align 4
  br label %279

109:                                              ; preds = %91
  %110 = load %struct.device*, %struct.device** %4, align 8
  %111 = call i64 @devm_clk_get(%struct.device* %110, i32* null)
  %112 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %113 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %115 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @IS_ERR(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %121 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @PTR_ERR(i64 %122)
  store i32 %123, i32* %14, align 4
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %2, align 4
  br label %279

128:                                              ; preds = %109
  %129 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %130 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @clk_prepare_enable(i64 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %2, align 4
  br label %279

140:                                              ; preds = %128
  %141 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %142 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @clk_get_rate(i64 %143)
  store i64 %144, i64* %7, align 8
  %145 = load %struct.device*, %struct.device** %4, align 8
  %146 = call i64 @devm_reset_control_get_exclusive(%struct.device* %145, i32* null)
  %147 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %148 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %150 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @IS_ERR(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %140
  %155 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %156 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @PTR_ERR(i64 %157)
  store i32 %158, i32* %14, align 4
  %159 = load %struct.device*, %struct.device** %4, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %159, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  br label %273

162:                                              ; preds = %140
  %163 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %164 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @reset_control_deassert(i64 %165)
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.device*, %struct.device** %4, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %171)
  br label %273

173:                                              ; preds = %162
  %174 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %175 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %174, i32 0, i32 5
  %176 = call i32 @init_completion(i32* %175)
  %177 = load %struct.device*, %struct.device** %4, align 8
  %178 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %179 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store %struct.device* %177, %struct.device** %181, align 8
  %182 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %183 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  store i32* @p2wi_algo, i32** %184, align 8
  %185 = load i32, i32* @THIS_MODULE, align 4
  %186 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %187 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i32 %185, i32* %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.device, %struct.device* %190, i32 0, i32 0
  %192 = load %struct.device_node*, %struct.device_node** %191, align 8
  %193 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %194 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store %struct.device_node* %192, %struct.device_node** %196, align 8
  %197 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %198 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %199 = call i32 @platform_set_drvdata(%struct.platform_device* %197, %struct.p2wi* %198)
  %200 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %201 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %200, i32 0, i32 3
  %202 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %203 = call i32 @i2c_set_adapdata(%struct.TYPE_5__* %201, %struct.p2wi* %202)
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @p2wi_interrupt, align 4
  %207 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %208 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %211 = call i32 @devm_request_irq(%struct.device* %204, i32 %205, i32 %206, i32 0, i32 %209, %struct.p2wi* %210)
  store i32 %211, i32* %14, align 4
  %212 = load i32, i32* %14, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %173
  %215 = load %struct.device*, %struct.device** %4, align 8
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %215, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %216, i32 %217)
  br label %268

219:                                              ; preds = %173
  %220 = load i32, i32* @P2WI_CTRL_SOFT_RST, align 4
  %221 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %222 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %221, i32 0, i32 4
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @P2WI_CTRL, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel(i32 %220, i64 %225)
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* %8, align 8
  %229 = udiv i64 %227, %228
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %219
  %234 = load %struct.device*, %struct.device** %4, align 8
  %235 = load i64, i64* %7, align 8
  %236 = call i32 @dev_warn(%struct.device* %234, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i64 %235)
  store i32 1, i32* %12, align 4
  br label %250

237:                                              ; preds = %219
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* @P2WI_CCR_MAX_CLK_DIV, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %249

241:                                              ; preds = %237
  %242 = load %struct.device*, %struct.device** %4, align 8
  %243 = load i64, i64* %7, align 8
  %244 = load i32, i32* @P2WI_CCR_MAX_CLK_DIV, align 4
  %245 = sext i32 %244 to i64
  %246 = udiv i64 %243, %245
  %247 = call i32 @dev_warn(%struct.device* %242, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i64 %246)
  %248 = load i32, i32* @P2WI_CCR_MAX_CLK_DIV, align 4
  store i32 %248, i32* %12, align 4
  br label %249

249:                                              ; preds = %241, %237
  br label %250

250:                                              ; preds = %249, %233
  %251 = call i32 @P2WI_CCR_SDA_OUT_DELAY(i32 1)
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @P2WI_CCR_CLK_DIV(i32 %252)
  %254 = or i32 %251, %253
  %255 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %256 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @P2WI_CCR, align 8
  %259 = add nsw i64 %257, %258
  %260 = call i32 @writel(i32 %254, i64 %259)
  %261 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %262 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %261, i32 0, i32 3
  %263 = call i32 @i2c_add_adapter(%struct.TYPE_5__* %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %250
  store i32 0, i32* %2, align 4
  br label %279

267:                                              ; preds = %250
  br label %268

268:                                              ; preds = %267, %214
  %269 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %270 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @reset_control_assert(i64 %271)
  br label %273

273:                                              ; preds = %268, %169, %154
  %274 = load %struct.p2wi*, %struct.p2wi** %10, align 8
  %275 = getelementptr inbounds %struct.p2wi, %struct.p2wi* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @clk_disable_unprepare(i64 %276)
  %278 = load i32, i32* %14, align 4
  store i32 %278, i32* %2, align 4
  br label %279

279:                                              ; preds = %273, %266, %135, %119, %104, %86, %61, %46, %35, %25
  %280 = load i32, i32* %2, align 4
  ret i32 %280
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_get_child_count(%struct.device_node*) #1

declare dso_local %struct.p2wi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i64 @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i32 @reset_control_deassert(i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.p2wi*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_5__*, %struct.p2wi*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.p2wi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @P2WI_CCR_SDA_OUT_DELAY(i32) #1

declare dso_local i32 @P2WI_CCR_CLK_DIV(i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

declare dso_local i32 @reset_control_assert(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
