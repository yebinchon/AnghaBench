; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_bus.c_nvkm_i2c_bus_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_bus.c_nvkm_i2c_bus_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_bus_func = type { i64 }
%struct.nvkm_i2c_pad = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }
%struct.nvkm_i2c_bus = type { i32, %struct.TYPE_9__, %struct.nvkm_i2c_bus_func*, i32, i32, %struct.nvkm_i2c_pad* }
%struct.TYPE_9__ = type { i32*, %struct.i2c_algo_bit_data*, %struct.TYPE_8__, i32, i32 }
%struct.i2c_algo_bit_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_i2c_bus*, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ctor\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nvkm-%s-bus-%04x\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"NvI2C\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_i2c_bus_pre_xfer = common dso_local global i32 0, align 4
@nvkm_i2c_bus_post_xfer = common dso_local global i32 0, align 4
@nvkm_i2c_bus_setscl = common dso_local global i32 0, align 4
@nvkm_i2c_bus_setsda = common dso_local global i32 0, align 4
@nvkm_i2c_bus_getscl = common dso_local global i32 0, align 4
@nvkm_i2c_bus_getsda = common dso_local global i32 0, align 4
@nvkm_i2c_bus_algo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_i2c_bus_ctor(%struct.nvkm_i2c_bus_func* %0, %struct.nvkm_i2c_pad* %1, i32 %2, %struct.nvkm_i2c_bus* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_bus_func*, align 8
  %7 = alloca %struct.nvkm_i2c_pad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_i2c_bus*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca %struct.i2c_algo_bit_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_i2c_bus_func* %0, %struct.nvkm_i2c_bus_func** %6, align 8
  store %struct.nvkm_i2c_pad* %1, %struct.nvkm_i2c_pad** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_i2c_bus* %3, %struct.nvkm_i2c_bus** %9, align 8
  %14 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %18, align 8
  store %struct.nvkm_device* %19, %struct.nvkm_device** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.nvkm_i2c_bus_func*, %struct.nvkm_i2c_bus_func** %6, align 8
  %21 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %22 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %21, i32 0, i32 2
  store %struct.nvkm_i2c_bus_func* %20, %struct.nvkm_i2c_bus_func** %22, align 8
  %23 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %7, align 8
  %24 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %25 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %24, i32 0, i32 5
  store %struct.nvkm_i2c_pad* %23, %struct.nvkm_i2c_pad** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %28 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %30 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %29, i32 0, i32 4
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %33 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %32, i32 0, i32 3
  %34 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %7, align 8
  %35 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %33, i32* %37)
  %39 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %40 = call i32 @BUS_TRACE(%struct.nvkm_i2c_bus* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %42 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %46 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @dev_name(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %49)
  %51 = load i32, i32* @THIS_MODULE, align 4
  %52 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %53 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %56 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %59 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %63 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %62, i32 0, i32 2
  %64 = load %struct.nvkm_i2c_bus_func*, %struct.nvkm_i2c_bus_func** %63, align 8
  %65 = getelementptr inbounds %struct.nvkm_i2c_bus_func, %struct.nvkm_i2c_bus_func* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %4
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %70 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nvkm_boolopt(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %115, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.i2c_algo_bit_data* @kzalloc(i32 48, i32 %75)
  store %struct.i2c_algo_bit_data* %76, %struct.i2c_algo_bit_data** %11, align 8
  %77 = icmp ne %struct.i2c_algo_bit_data* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %124

81:                                               ; preds = %74
  %82 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %83 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %82, i32 0, i32 0
  store i32 10, i32* %83, align 8
  %84 = call i32 @usecs_to_jiffies(i32 2200)
  %85 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %86 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %88 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %89 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %88, i32 0, i32 7
  store %struct.nvkm_i2c_bus* %87, %struct.nvkm_i2c_bus** %89, align 8
  %90 = load i32, i32* @nvkm_i2c_bus_pre_xfer, align 4
  %91 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %92 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @nvkm_i2c_bus_post_xfer, align 4
  %94 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %95 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @nvkm_i2c_bus_setscl, align 4
  %97 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %98 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @nvkm_i2c_bus_setsda, align 4
  %100 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %101 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @nvkm_i2c_bus_getscl, align 4
  %103 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %104 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @nvkm_i2c_bus_getsda, align 4
  %106 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %107 = getelementptr inbounds %struct.i2c_algo_bit_data, %struct.i2c_algo_bit_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.i2c_algo_bit_data*, %struct.i2c_algo_bit_data** %11, align 8
  %109 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %110 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store %struct.i2c_algo_bit_data* %108, %struct.i2c_algo_bit_data** %111, align 8
  %112 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %113 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %112, i32 0, i32 1
  %114 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %113)
  store i32 %114, i32* %13, align 4
  br label %122

115:                                              ; preds = %68, %4
  %116 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %117 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  store i32* @nvkm_i2c_bus_algo, i32** %118, align 8
  %119 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %120 = getelementptr inbounds %struct.nvkm_i2c_bus, %struct.nvkm_i2c_bus* %119, i32 0, i32 1
  %121 = call i32 @i2c_add_adapter(%struct.TYPE_9__* %120)
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %115, %81
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %78
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @BUS_TRACE(%struct.nvkm_i2c_bus*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @nvkm_boolopt(i32, i8*, i32) #1

declare dso_local %struct.i2c_algo_bit_data* @kzalloc(i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
