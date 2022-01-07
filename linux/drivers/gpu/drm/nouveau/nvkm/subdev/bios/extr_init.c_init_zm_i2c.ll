; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_zm_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64, i64, i64*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"ZM_I2C\09I2C[0x%02x][0x%02x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"\090x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"i2c wr failed, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_zm_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_zm_i2c(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %12 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %13 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_bios*, %struct.nvkm_bios** %17, align 8
  store %struct.nvkm_bios* %18, %struct.nvkm_bios** %3, align 8
  %19 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %20 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %21 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @nvbios_rd08(%struct.nvkm_bios* %19, i64 %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %4, align 8
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %27 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %28 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 2
  %31 = call i32 @nvbios_rd08(%struct.nvkm_bios* %26, i64 %30)
  %32 = ashr i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %5, align 8
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %35 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %36 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 3
  %39 = call i32 @nvbios_rd08(%struct.nvkm_bios* %34, i64 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %45 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 4
  store i64 %47, i64* %45, align 8
  store i64 0, i64* %8, align 8
  br label %48

48:                                               ; preds = %69, %1
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i64 %56)
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %59
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i8*, i64, ...) @trace(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %63)
  %65 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %66 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %52
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %74 = call i64 @init_exec(%struct.nvbios_init* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call %struct.i2c_adapter* @init_i2c(%struct.nvbios_init* %77, i64 %78)
  store %struct.i2c_adapter* %79, %struct.i2c_adapter** %9, align 8
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %81 = load i64, i64* %5, align 8
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %83 = load i64, i64* %6, align 8
  store i64 %83, i64* %82, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  %85 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 0
  store i64* %85, i64** %84, align 8
  %86 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 0, i32* %86, align 8
  %87 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %88 = icmp ne %struct.i2c_adapter* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %76
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %91 = call i32 @i2c_transfer(%struct.i2c_adapter* %90, %struct.i2c_msg* %10, i32 1)
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %89, %76
  br label %97

97:                                               ; preds = %96, %72
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i64, ...) #1

declare dso_local i64 @init_exec(%struct.nvbios_init*) #1

declare dso_local %struct.i2c_adapter* @init_i2c(%struct.nvbios_init*, i64) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
