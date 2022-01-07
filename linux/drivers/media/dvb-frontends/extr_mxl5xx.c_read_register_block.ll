; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_register_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_read_register_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@MXL_HYDRA_PLID_REG_READ = common dso_local global i64 0, align 8
@MXL_HYDRA_I2C_HDR_SIZE = common dso_local global i64 0, align 8
@MXL_HYDRA_REG_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@MXL_ENABLE_BIG_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i64, i64, i64*)* @read_register_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_register_block(%struct.mxl* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.mxl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.mxl* %0, %struct.mxl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.mxl*, %struct.mxl** %5, align 8
  %12 = getelementptr inbounds %struct.mxl, %struct.mxl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %10, align 8
  %16 = load %struct.mxl*, %struct.mxl** %5, align 8
  %17 = getelementptr inbounds %struct.mxl, %struct.mxl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load i64, i64* @MXL_HYDRA_PLID_REG_READ, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 4
  %26 = load i64*, i64** %10, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  store i64 %25, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @GET_BYTE(i64 %28, i32 0)
  %30 = load i64*, i64** %10, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @GET_BYTE(i64 %32, i32 1)
  %34 = load i64*, i64** %10, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i64 @GET_BYTE(i64 %36, i32 2)
  %38 = load i64*, i64** %10, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 4
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @GET_BYTE(i64 %40, i32 3)
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 5
  store i64 %41, i64* %43, align 8
  %44 = load %struct.mxl*, %struct.mxl** %5, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = load i64, i64* @MXL_HYDRA_I2C_HDR_SIZE, align 8
  %47 = load i64, i64* @MXL_HYDRA_REG_SIZE_IN_BYTES, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @i2cwrite(%struct.mxl* %44, i64* %45, i64 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %4
  %53 = load %struct.mxl*, %struct.mxl** %5, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @i2cread(%struct.mxl* %53, i64* %54, i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* @MXL_ENABLE_BIG_ENDIAN, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = call i32 @convert_endian(i32 %57, i64 %58, i64* %59)
  br label %61

61:                                               ; preds = %52, %4
  %62 = load %struct.mxl*, %struct.mxl** %5, align 8
  %63 = getelementptr inbounds %struct.mxl, %struct.mxl* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @GET_BYTE(i64, i32) #1

declare dso_local i32 @i2cwrite(%struct.mxl*, i64*, i64) #1

declare dso_local i32 @i2cread(%struct.mxl*, i64*, i64) #1

declare dso_local i32 @convert_endian(i32, i64, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
