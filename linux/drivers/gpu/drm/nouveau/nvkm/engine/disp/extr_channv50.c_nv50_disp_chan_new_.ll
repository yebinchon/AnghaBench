; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan_func = type { i32 }
%struct.nv50_disp_chan_mthd = type { i32 }
%struct.nv50_disp = type { %struct.nv50_disp_chan** }
%struct.nv50_disp_chan = type { i32, %struct.TYPE_2__, %struct.nv50_disp*, %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_func*, %struct.nvkm_object }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_disp_chan = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_disp_chan_new_(%struct.nv50_disp_chan_func* %0, %struct.nv50_disp_chan_mthd* %1, %struct.nv50_disp* %2, i32 %3, i32 %4, i32 %5, %struct.nvkm_oclass* %6, %struct.nvkm_object** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nv50_disp_chan_func*, align 8
  %11 = alloca %struct.nv50_disp_chan_mthd*, align 8
  %12 = alloca %struct.nv50_disp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvkm_oclass*, align 8
  %17 = alloca %struct.nvkm_object**, align 8
  %18 = alloca %struct.nv50_disp_chan*, align 8
  store %struct.nv50_disp_chan_func* %0, %struct.nv50_disp_chan_func** %10, align 8
  store %struct.nv50_disp_chan_mthd* %1, %struct.nv50_disp_chan_mthd** %11, align 8
  store %struct.nv50_disp* %2, %struct.nv50_disp** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nvkm_oclass* %6, %struct.nvkm_oclass** %16, align 8
  store %struct.nvkm_object** %7, %struct.nvkm_object*** %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nv50_disp_chan* @kzalloc(i32 48, i32 %19)
  store %struct.nv50_disp_chan* %20, %struct.nv50_disp_chan** %18, align 8
  %21 = icmp ne %struct.nv50_disp_chan* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %81

25:                                               ; preds = %8
  %26 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %27 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %26, i32 0, i32 5
  %28 = load %struct.nvkm_object**, %struct.nvkm_object*** %17, align 8
  store %struct.nvkm_object* %27, %struct.nvkm_object** %28, align 8
  %29 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %16, align 8
  %30 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %31 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %30, i32 0, i32 5
  %32 = call i32 @nvkm_object_ctor(i32* @nv50_disp_chan, %struct.nvkm_oclass* %29, %struct.nvkm_object* %31)
  %33 = load %struct.nv50_disp_chan_func*, %struct.nv50_disp_chan_func** %10, align 8
  %34 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %35 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %34, i32 0, i32 4
  store %struct.nv50_disp_chan_func* %33, %struct.nv50_disp_chan_func** %35, align 8
  %36 = load %struct.nv50_disp_chan_mthd*, %struct.nv50_disp_chan_mthd** %11, align 8
  %37 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %38 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %37, i32 0, i32 3
  store %struct.nv50_disp_chan_mthd* %36, %struct.nv50_disp_chan_mthd** %38, align 8
  %39 = load %struct.nv50_disp*, %struct.nv50_disp** %12, align 8
  %40 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %41 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %40, i32 0, i32 2
  store %struct.nv50_disp* %39, %struct.nv50_disp** %41, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %44 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %48 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %52 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nv50_disp*, %struct.nv50_disp** %12, align 8
  %54 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %53, i32 0, i32 0
  %55 = load %struct.nv50_disp_chan**, %struct.nv50_disp_chan*** %54, align 8
  %56 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %57 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %55, i64 %60
  %62 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %61, align 8
  %63 = icmp ne %struct.nv50_disp_chan* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %25
  %65 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %66 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %81

70:                                               ; preds = %25
  %71 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %72 = load %struct.nv50_disp*, %struct.nv50_disp** %12, align 8
  %73 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %72, i32 0, i32 0
  %74 = load %struct.nv50_disp_chan**, %struct.nv50_disp_chan*** %73, align 8
  %75 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %18, align 8
  %76 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %74, i64 %79
  store %struct.nv50_disp_chan* %71, %struct.nv50_disp_chan** %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %70, %64, %22
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local %struct.nv50_disp_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
