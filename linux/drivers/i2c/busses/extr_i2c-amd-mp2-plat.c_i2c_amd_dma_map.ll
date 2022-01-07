; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-amd-mp2-plat.c_i2c_amd_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_i2c_common = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }
%struct.device = type { i32 }
%struct.amd_i2c_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error while mapping dma buffer %p\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_i2c_common*)* @i2c_amd_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_amd_dma_map(%struct.amd_i2c_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_i2c_common*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.amd_i2c_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.amd_i2c_common* %0, %struct.amd_i2c_common** %3, align 8
  %7 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %8 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %14 = call %struct.amd_i2c_dev* @amd_i2c_dev_common(%struct.amd_i2c_common* %13)
  store %struct.amd_i2c_dev* %14, %struct.amd_i2c_dev** %5, align 8
  %15 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %16 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_M_RD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %30 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i32 @i2c_get_dma_safe_msg_buf(%struct.TYPE_8__* %31, i32 0)
  %33 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %34 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %37 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %40 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dma_map_single(%struct.device* %35, i32 %38, i32 %43, i32 %44)
  %46 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %47 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %50 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dma_mapping_error(%struct.device* %48, i32 %51)
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %27
  %56 = load %struct.amd_i2c_dev*, %struct.amd_i2c_dev** %5, align 8
  %57 = getelementptr inbounds %struct.amd_i2c_dev, %struct.amd_i2c_dev* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.amd_i2c_common*, %struct.amd_i2c_common** %3, align 8
  %61 = getelementptr inbounds %struct.amd_i2c_common, %struct.amd_i2c_common* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.amd_i2c_dev* @amd_i2c_dev_common(%struct.amd_i2c_common*) #1

declare dso_local i32 @i2c_get_dma_safe_msg_buf(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
