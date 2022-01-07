; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxg94.c_g94_i2c_aux_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_auxg94.c_g94_i2c_aux_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux_func = type { i32 }
%struct.nvkm_i2c_pad = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.g94_i2c_aux = type { i32, %struct.nvkm_i2c_aux }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g94_i2c_aux_new_(%struct.nvkm_i2c_aux_func* %0, %struct.nvkm_i2c_pad* %1, i32 %2, i32 %3, %struct.nvkm_i2c_aux** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_i2c_aux_func*, align 8
  %8 = alloca %struct.nvkm_i2c_pad*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_i2c_aux**, align 8
  %12 = alloca %struct.g94_i2c_aux*, align 8
  store %struct.nvkm_i2c_aux_func* %0, %struct.nvkm_i2c_aux_func** %7, align 8
  store %struct.nvkm_i2c_pad* %1, %struct.nvkm_i2c_pad** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_i2c_aux** %4, %struct.nvkm_i2c_aux*** %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.g94_i2c_aux* @kzalloc(i32 8, i32 %13)
  store %struct.g94_i2c_aux* %14, %struct.g94_i2c_aux** %12, align 8
  %15 = icmp ne %struct.g94_i2c_aux* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %5
  %20 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %12, align 8
  %21 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %20, i32 0, i32 1
  %22 = load %struct.nvkm_i2c_aux**, %struct.nvkm_i2c_aux*** %11, align 8
  store %struct.nvkm_i2c_aux* %21, %struct.nvkm_i2c_aux** %22, align 8
  %23 = load %struct.nvkm_i2c_aux_func*, %struct.nvkm_i2c_aux_func** %7, align 8
  %24 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %12, align 8
  %27 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %26, i32 0, i32 1
  %28 = call i32 @nvkm_i2c_aux_ctor(%struct.nvkm_i2c_aux_func* %23, %struct.nvkm_i2c_pad* %24, i32 %25, %struct.nvkm_i2c_aux* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %12, align 8
  %31 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %12, align 8
  %33 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.g94_i2c_aux*, %struct.g94_i2c_aux** %12, align 8
  %37 = getelementptr inbounds %struct.g94_i2c_aux, %struct.g94_i2c_aux* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %19, %16
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.g94_i2c_aux* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_aux_ctor(%struct.nvkm_i2c_aux_func*, %struct.nvkm_i2c_pad*, i32, %struct.nvkm_i2c_aux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
