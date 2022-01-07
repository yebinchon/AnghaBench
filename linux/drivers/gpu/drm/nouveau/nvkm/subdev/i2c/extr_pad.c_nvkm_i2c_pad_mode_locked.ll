; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_mode_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_mode_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_i2c_pad*, i32)* }

@.str = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@NVKM_I2C_PAD_AUX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"aux\00", align 1
@NVKM_I2C_PAD_I2C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_i2c_pad*, i32)* @nvkm_i2c_pad_mode_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_i2c_pad_mode_locked(%struct.nvkm_i2c_pad* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_i2c_pad*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NVKM_I2C_PAD_AUX, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @NVKM_I2C_PAD_I2C, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  br label %16

16:                                               ; preds = %10, %9
  %17 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %9 ], [ %15, %10 ]
  %18 = call i32 @PAD_TRACE(%struct.nvkm_i2c_pad* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.nvkm_i2c_pad*, i32)*, i32 (%struct.nvkm_i2c_pad*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.nvkm_i2c_pad*, i32)* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %16
  %26 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.nvkm_i2c_pad*, i32)*, i32 (%struct.nvkm_i2c_pad*, i32)** %29, align 8
  %31 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %30(%struct.nvkm_i2c_pad* %31, i32 %32)
  br label %34

34:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @PAD_TRACE(%struct.nvkm_i2c_pad*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
