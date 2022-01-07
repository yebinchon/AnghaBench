; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_pm_oclass_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_pm_oclass_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_pm = type { %struct.TYPE_4__, %struct.nvkm_object* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_device*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**)* @nvkm_pm_oclass_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_pm_oclass_new(%struct.nvkm_device* %0, %struct.nvkm_oclass* %1, i8* %2, i32 %3, %struct.nvkm_object** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_object**, align 8
  %12 = alloca %struct.nvkm_pm*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.nvkm_object** %4, %struct.nvkm_object*** %11, align 8
  %14 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %15 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nvkm_pm* @nvkm_pm(i32 %16)
  store %struct.nvkm_pm* %17, %struct.nvkm_pm** %12, align 8
  %18 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %19 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  %23 = call i32 @nvkm_perfmon_new(%struct.nvkm_pm* %18, %struct.nvkm_oclass* %19, i8* %20, i32 %21, %struct.nvkm_object** %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %6, align 4
  br label %62

28:                                               ; preds = %5
  %29 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %30 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %35 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %34, i32 0, i32 1
  %36 = load %struct.nvkm_object*, %struct.nvkm_object** %35, align 8
  %37 = icmp eq %struct.nvkm_object* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  %40 = load %struct.nvkm_object*, %struct.nvkm_object** %39, align 8
  %41 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %42 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %41, i32 0, i32 1
  store %struct.nvkm_object* %40, %struct.nvkm_object** %42, align 8
  br label %43

43:                                               ; preds = %38, %28
  %44 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %45 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %44, i32 0, i32 1
  %46 = load %struct.nvkm_object*, %struct.nvkm_object** %45, align 8
  %47 = load %struct.nvkm_object**, %struct.nvkm_object*** %11, align 8
  %48 = load %struct.nvkm_object*, %struct.nvkm_object** %47, align 8
  %49 = icmp eq %struct.nvkm_object* %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  br label %54

54:                                               ; preds = %51, %50
  %55 = phi i32 [ 0, %50 ], [ %53, %51 ]
  store i32 %55, i32* %13, align 4
  %56 = load %struct.nvkm_pm*, %struct.nvkm_pm** %12, align 8
  %57 = getelementptr inbounds %struct.nvkm_pm, %struct.nvkm_pm* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %26
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local %struct.nvkm_pm* @nvkm_pm(i32) #1

declare dso_local i32 @nvkm_perfmon_new(%struct.nvkm_pm*, %struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
