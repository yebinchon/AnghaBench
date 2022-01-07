; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_sclass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_oproxy.c_nvkm_oproxy_sclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_oclass = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)* }
%struct.nvkm_oproxy = type { %struct.TYPE_4__* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* @nvkm_oproxy_sclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_oproxy_sclass(%struct.nvkm_object* %0, i32 %1, %struct.nvkm_oclass* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_oclass*, align 8
  %8 = alloca %struct.nvkm_oproxy*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %7, align 8
  %9 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %10 = call %struct.nvkm_oproxy* @nvkm_oproxy(%struct.nvkm_object* %9)
  store %struct.nvkm_oproxy* %10, %struct.nvkm_oproxy** %8, align 8
  %11 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %8, align 8
  %12 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %15 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %14, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %15, align 8
  %16 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %8, align 8
  %17 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)*, i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)** %21, align 8
  %23 = icmp ne i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %8, align 8
  %29 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)*, i32 (%struct.TYPE_4__*, i32, %struct.nvkm_oclass*)** %33, align 8
  %35 = load %struct.nvkm_oproxy*, %struct.nvkm_oproxy** %8, align 8
  %36 = getelementptr inbounds %struct.nvkm_oproxy, %struct.nvkm_oproxy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %7, align 8
  %40 = call i32 %34(%struct.TYPE_4__* %37, i32 %38, %struct.nvkm_oclass* %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.nvkm_oproxy* @nvkm_oproxy(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
