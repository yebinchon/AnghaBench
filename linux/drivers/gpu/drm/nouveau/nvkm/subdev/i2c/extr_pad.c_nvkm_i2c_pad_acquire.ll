; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_pad.c_nvkm_i2c_pad_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_pad = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"acquire\00", align 1
@NVKM_I2C_PAD_OFF = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_i2c_pad_acquire(%struct.nvkm_i2c_pad* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_i2c_pad*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_i2c_pad* %0, %struct.nvkm_i2c_pad** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %7 = call i32 @PAD_TRACE(%struct.nvkm_i2c_pad* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @NVKM_I2C_PAD_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %25 = getelementptr inbounds %struct.nvkm_i2c_pad, %struct.nvkm_i2c_pad* %24, i32 0, i32 1
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load %struct.nvkm_i2c_pad*, %struct.nvkm_i2c_pad** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @nvkm_i2c_pad_mode_locked(%struct.nvkm_i2c_pad* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @PAD_TRACE(%struct.nvkm_i2c_pad*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nvkm_i2c_pad_mode_locked(%struct.nvkm_i2c_pad*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
