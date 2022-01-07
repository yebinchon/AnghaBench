; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv50.c_nv50_clk_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_clk = type { i32 }
%struct.nv50_clk = type { %struct.TYPE_2__, %struct.nvkm_clk }
%struct.TYPE_2__ = type { i8*, i8*, i8**, i8**, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_clk_new_(%struct.nvkm_clk_func* %0, %struct.nvkm_device* %1, i32 %2, i32 %3, %struct.nvkm_clk** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_clk_func*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_clk**, align 8
  %12 = alloca %struct.nv50_clk*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_clk_func* %0, %struct.nvkm_clk_func** %7, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_clk** %4, %struct.nvkm_clk*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nv50_clk* @kzalloc(i32 48, i32 %14)
  store %struct.nv50_clk* %15, %struct.nv50_clk** %12, align 8
  %16 = icmp ne %struct.nv50_clk* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %82

20:                                               ; preds = %5
  %21 = load %struct.nvkm_clk_func*, %struct.nvkm_clk_func** %7, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %26 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %25, i32 0, i32 1
  %27 = call i32 @nvkm_clk_ctor(%struct.nvkm_clk_func* %21, %struct.nvkm_device* %22, i32 %23, i32 %24, %struct.nvkm_clk* %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %29 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %28, i32 0, i32 1
  %30 = load %struct.nvkm_clk**, %struct.nvkm_clk*** %11, align 8
  store %struct.nvkm_clk* %29, %struct.nvkm_clk** %30, align 8
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %82

35:                                               ; preds = %20
  %36 = call i8* @hwsq_reg(i32 9476)
  %37 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %38 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  %40 = call i8* @hwsq_reg(i32 16416)
  %41 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %42 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  store i8* %40, i8** %45, align 8
  %46 = call i8* @hwsq_reg(i32 16420)
  %47 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %48 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i8**, i8*** %49, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  store i8* %46, i8** %51, align 8
  %52 = call i8* @hwsq_reg(i32 16424)
  %53 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %54 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %52, i8** %57, align 8
  %58 = call i8* @hwsq_reg(i32 16428)
  %59 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %60 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  store i8* %58, i8** %63, align 8
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %72 [
    i32 146, label %67
    i32 148, label %67
    i32 150, label %67
  ]

67:                                               ; preds = %35, %35, %35
  %68 = call i8* @hwsq_reg(i32 18432)
  %69 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %70 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  br label %77

72:                                               ; preds = %35
  %73 = call i8* @hwsq_reg(i32 18176)
  %74 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %75 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %67
  %78 = call i8* @hwsq_reg(i32 49216)
  %79 = load %struct.nv50_clk*, %struct.nv50_clk** %12, align 8
  %80 = getelementptr inbounds %struct.nv50_clk, %struct.nv50_clk* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %33, %17
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.nv50_clk* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_clk_ctor(%struct.nvkm_clk_func*, %struct.nvkm_device*, i32, i32, %struct.nvkm_clk*) #1

declare dso_local i8* @hwsq_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
