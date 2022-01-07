; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_blkrd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xgene-slimpro.c_slimpro_i2c_blkrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slimpro_i2c_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error in mapping dma buffer %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SLIMPRO_IIC_BUS = common dso_local global i32 0, align 4
@SLIMPRO_IIC_READ = common dso_local global i32 0, align 4
@SLIMPRO_IIC_ENCODE_FLAG_BUFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slimpro_i2c_dev*, i32, i32, i32, i32, i32, i32, i8*)* @slimpro_i2c_blkrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slimpro_i2c_blkrd(%struct.slimpro_i2c_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.slimpro_i2c_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  store %struct.slimpro_i2c_dev* %0, %struct.slimpro_i2c_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %21 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %22 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %25 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %29 = call i64 @dma_map_single(i32 %23, i32 %26, i32 %27, i32 %28)
  store i64 %29, i64* %18, align 8
  %30 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %31 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %18, align 8
  %34 = call i64 @dma_mapping_error(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %8
  %37 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %38 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %41 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %87

46:                                               ; preds = %8
  %47 = load i32, i32* @SLIMPRO_IIC_BUS, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @SLIMPRO_IIC_READ, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @SLIMPRO_IIC_ENCODE_MSG(i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @SLIMPRO_IIC_ENCODE_FLAG_BUFADDR, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @SLIMPRO_IIC_ENCODE_FLAG_WITH_DATA_LEN(i32 %56)
  %58 = or i32 %55, %57
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @SLIMPRO_IIC_ENCODE_UPPER_BUFADDR(i64 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @SLIMPRO_IIC_ENCODE_ADDR(i32 %62)
  %64 = or i32 %61, %63
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load i64, i64* %18, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %72 = call i32 @slimpro_i2c_send_msg(%struct.slimpro_i2c_dev* %69, i32* %70, i32* %71)
  store i32 %72, i32* %20, align 4
  %73 = load i8*, i8** %17, align 8
  %74 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %75 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @memcpy(i8* %73, i32 %76, i32 %77)
  %79 = load %struct.slimpro_i2c_dev*, %struct.slimpro_i2c_dev** %10, align 8
  %80 = getelementptr inbounds %struct.slimpro_i2c_dev, %struct.slimpro_i2c_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %18, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %85 = call i32 @dma_unmap_single(i32 %81, i64 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %20, align 4
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %46, %36
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i64 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @SLIMPRO_IIC_ENCODE_MSG(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLIMPRO_IIC_ENCODE_FLAG_WITH_DATA_LEN(i32) #1

declare dso_local i32 @SLIMPRO_IIC_ENCODE_UPPER_BUFADDR(i64) #1

declare dso_local i32 @SLIMPRO_IIC_ENCODE_ADDR(i32) #1

declare dso_local i32 @slimpro_i2c_send_msg(%struct.slimpro_i2c_dev*, i32*, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
