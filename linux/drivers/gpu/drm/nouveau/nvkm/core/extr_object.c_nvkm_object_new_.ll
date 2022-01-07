; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_object.c_nvkm_object_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_object.c_nvkm_object_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object_func = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_object_new_(%struct.nvkm_object_func* %0, %struct.nvkm_oclass* %1, i8* %2, i64 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_object_func*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nvkm_object**, align 8
  store %struct.nvkm_object_func* %0, %struct.nvkm_object_func** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %12 = load i64, i64* %10, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %5
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nvkm_object* @kzalloc(i32 4, i32 %15)
  %17 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  store %struct.nvkm_object* %16, %struct.nvkm_object** %17, align 8
  %18 = icmp ne %struct.nvkm_object* %16, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.nvkm_object_func*, %struct.nvkm_object_func** %7, align 8
  %24 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %25 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  %26 = load %struct.nvkm_object*, %struct.nvkm_object** %25, align 8
  %27 = call i32 @nvkm_object_ctor(%struct.nvkm_object_func* %23, %struct.nvkm_oclass* %24, %struct.nvkm_object* %26)
  store i32 0, i32* %6, align 4
  br label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %22, %19
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local %struct.nvkm_object* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(%struct.nvkm_object_func*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
