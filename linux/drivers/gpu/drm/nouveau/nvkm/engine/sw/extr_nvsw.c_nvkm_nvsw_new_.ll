; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nvsw.c_nvkm_nvsw_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_nvsw_func = type { i32 }
%struct.nvkm_sw_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_nvsw = type { %struct.nvkm_sw_chan*, %struct.nvkm_nvsw_func*, %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvkm_nvsw_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_nvsw_new_(%struct.nvkm_nvsw_func* %0, %struct.nvkm_sw_chan* %1, %struct.nvkm_oclass* %2, i8* %3, i32 %4, %struct.nvkm_object** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_nvsw_func*, align 8
  %9 = alloca %struct.nvkm_sw_chan*, align 8
  %10 = alloca %struct.nvkm_oclass*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_object**, align 8
  %14 = alloca %struct.nvkm_nvsw*, align 8
  store %struct.nvkm_nvsw_func* %0, %struct.nvkm_nvsw_func** %8, align 8
  store %struct.nvkm_sw_chan* %1, %struct.nvkm_sw_chan** %9, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.nvkm_object** %5, %struct.nvkm_object*** %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvkm_nvsw* @kzalloc(i32 24, i32 %15)
  store %struct.nvkm_nvsw* %16, %struct.nvkm_nvsw** %14, align 8
  %17 = icmp ne %struct.nvkm_nvsw* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %35

21:                                               ; preds = %6
  %22 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %14, align 8
  %23 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %22, i32 0, i32 2
  %24 = load %struct.nvkm_object**, %struct.nvkm_object*** %13, align 8
  store %struct.nvkm_object* %23, %struct.nvkm_object** %24, align 8
  %25 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %10, align 8
  %26 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %14, align 8
  %27 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %26, i32 0, i32 2
  %28 = call i32 @nvkm_object_ctor(i32* @nvkm_nvsw_, %struct.nvkm_oclass* %25, %struct.nvkm_object* %27)
  %29 = load %struct.nvkm_nvsw_func*, %struct.nvkm_nvsw_func** %8, align 8
  %30 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %14, align 8
  %31 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %30, i32 0, i32 1
  store %struct.nvkm_nvsw_func* %29, %struct.nvkm_nvsw_func** %31, align 8
  %32 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %9, align 8
  %33 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %14, align 8
  %34 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %33, i32 0, i32 0
  store %struct.nvkm_sw_chan* %32, %struct.nvkm_sw_chan** %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %21, %18
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.nvkm_nvsw* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
