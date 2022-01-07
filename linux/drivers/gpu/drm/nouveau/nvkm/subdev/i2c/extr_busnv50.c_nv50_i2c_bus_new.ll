; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv50.c_nv50_i2c_bus_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_busnv50.c_nv50_i2c_bus_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }
%struct.nv50_i2c_bus = type { i32, i32, %struct.nvkm_i2c_bus }

@nv50_i2c_bus_new.addr = internal constant [10 x i32] [i32 57656, i32 57680, i32 57704, i32 57728, i32 57940, i32 57972, i32 59236, i32 59264, i32 59292, i32 59320], align 16
@.str = private unnamed_addr constant [16 x i8] c"bus %d unknown\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_i2c_bus_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_i2c_bus_new(%struct.nvkm_i2c_pad* %0, i32 %1, i64 %2, %struct.nvkm_i2c_bus** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_pad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_i2c_bus**, align 8
  %10 = alloca %struct.nv50_i2c_bus*, align 8
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.nvkm_i2c_bus** %3, %struct.nvkm_i2c_bus*** %9, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call i64 @ARRAY_SIZE(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @nv50_i2c_bus_new.addr, i64 0, i64 0))
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @nvkm_warn(i32* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %46

23:                                               ; preds = %4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.nv50_i2c_bus* @kzalloc(i32 12, i32 %24)
  store %struct.nv50_i2c_bus* %25, %struct.nv50_i2c_bus** %10, align 8
  %26 = icmp ne %struct.nv50_i2c_bus* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %23
  %31 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %10, align 8
  %32 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %31, i32 0, i32 2
  %33 = load %struct.nvkm_i2c_bus**, %struct.nvkm_i2c_bus*** %9, align 8
  store %struct.nvkm_i2c_bus* %32, %struct.nvkm_i2c_bus** %33, align 8
  %34 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %10, align 8
  %37 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %36, i32 0, i32 2
  %38 = call i32 @nvkm_i2c_bus_ctor(i32* @nv50_i2c_bus_func, %struct.nvkm_i2c_pad* %34, i32 %35, %struct.nvkm_i2c_bus* %37)
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* @nv50_i2c_bus_new.addr, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %10, align 8
  %43 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.nv50_i2c_bus*, %struct.nv50_i2c_bus** %10, align 8
  %45 = getelementptr inbounds %struct.nv50_i2c_bus, %struct.nv50_i2c_bus* %44, i32 0, i32 1
  store i32 7, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %27, %14
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvkm_warn(i32*, i8*, i64) #1

declare dso_local %struct.nv50_i2c_bus* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_bus_ctor(i32*, %struct.nvkm_i2c_pad*, i32, %struct.nvkm_i2c_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
