; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad_func = type { i32 }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_i2c_pad = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_i2c_pad_new_(%struct.nvkm_i2c_pad_func* %0, %struct.nvkm_i2c* %1, i32 %2, %struct.nvkm_i2c_pad** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_pad_func*, align 8
  %7 = alloca %struct.nvkm_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_i2c_pad**, align 8
  store %struct.nvkm_i2c_pad_func* %0, %struct.nvkm_i2c_pad_func** %6, align 8
  store %struct.nvkm_i2c* %1, %struct.nvkm_i2c** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_i2c_pad** %3, %struct.nvkm_i2c_pad*** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.nvkm_i2c_pad* @kzalloc(i32 4, i32 %10)
  %12 = load %struct.nvkm_i2c_pad**, %struct.nvkm_i2c_pad*** %9, align 8
  store %struct.nvkm_i2c_pad* %11, %struct.nvkm_i2c_pad** %12, align 8
  %13 = icmp ne %struct.nvkm_i2c_pad* %11, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %24

17:                                               ; preds = %4
  %18 = load %struct.nvkm_i2c_pad_func*, %struct.nvkm_i2c_pad_func** %6, align 8
  %19 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.nvkm_i2c_pad**, %struct.nvkm_i2c_pad*** %9, align 8
  %22 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %21, align 8
  %23 = call i32 @nvkm_i2c_pad_ctor(%struct.nvkm_i2c_pad_func* %18, %struct.nvkm_i2c* %19, i32 %20, %struct.nvkm_i2c_pad* %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.nvkm_i2c_pad* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_i2c_pad_ctor(%struct.nvkm_i2c_pad_func*, %struct.nvkm_i2c*, i32, %struct.nvkm_i2c_pad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
