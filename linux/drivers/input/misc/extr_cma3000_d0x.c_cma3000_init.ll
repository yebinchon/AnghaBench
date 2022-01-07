; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cma3000_d0x.c_cma3000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma3000_accl_data = type { i32, i64, i32, %struct.input_dev*, i32, %struct.cma3000_platform_data*, %struct.cma3000_bus_ops*, %struct.device* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cma3000_platform_data = type { i64, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.cma3000_bus_ops = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"platform data not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMAMODE_POFF = common dso_local global i64 0, align 8
@CMAMODE_MOTDET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid mode specified, assuming Motion Detect\0A\00", align 1
@CMARANGE_2G = common dso_local global i32 0, align 4
@CMARANGE_8G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid G range specified, assuming 8G\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cma3000-accelerometer\00", align 1
@cma3000_open = common dso_local global i32 0, align 4
@cma3000_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@CMA3000_REVID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"Revid\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"CMA3000 Accelerometer: Revision %x\0A\00", align 1
@cma3000_thread_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"cma3000_d0x\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"request_threaded_irq failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Unable to register input device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cma3000_accl_data* @cma3000_init(%struct.device* %0, i32 %1, %struct.cma3000_bus_ops* %2) #0 {
  %4 = alloca %struct.cma3000_accl_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cma3000_bus_ops*, align 8
  %8 = alloca %struct.cma3000_platform_data*, align 8
  %9 = alloca %struct.cma3000_accl_data*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cma3000_bus_ops* %2, %struct.cma3000_bus_ops** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.cma3000_platform_data* @dev_get_platdata(%struct.device* %13)
  store %struct.cma3000_platform_data* %14, %struct.cma3000_platform_data** %8, align 8
  %15 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %16 = icmp ne %struct.cma3000_platform_data* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %214

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %214

28:                                               ; preds = %22
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.cma3000_accl_data* @kzalloc(i32 64, i32 %29)
  store %struct.cma3000_accl_data* %30, %struct.cma3000_accl_data** %9, align 8
  %31 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %31, %struct.input_dev** %10, align 8
  %32 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %33 = icmp ne %struct.cma3000_accl_data* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %36 = icmp ne %struct.input_dev* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %209

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %43 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %42, i32 0, i32 7
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %45 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %46 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %45, i32 0, i32 3
  store %struct.input_dev* %44, %struct.input_dev** %46, align 8
  %47 = load %struct.cma3000_bus_ops*, %struct.cma3000_bus_ops** %7, align 8
  %48 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %49 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %48, i32 0, i32 6
  store %struct.cma3000_bus_ops* %47, %struct.cma3000_bus_ops** %49, align 8
  %50 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %51 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %52 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %51, i32 0, i32 5
  store %struct.cma3000_platform_data* %50, %struct.cma3000_platform_data** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %55 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %57 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %56, i32 0, i32 4
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %60 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %63 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %65 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CMAMODE_POFF, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %40
  %70 = load i64, i64* @CMAMODE_MOTDET, align 8
  %71 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %72 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_warn(%struct.device* %73, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %40
  %76 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %77 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %80 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %82 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CMARANGE_2G, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %75
  %87 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %88 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CMARANGE_8G, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = call i32 @dev_info(%struct.device* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @CMARANGE_8G, align 4
  %96 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %97 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %92, %86, %75
  %99 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %100 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = load %struct.cma3000_bus_ops*, %struct.cma3000_bus_ops** %7, align 8
  %102 = getelementptr inbounds %struct.cma3000_bus_ops, %struct.cma3000_bus_ops* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @cma3000_open, align 4
  %108 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @cma3000_close, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @EV_ABS, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @__set_bit(i32 %113, i32 %116)
  %118 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %119 = load i32, i32* @ABS_X, align 4
  %120 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %121 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 0, %122
  %124 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %125 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %128 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @input_set_abs_params(%struct.input_dev* %118, i32 %119, i32 %123, i32 %126, i32 %129, i32 0)
  %131 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %132 = load i32, i32* @ABS_Y, align 4
  %133 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %134 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 0, %135
  %137 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %138 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %141 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @input_set_abs_params(%struct.input_dev* %131, i32 %132, i32 %136, i32 %139, i32 %142, i32 0)
  %144 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %145 = load i32, i32* @ABS_Z, align 4
  %146 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %147 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 0, %148
  %150 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %151 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %154 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @input_set_abs_params(%struct.input_dev* %144, i32 %145, i32 %149, i32 %152, i32 %155, i32 0)
  %157 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %158 = load i32, i32* @ABS_MISC, align 4
  %159 = call i32 @input_set_abs_params(%struct.input_dev* %157, i32 %158, i32 0, i32 1, i32 0, i32 0)
  %160 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %161 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %162 = call i32 @input_set_drvdata(%struct.input_dev* %160, %struct.cma3000_accl_data* %161)
  %163 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %164 = call i32 @cma3000_reset(%struct.cma3000_accl_data* %163)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %98
  br label %209

168:                                              ; preds = %98
  %169 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %170 = load i32, i32* @CMA3000_REVID, align 4
  %171 = call i32 @CMA3000_READ(%struct.cma3000_accl_data* %169, i32 %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %12, align 4
  br label %209

176:                                              ; preds = %168
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @cma3000_thread_irq, align 4
  %181 = load %struct.cma3000_platform_data*, %struct.cma3000_platform_data** %8, align 8
  %182 = getelementptr inbounds %struct.cma3000_platform_data, %struct.cma3000_platform_data* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @IRQF_ONESHOT, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %187 = call i32 @request_threaded_irq(i32 %179, i32* null, i32 %180, i32 %185, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), %struct.cma3000_accl_data* %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %176
  %191 = load %struct.device*, %struct.device** %5, align 8
  %192 = call i32 @dev_err(%struct.device* %191, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %209

193:                                              ; preds = %176
  %194 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %195 = getelementptr inbounds %struct.cma3000_accl_data, %struct.cma3000_accl_data* %194, i32 0, i32 3
  %196 = load %struct.input_dev*, %struct.input_dev** %195, align 8
  %197 = call i32 @input_register_device(%struct.input_dev* %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = call i32 @dev_err(%struct.device* %201, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %205

203:                                              ; preds = %193
  %204 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  store %struct.cma3000_accl_data* %204, %struct.cma3000_accl_data** %4, align 8
  br label %217

205:                                              ; preds = %200
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %208 = call i32 @free_irq(i32 %206, %struct.cma3000_accl_data* %207)
  br label %209

209:                                              ; preds = %205, %190, %174, %167, %37
  %210 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %211 = call i32 @input_free_device(%struct.input_dev* %210)
  %212 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %9, align 8
  %213 = call i32 @kfree(%struct.cma3000_accl_data* %212)
  br label %214

214:                                              ; preds = %209, %25, %17
  %215 = load i32, i32* %12, align 4
  %216 = call %struct.cma3000_accl_data* @ERR_PTR(i32 %215)
  store %struct.cma3000_accl_data* %216, %struct.cma3000_accl_data** %4, align 8
  br label %217

217:                                              ; preds = %214, %203
  %218 = load %struct.cma3000_accl_data*, %struct.cma3000_accl_data** %4, align 8
  ret %struct.cma3000_accl_data* %218
}

declare dso_local %struct.cma3000_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.cma3000_accl_data* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.cma3000_accl_data*) #1

declare dso_local i32 @cma3000_reset(%struct.cma3000_accl_data*) #1

declare dso_local i32 @CMA3000_READ(%struct.cma3000_accl_data*, i32, i8*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.cma3000_accl_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.cma3000_accl_data*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.cma3000_accl_data*) #1

declare dso_local %struct.cma3000_accl_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
