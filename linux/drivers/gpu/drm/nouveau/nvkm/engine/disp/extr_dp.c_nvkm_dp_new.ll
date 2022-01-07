; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_disp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nvkm_i2c* }
%struct.nvkm_i2c = type { i32 }
%struct.dcb_output = type { i64, i32, i32 }
%struct.nvkm_outp = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }
%struct.nvkm_dp = type { %struct.nvkm_outp }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_dp_new(%struct.nvkm_disp* %0, i32 %1, %struct.dcb_output* %2, %struct.nvkm_outp** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_disp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcb_output*, align 8
  %9 = alloca %struct.nvkm_outp**, align 8
  %10 = alloca %struct.nvkm_i2c*, align 8
  %11 = alloca %struct.nvkm_i2c_aux*, align 8
  %12 = alloca %struct.nvkm_dp*, align 8
  store %struct.nvkm_disp* %0, %struct.nvkm_disp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dcb_output* %2, %struct.dcb_output** %8, align 8
  store %struct.nvkm_outp** %3, %struct.nvkm_outp*** %9, align 8
  %13 = load %struct.nvkm_disp*, %struct.nvkm_disp** %6, align 8
  %14 = getelementptr inbounds %struct.nvkm_disp, %struct.nvkm_disp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %18, align 8
  store %struct.nvkm_i2c* %19, %struct.nvkm_i2c** %10, align 8
  %20 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %21 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %10, align 8
  %26 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %27 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @NVKM_I2C_AUX_CCB(i32 %28)
  %30 = call %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c* %25, i32 %29)
  store %struct.nvkm_i2c_aux* %30, %struct.nvkm_i2c_aux** %11, align 8
  br label %38

31:                                               ; preds = %4
  %32 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %10, align 8
  %33 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %34 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NVKM_I2C_AUX_EXT(i32 %35)
  %37 = call %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c* %32, i32 %36)
  store %struct.nvkm_i2c_aux* %37, %struct.nvkm_i2c_aux** %11, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.nvkm_dp* @kzalloc(i32 4, i32 %39)
  store %struct.nvkm_dp* %40, %struct.nvkm_dp** %12, align 8
  %41 = icmp ne %struct.nvkm_dp* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %38
  %46 = load %struct.nvkm_dp*, %struct.nvkm_dp** %12, align 8
  %47 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %46, i32 0, i32 0
  %48 = load %struct.nvkm_outp**, %struct.nvkm_outp*** %9, align 8
  store %struct.nvkm_outp* %47, %struct.nvkm_outp** %48, align 8
  %49 = load %struct.nvkm_disp*, %struct.nvkm_disp** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.dcb_output*, %struct.dcb_output** %8, align 8
  %52 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %11, align 8
  %53 = load %struct.nvkm_dp*, %struct.nvkm_dp** %12, align 8
  %54 = call i32 @nvkm_dp_ctor(%struct.nvkm_disp* %49, i32 %50, %struct.dcb_output* %51, %struct.nvkm_i2c_aux* %52, %struct.nvkm_dp* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.nvkm_i2c_aux* @nvkm_i2c_aux_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i32 @NVKM_I2C_AUX_CCB(i32) #1

declare dso_local i32 @NVKM_I2C_AUX_EXT(i32) #1

declare dso_local %struct.nvkm_dp* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_dp_ctor(%struct.nvkm_disp*, i32, %struct.dcb_output*, %struct.nvkm_i2c_aux*, %struct.nvkm_dp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
