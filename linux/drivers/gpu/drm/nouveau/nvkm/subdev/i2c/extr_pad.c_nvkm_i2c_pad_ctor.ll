; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad_func = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_pad = type { i32, i32, i32, i32, %struct.nvkm_i2c*, %struct.nvkm_i2c_pad_func* }

@NVKM_I2C_PAD_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ctor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_i2c_pad_ctor(%struct.nvkm_i2c_pad_func* %0, %struct.nvkm_i2c* %1, i32 %2, %struct.nvkm_i2c_pad* %3) #0 {
  %5 = alloca %struct.nvkm_i2c_pad_func*, align 8
  %6 = alloca %struct.nvkm_i2c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_i2c_pad*, align 8
  store %struct.nvkm_i2c_pad_func* %0, %struct.nvkm_i2c_pad_func** %5, align 8
  store %struct.nvkm_i2c* %1, %struct.nvkm_i2c** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nvkm_i2c_pad* %3, %struct.nvkm_i2c_pad** %8, align 8
  %9 = load %struct.nvkm_i2c_pad_func*, %struct.nvkm_i2c_pad_func** %5, align 8
  %10 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %11 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %10, i32 0, i32 5
  store %struct.nvkm_i2c_pad_func* %9, %struct.nvkm_i2c_pad_func** %11, align 8
  %12 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %6, align 8
  %13 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %13, i32 0, i32 4
  store %struct.nvkm_i2c* %12, %struct.nvkm_i2c** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @NVKM_I2C_PAD_OFF, align 4
  %19 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %22 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %21, i32 0, i32 2
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %24, i32 0, i32 1
  %26 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %6, align 8
  %27 = getelementptr inbounds %struct.nvkm_i2c, %struct.nvkm_i2c* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %30 = call i32 @PAD_TRACE(%struct.nvkm_i2c_pad* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @PAD_TRACE(%struct.nvkm_i2c_pad*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
