; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.platform_device = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.i2c_pxa_platform_data = type { i32, i32, i32 }
%struct.pxa_i2c = type { i32, i32, i64, %struct.TYPE_12__, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__, %struct.pxa_i2c*, i32*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no irq resource: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pxa_i2c-i2c\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get the clk: %ld\0A\00", align 1
@pxa_reg_layout = common dso_local global %struct.TYPE_11__* null, align 8
@ICR_FM = common dso_local global i32 0, align 4
@ICR_HS = common dso_local global i32 0, align 4
@REGS_CE4100 = common dso_local global i32 0, align 4
@REGS_PXA910 = common dso_local global i32 0, align 4
@I2C_PXA_SLAVE_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"i2c: <%s> set rate to %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"i2c: <%s> clock rate not set\0A\00", align 1
@i2c_pxa_pio_algorithm = common dso_local global i32 0, align 4
@i2c_pxa_algorithm = common dso_local global i32 0, align 4
@i2c_pxa_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" PXA I2C adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_pxa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.i2c_pxa_platform_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa_i2c*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.i2c_pxa_platform_data* @dev_get_platdata(%struct.TYPE_13__* %11)
  store %struct.i2c_pxa_platform_data* %12, %struct.i2c_pxa_platform_data** %4, align 8
  store %struct.resource* null, %struct.resource** %7, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pxa_i2c* @devm_kzalloc(%struct.TYPE_13__* %14, i32 200, i32 %15)
  store %struct.pxa_i2c* %16, %struct.pxa_i2c** %6, align 8
  %17 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %18 = icmp ne %struct.pxa_i2c* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %372

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %7, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.resource*, %struct.resource** %7, align 8
  %29 = call i64 @devm_ioremap_resource(%struct.TYPE_13__* %27, %struct.resource* %28)
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %31 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %30, i32 0, i32 11
  store i64 %29, i64* %31, align 8
  %32 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %33 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %32, i32 0, i32 11
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @IS_ERR(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %39 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @PTR_ERR(i64 %40)
  store i32 %41, i32* %2, align 4
  br label %372

42:                                               ; preds = %22
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i32 @platform_get_irq(%struct.platform_device* %43, i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dev_err(%struct.TYPE_13__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %2, align 4
  br label %372

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %58 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 7
  store i32 %56, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %62 = call i32 @i2c_pxa_probe_dt(%struct.platform_device* %60, %struct.pxa_i2c* %61, i32* %5)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %68 = call i32 @i2c_pxa_probe_pdata(%struct.platform_device* %66, %struct.pxa_i2c* %67, i32* %5)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %65, %53
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %372

74:                                               ; preds = %69
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %77 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 6
  store i32 %75, i32* %78, align 8
  %79 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %80 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 5, i32* %81, align 8
  %82 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %83 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %82, i32 0, i32 22
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %86 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %85, i32 0, i32 21
  %87 = call i32 @init_waitqueue_head(i32* %86)
  %88 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %89 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strlcpy(i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i64 @devm_clk_get(%struct.TYPE_13__* %94, i32* null)
  %96 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %97 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %99 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @IS_ERR(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %74
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %107 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @PTR_ERR(i64 %108)
  %110 = call i32 @dev_err(%struct.TYPE_13__* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %112 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @PTR_ERR(i64 %113)
  store i32 %114, i32* %2, align 4
  br label %372

115:                                              ; preds = %74
  %116 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %117 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %116, i32 0, i32 11
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 8
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %118, %124
  %126 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %127 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %126, i32 0, i32 20
  store i64 %125, i64* %127, align 8
  %128 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %129 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %128, i32 0, i32 11
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %132 = load i32, i32* %5, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 7
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %130, %136
  %138 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %139 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %138, i32 0, i32 19
  store i64 %137, i64* %139, align 8
  %140 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %141 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %140, i32 0, i32 11
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %142, %148
  %150 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %151 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %150, i32 0, i32 18
  store i64 %149, i64* %151, align 8
  %152 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %153 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %152, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = add nsw i64 %154, %160
  %162 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %163 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %162, i32 0, i32 17
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %165 = load i32, i32* %5, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %115
  br label %175

172:                                              ; preds = %115
  %173 = load i32, i32* @ICR_FM, align 4
  %174 = sext i32 %173 to i64
  br label %175

175:                                              ; preds = %172, %171
  %176 = phi i64 [ %169, %171 ], [ %174, %172 ]
  %177 = trunc i64 %176 to i32
  %178 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %179 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %178, i32 0, i32 16
  store i32 %177, i32* %179, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %181 = load i32, i32* %5, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %191

188:                                              ; preds = %175
  %189 = load i32, i32* @ICR_HS, align 4
  %190 = sext i32 %189 to i64
  br label %191

191:                                              ; preds = %188, %187
  %192 = phi i64 [ %185, %187 ], [ %190, %188 ]
  %193 = trunc i64 %192 to i32
  %194 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %195 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %194, i32 0, i32 15
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @REGS_CE4100, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %191
  %200 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %201 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %200, i32 0, i32 11
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %204 = load i32, i32* %5, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %202, %208
  %210 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %211 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %210, i32 0, i32 14
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %199, %191
  %213 = load i32, i32* %5, align 4
  %214 = load i32, i32* @REGS_PXA910, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %241

216:                                              ; preds = %212
  %217 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %218 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %217, i32 0, i32 11
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %221 = load i32, i32* %5, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add nsw i64 %219, %225
  %227 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %228 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %227, i32 0, i32 13
  store i64 %226, i64* %228, align 8
  %229 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %230 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %229, i32 0, i32 11
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pxa_reg_layout, align 8
  %233 = load i32, i32* %5, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %231, %237
  %239 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %240 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %239, i32 0, i32 12
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %216, %212
  %242 = load %struct.resource*, %struct.resource** %7, align 8
  %243 = getelementptr inbounds %struct.resource, %struct.resource* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %246 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %245, i32 0, i32 10
  store i32 %244, i32* %246, align 8
  %247 = load %struct.resource*, %struct.resource** %7, align 8
  %248 = call i32 @resource_size(%struct.resource* %247)
  %249 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %250 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %249, i32 0, i32 9
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %9, align 4
  %252 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %253 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @I2C_PXA_SLAVE_ADDR, align 4
  %255 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %256 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  %257 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %258 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %257, i32 0, i32 1
  store i32 0, i32* %258, align 4
  %259 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %4, align 8
  %260 = icmp ne %struct.i2c_pxa_platform_data* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %241
  %262 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %4, align 8
  %263 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %266 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 5
  store i32 %264, i32* %267, align 4
  br label %268

268:                                              ; preds = %261, %241
  %269 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %270 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %269, i32 0, i32 7
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %302

273:                                              ; preds = %268
  %274 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %275 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %273
  %279 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %280 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %283 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = call i32 @clk_set_rate(i64 %281, i64 %284)
  %286 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %287 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %291 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = call i32 @clk_get_rate(i64 %292)
  %294 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %289, i32 %293)
  br label %301

295:                                              ; preds = %273
  %296 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %297 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %295, %278
  br label %302

302:                                              ; preds = %301, %268
  %303 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %304 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @clk_prepare_enable(i64 %305)
  %307 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %308 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %302
  %312 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %313 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %312, i32 0, i32 3
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 3
  store i32* @i2c_pxa_pio_algorithm, i32** %314, align 8
  br label %339

315:                                              ; preds = %302
  %316 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %317 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 3
  store i32* @i2c_pxa_algorithm, i32** %318, align 8
  %319 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %320 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %319, i32 0, i32 0
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @i2c_pxa_handler, align 4
  %323 = load i32, i32* @IRQF_SHARED, align 4
  %324 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %325 = or i32 %323, %324
  %326 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %327 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %326, i32 0, i32 0
  %328 = call i32 @dev_name(%struct.TYPE_13__* %327)
  %329 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %330 = call i32 @devm_request_irq(%struct.TYPE_13__* %320, i32 %321, i32 %322, i32 %325, i32 %328, %struct.pxa_i2c* %329)
  store i32 %330, i32* %8, align 4
  %331 = load i32, i32* %8, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %315
  %334 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %335 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %334, i32 0, i32 0
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @dev_err(%struct.TYPE_13__* %335, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %336)
  br label %366

338:                                              ; preds = %315
  br label %339

339:                                              ; preds = %338, %311
  %340 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %341 = call i32 @i2c_pxa_reset(%struct.pxa_i2c* %340)
  %342 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %343 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %344 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 2
  store %struct.pxa_i2c* %342, %struct.pxa_i2c** %345, align 8
  %346 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %347 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %346, i32 0, i32 0
  %348 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %349 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %348, i32 0, i32 3
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 1
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  store %struct.TYPE_13__* %347, %struct.TYPE_13__** %351, align 8
  %352 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %353 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %352, i32 0, i32 3
  %354 = call i32 @i2c_add_numbered_adapter(%struct.TYPE_12__* %353)
  store i32 %354, i32* %8, align 4
  %355 = load i32, i32* %8, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %339
  br label %366

358:                                              ; preds = %339
  %359 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %360 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %361 = call i32 @platform_set_drvdata(%struct.platform_device* %359, %struct.pxa_i2c* %360)
  %362 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %363 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 1
  %365 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_info(%struct.TYPE_14__* %364, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %372

366:                                              ; preds = %357, %333
  %367 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %368 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %367, i32 0, i32 2
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @clk_disable_unprepare(i64 %369)
  %371 = load i32, i32* %8, align 4
  store i32 %371, i32* %2, align 4
  br label %372

372:                                              ; preds = %366, %358, %103, %72, %47, %37, %19
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.i2c_pxa_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local %struct.pxa_i2c* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @i2c_pxa_probe_dt(%struct.platform_device*, %struct.pxa_i2c*, i32*) #1

declare dso_local i32 @i2c_pxa_probe_pdata(%struct.platform_device*, %struct.pxa_i2c*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @clk_set_rate(i64, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @clk_get_rate(i64) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i32, i32, i32, i32, %struct.pxa_i2c*) #1

declare dso_local i32 @dev_name(%struct.TYPE_13__*) #1

declare dso_local i32 @i2c_pxa_reset(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa_i2c*) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
