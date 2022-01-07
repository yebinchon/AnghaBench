; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_object_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_object_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_oclass = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.nvkm_object = type { i32 }
%struct.gf100_gr_chan = type { i32 }
%struct.gf100_gr_object = type { %struct.gf100_gr_chan*, %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gf100_gr_object_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @gf100_gr_object_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_object_new(%struct.nvkm_oclass* %0, i8* %1, i32 %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.gf100_gr_chan*, align 8
  %11 = alloca %struct.gf100_gr_object*, align 8
  store %struct.nvkm_oclass* %0, %struct.nvkm_oclass** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.gf100_gr_chan* @gf100_gr_chan(i32 %14)
  store %struct.gf100_gr_chan* %15, %struct.gf100_gr_chan** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.gf100_gr_object* @kzalloc(i32 16, i32 %16)
  store %struct.gf100_gr_object* %17, %struct.gf100_gr_object** %11, align 8
  %18 = icmp ne %struct.gf100_gr_object* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.gf100_gr_object*, %struct.gf100_gr_object** %11, align 8
  %24 = getelementptr inbounds %struct.gf100_gr_object, %struct.gf100_gr_object* %23, i32 0, i32 1
  %25 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %24, %struct.nvkm_object** %25, align 8
  %26 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %27 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %33 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32* [ %35, %31 ], [ @gf100_gr_object_func, %36 ]
  %39 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %40 = load %struct.gf100_gr_object*, %struct.gf100_gr_object** %11, align 8
  %41 = getelementptr inbounds %struct.gf100_gr_object, %struct.gf100_gr_object* %40, i32 0, i32 1
  %42 = call i32 @nvkm_object_ctor(i32* %38, %struct.nvkm_oclass* %39, %struct.nvkm_object* %41)
  %43 = load %struct.gf100_gr_chan*, %struct.gf100_gr_chan** %10, align 8
  %44 = load %struct.gf100_gr_object*, %struct.gf100_gr_object** %11, align 8
  %45 = getelementptr inbounds %struct.gf100_gr_object, %struct.gf100_gr_object* %44, i32 0, i32 0
  store %struct.gf100_gr_chan* %43, %struct.gf100_gr_chan** %45, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.gf100_gr_chan* @gf100_gr_chan(i32) #1

declare dso_local %struct.gf100_gr_object* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
