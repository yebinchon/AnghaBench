; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_dp = type { i32, %struct.TYPE_2__, i32, i32, %struct.nvkm_i2c_aux* }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_i2c_aux = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"aux power -> always\00", align 1
@DPCD_RC00_DPCD_REV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"aux power -> demand\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_dp*, i32)* @nvkm_dp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dp_enable(%struct.nvkm_dp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_dp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_i2c_aux*, align 8
  store %struct.nvkm_dp* %0, %struct.nvkm_dp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %7, i32 0, i32 4
  %9 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %8, align 8
  store %struct.nvkm_i2c_aux* %9, %struct.nvkm_i2c_aux** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %18, i32 0, i32 2
  %20 = call i32 @OUTP_DBG(i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %22 = call i32 @nvkm_i2c_aux_monitor(%struct.nvkm_i2c_aux* %21, i32 1)
  %23 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %12
  %26 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %27 = load i32, i32* @DPCD_RC00_DPCD_REV, align 4
  %28 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nvkm_rdaux(%struct.nvkm_i2c_aux* %26, i32 %27, i32 %30, i32 4)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %53

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %37 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %41, i32 0, i32 2
  %43 = call i32 @OUTP_DBG(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.nvkm_i2c_aux*, %struct.nvkm_i2c_aux** %6, align 8
  %45 = call i32 @nvkm_i2c_aux_monitor(%struct.nvkm_i2c_aux* %44, i32 0)
  %46 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %47 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %35
  %49 = load %struct.nvkm_dp*, %struct.nvkm_dp** %4, align 8
  %50 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %33
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @OUTP_DBG(i32*, i8*) #1

declare dso_local i32 @nvkm_i2c_aux_monitor(%struct.nvkm_i2c_aux*, i32) #1

declare dso_local i32 @nvkm_rdaux(%struct.nvkm_i2c_aux*, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
