; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_aux_lnk_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_anx9805.c_anx9805_aux_lnk_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c_aux = type { i32 }
%struct.anx9805_aux = type { i32, i32, %struct.anx9805_pad* }
%struct.anx9805_pad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"ANX9805 train %d %02x %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"link training timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"link training failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_i2c_aux*, i32, i32, i32)* @anx9805_aux_lnk_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_aux_lnk_ctl(%struct.nvkm_i2c_aux* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_aux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.anx9805_aux*, align 8
  %11 = alloca %struct.anx9805_pad*, align 8
  %12 = alloca %struct.i2c_adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_i2c_aux* %0, %struct.nvkm_i2c_aux** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %16 = call %struct.anx9805_aux* @anx9805_aux(%struct.nvkm_i2c_aux* %15)
  store %struct.anx9805_aux* %16, %struct.anx9805_aux** %10, align 8
  %17 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %18 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %17, i32 0, i32 2
  %19 = load %struct.anx9805_pad*, %struct.anx9805_pad** %18, align 8
  store %struct.anx9805_pad* %19, %struct.anx9805_pad** %11, align 8
  %20 = load %struct.anx9805_pad*, %struct.anx9805_pad** %11, align 8
  %21 = getelementptr inbounds %struct.anx9805_pad, %struct.anx9805_pad* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %12, align 8
  %24 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %25 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @AUX_DBG(i32* %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %31 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %32 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %30, i32 %33, i32 160, i32 %34)
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %37 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %38 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 128, i32 0
  %45 = or i32 %40, %44
  %46 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %36, i32 %39, i32 161, i32 %45)
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %48 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %49 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %47, i32 %50, i32 162, i32 1)
  %52 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %53 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %54 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nvkm_wri2cr(%struct.i2c_adapter* %52, i32 %55, i32 168, i32 1)
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %76, %4
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %59 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %60 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nvkm_rdi2cr(%struct.i2c_adapter* %58, i32 %61, i32 168)
  store i32 %62, i32* %13, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = call i32 @mdelay(i32 5)
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  %69 = icmp eq i32 %67, 100
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %72 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %71, i32 0, i32 0
  %73 = call i32 @AUX_ERR(i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %88

76:                                               ; preds = %65
  br label %57

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 112
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.anx9805_aux*, %struct.anx9805_aux** %10, align 8
  %83 = getelementptr inbounds %struct.anx9805_aux, %struct.anx9805_aux* %82, i32 0, i32 0
  %84 = call i32 @AUX_ERR(i32* %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %88

87:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %81, %70
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.anx9805_aux* @anx9805_aux(%struct.nvkm_i2c_aux*) #1

declare dso_local i32 @AUX_DBG(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wri2cr(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rdi2cr(%struct.i2c_adapter*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @AUX_ERR(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
