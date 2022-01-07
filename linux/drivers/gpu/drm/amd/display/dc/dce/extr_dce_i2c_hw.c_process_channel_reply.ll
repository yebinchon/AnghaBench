; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_process_channel_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_i2c_hw.c_process_channel_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_i2c_hw = type { i32 }
%struct.i2c_payload = type { i32*, i64 }

@DC_I2C_DATA = common dso_local global i32 0, align 4
@DC_I2C_INDEX = common dso_local global i32 0, align 4
@DC_I2C_DATA_RW = common dso_local global i32 0, align 4
@DC_I2C_INDEX_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_i2c_hw*, %struct.i2c_payload*)* @process_channel_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_channel_reply(%struct.dce_i2c_hw* %0, %struct.i2c_payload* %1) #0 {
  %3 = alloca %struct.dce_i2c_hw*, align 8
  %4 = alloca %struct.i2c_payload*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.dce_i2c_hw* %0, %struct.dce_i2c_hw** %3, align 8
  store %struct.i2c_payload* %1, %struct.i2c_payload** %4, align 8
  %8 = load %struct.i2c_payload*, %struct.i2c_payload** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.i2c_payload*, %struct.i2c_payload** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_payload, %struct.i2c_payload* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32, i32* @DC_I2C_DATA, align 4
  %15 = load i32, i32* @DC_I2C_INDEX, align 4
  %16 = load %struct.dce_i2c_hw*, %struct.dce_i2c_hw** %3, align 8
  %17 = getelementptr inbounds %struct.dce_i2c_hw, %struct.dce_i2c_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DC_I2C_DATA_RW, align 4
  %20 = load i32, i32* @DC_I2C_INDEX_WRITE, align 4
  %21 = call i32 @REG_SET_3(i32 %14, i32 0, i32 %15, i32 %18, i32 %19, i32 1, i32 %20, i32 1)
  br label %22

22:                                               ; preds = %25, %2
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, i32* @DC_I2C_DATA, align 4
  %27 = load i32, i32* @DC_I2C_DATA, align 4
  %28 = call i32 @REG_GET(i32 %26, i32 %27, i64* %7)
  %29 = load i64, i64* %7, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %5, align 8
  br label %22

35:                                               ; preds = %22
  ret void
}

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
