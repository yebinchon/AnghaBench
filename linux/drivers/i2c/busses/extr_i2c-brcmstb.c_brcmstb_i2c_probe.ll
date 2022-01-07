; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-brcmstb.c_brcmstb_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.platform_device = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.brcmstb_i2c_dev = type { i32, i32, i32, %struct.TYPE_10__*, %struct.i2c_adapter, i32, i32, i8* }
%struct.i2c_adapter = type { %struct.TYPE_9__, i32*, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@INT_DISABLE = common dso_local global i32 0, align 4
@brcmstb_i2c_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"falling back to polling mode\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"setting clock-frequency@%dHz\0A\00", align 1
@bsc_clk = common dso_local global %struct.TYPE_11__* null, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"brcmstb,brcmper-i2c\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Broadcom STB : \00", align 1
@brcmstb_i2c_algo = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"%s@%dhz registered in %s mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_i2c_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmstb_i2c_dev*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.TYPE_10__* %10, i32 72, i32 %11)
  %13 = bitcast i8* %12 to %struct.brcmstb_i2c_dev*
  store %struct.brcmstb_i2c_dev* %13, %struct.brcmstb_i2c_dev** %5, align 8
  %14 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %15 = icmp ne %struct.brcmstb_i2c_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %213

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.TYPE_10__* %21, i32 1, i32 %22)
  %24 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %25 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %27 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %26, i32 0, i32 7
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %213

33:                                               ; preds = %19
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.brcmstb_i2c_dev* %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %40 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %39, i32 0, i32 3
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %42 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %41, i32 0, i32 6
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = load i32, i32* @IORESOURCE_MEM, align 4
  %46 = call %struct.resource* @platform_get_resource(%struct.platform_device* %44, i32 %45, i32 0)
  store %struct.resource* %46, %struct.resource** %7, align 8
  %47 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %48 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %47, i32 0, i32 3
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = call i32 @devm_ioremap_resource(%struct.TYPE_10__* %49, %struct.resource* %50)
  %52 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %53 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %55 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %33
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %211

62:                                               ; preds = %33
  %63 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %64 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @of_property_read_string(i32 %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  store i8* null, i8** %8, align 8
  br label %72

72:                                               ; preds = %71, %62
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = call i32 @platform_get_irq(%struct.platform_device* %73, i32 0)
  %75 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %76 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %78 = load i32, i32* @INT_DISABLE, align 4
  %79 = call i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %77, i32 %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %83 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @brcmstb_i2c_isr, align 4
  %86 = load i32, i32* @IRQF_SHARED, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %72
  %90 = load i8*, i8** %8, align 8
  br label %95

91:                                               ; preds = %72
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  br label %95

95:                                               ; preds = %91, %89
  %96 = phi i8* [ %90, %89 ], [ %94, %91 ]
  %97 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %98 = call i32 @devm_request_irq(%struct.TYPE_10__* %81, i32 %84, i32 %85, i32 %86, i8* %96, %struct.brcmstb_i2c_dev* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %103 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @dev_dbg(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %107 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 8
  br label %108

108:                                              ; preds = %101, %95
  %109 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %110 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %109, i32 0, i32 3
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %115 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %114, i32 0, i32 2
  %116 = call i64 @of_property_read_u32(i32 %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %108
  %119 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %120 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %119, i32 0, i32 3
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bsc_clk, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_warn(%struct.TYPE_10__* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** @bsc_clk, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %132 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %118, %108
  %134 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %135 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %134, i32 0, i32 3
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @of_device_is_compatible(i32 %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %143 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %142, i32 0, i32 1
  store i32 4, i32* %143, align 4
  br label %147

144:                                              ; preds = %133
  %145 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %146 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %145, i32 0, i32 1
  store i32 4, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %149 = call i32 @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev* %148)
  %150 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %151 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %150, i32 0, i32 4
  store %struct.i2c_adapter* %151, %struct.i2c_adapter** %6, align 8
  %152 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %153 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %154 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %152, %struct.brcmstb_i2c_dev* %153)
  %155 = load i32, i32* @THIS_MODULE, align 4
  %156 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %159 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @strlcpy(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %162 = load i8*, i8** %8, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %147
  %165 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %166 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @strlcat(i32 %167, i8* %168, i32 4)
  br label %170

170:                                              ; preds = %164, %147
  %171 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %171, i32 0, i32 1
  store i32* @brcmstb_i2c_algo, i32** %172, align 8
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 1
  %175 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %176 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store %struct.TYPE_10__* %174, %struct.TYPE_10__** %177, align 8
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %183 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %186 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %170
  br label %211

190:                                              ; preds = %170
  %191 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %192 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %191, i32 0, i32 3
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = load i8*, i8** %8, align 8
  br label %199

198:                                              ; preds = %190
  br label %199

199:                                              ; preds = %198, %196
  %200 = phi i8* [ %197, %196 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %198 ]
  %201 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %202 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %5, align 8
  %205 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp sge i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)
  %210 = call i32 @dev_info(%struct.TYPE_10__* %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %200, i32 %203, i8* %209)
  store i32 0, i32* %2, align 4
  br label %213

211:                                              ; preds = %189, %59
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %199, %30, %16
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local i8* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_10__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_property_read_string(i32, i8*, i8**) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i8*, %struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.brcmstb_i2c_dev*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_info(%struct.TYPE_10__*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
