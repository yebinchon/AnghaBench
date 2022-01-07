; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_long_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_i2c_long_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [64 x i8] c"I2C_LONG_IF\09I2C[0x%02x][0x%02x][0x%02x%02x] & 0x%02x == 0x%02x\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_i2c_long_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_i2c_long_if(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca [1 x i32], align 4
  %13 = alloca [2 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %15 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %16 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %20, align 8
  store %struct.nvkm_bios* %21, %struct.nvkm_bios** %3, align 8
  %22 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %23 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %24 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @nvbios_rd08(%struct.nvkm_bios* %22, i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %29 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %30 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 2
  %33 = call i32 @nvbios_rd08(%struct.nvkm_bios* %28, i64 %32)
  %34 = ashr i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %36 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %37 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %35, i64 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %42 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %43 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 4
  %46 = call i32 @nvbios_rd08(%struct.nvkm_bios* %41, i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %48 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %49 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 5
  %52 = call i32 @nvbios_rd08(%struct.nvkm_bios* %47, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %54 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %55 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 6
  %58 = call i32 @nvbios_rd08(%struct.nvkm_bios* %53, i64 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @trace(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %67 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 7
  store i64 %69, i64* %67, align 8
  %70 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call %struct.i2c_adapter* @init_i2c(%struct.nvbios_init* %70, i32 %71)
  store %struct.i2c_adapter* %72, %struct.i2c_adapter** %10, align 8
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %74 = icmp ne %struct.i2c_adapter* %73, null
  br i1 %74, label %75, label %110

75:                                               ; preds = %1
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %76, align 4
  %78 = getelementptr inbounds i32, i32* %76, i64 1
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %78, align 4
  %80 = bitcast [1 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %80, i8 0, i64 4, i1 false)
  %81 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 0
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %82, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 1
  store i32 2, i32* %84, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 2
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32* %86, i32** %85, align 8
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i32 0, i32 3
  store i32 0, i32* %87, align 8
  %88 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %81, i64 1
  %89 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 0
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %89, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 1
  store i32 1, i32* %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 2
  %93 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  store i32* %93, i32** %92, align 8
  %94 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %88, i32 0, i32 3
  %95 = load i32, i32* @I2C_M_RD, align 4
  store i32 %95, i32* %94, align 8
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %97 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %13, i64 0, i64 0
  %98 = call i32 @i2c_transfer(%struct.i2c_adapter* %96, %struct.i2c_msg* %97, i32 2)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp eq i32 %99, 2
  br i1 %100, label %101, label %109

101:                                              ; preds = %75
  %102 = getelementptr inbounds [1 x i32], [1 x i32]* %12, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %113

109:                                              ; preds = %101, %75
  br label %110

110:                                              ; preds = %109, %1
  %111 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %112 = call i32 @init_exec_set(%struct.nvbios_init* %111, i32 0)
  br label %113

113:                                              ; preds = %110, %108
  ret void
}

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.i2c_adapter* @init_i2c(%struct.nvbios_init*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @init_exec_set(%struct.nvbios_init*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
