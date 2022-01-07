; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_aux.c_nvkm_i2c_aux_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { %struct.nvkm_i2c_pad* }
%struct.nvkm_i2c_pad = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"monitor: %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@NVKM_I2C_PAD_AUX = common dso_local global i32 0, align 4
@NVKM_I2C_PAD_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_i2c_aux_monitor(%struct.nvkm_i2c_aux* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_i2c_aux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_i2c_pad*, align 8
  store %struct.nvkm_i2c_aux* %0, %struct.nvkm_i2c_aux** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_i2c_aux, %struct.nvkm_i2c_aux* %6, i32 0, i32 0
  %8 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %7, align 8
  store %struct.nvkm_i2c_pad* %8, %struct.nvkm_i2c_pad** %5, align 8
  %9 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @AUX_TRACE(%struct.nvkm_i2c_aux* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %5, align 8
  %19 = load i32, i32* @NVKM_I2C_PAD_AUX, align 4
  %20 = call i32 @nvkm_i2c_pad_mode(%struct.nvkm_i2c_pad* %18, i32 %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %5, align 8
  %23 = load i32, i32* @NVKM_I2C_PAD_OFF, align 4
  %24 = call i32 @nvkm_i2c_pad_mode(%struct.nvkm_i2c_pad* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @AUX_TRACE(%struct.nvkm_i2c_aux*, i8*, i8*) #1

declare dso_local i32 @nvkm_i2c_pad_mode(%struct.nvkm_i2c_pad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
