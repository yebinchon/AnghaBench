; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_select_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_select_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.pca954x = type { i32, %struct.chip_desc*, %struct.i2c_client* }
%struct.chip_desc = type { i64, i32 }
%struct.i2c_client = type { i32 }

@pca954x_ismux = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*, i32)* @pca954x_select_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca954x_select_chan(%struct.i2c_mux_core* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_mux_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pca954x*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.chip_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %11 = call %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core* %10)
  store %struct.pca954x* %11, %struct.pca954x** %5, align 8
  %12 = load %struct.pca954x*, %struct.pca954x** %5, align 8
  %13 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %12, i32 0, i32 2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.pca954x*, %struct.pca954x** %5, align 8
  %16 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %15, i32 0, i32 1
  %17 = load %struct.chip_desc*, %struct.chip_desc** %16, align 8
  store %struct.chip_desc* %17, %struct.chip_desc** %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %19 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @pca954x_ismux, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.chip_desc*, %struct.chip_desc** %7, align 8
  %26 = getelementptr inbounds %struct.chip_desc, %struct.chip_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 1, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.pca954x*, %struct.pca954x** %5, align 8
  %34 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_mux_core, %struct.i2c_mux_core* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @pca954x_reg_write(i32 %41, %struct.i2c_client* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 0, %47 ], [ %49, %48 ]
  %52 = load %struct.pca954x*, %struct.pca954x** %5, align 8
  %53 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %32
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @pca954x_reg_write(i32, %struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
