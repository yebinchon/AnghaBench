; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_base.c_nvkm_bar_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_bar = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_bar*)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_bar_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_bar_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_bar*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %4 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %5 = call %struct.nvkm_bar* @nvkm_bar(%struct.nvkm_subdev* %4)
  store %struct.nvkm_bar* %5, %struct.nvkm_bar** %3, align 8
  %6 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %10, align 8
  %12 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %13 = call i32 %11(%struct.nvkm_bar* %12)
  %14 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %18, align 8
  %20 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %21 = call i32 %19(%struct.nvkm_bar* %20)
  %22 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %25, align 8
  %27 = icmp ne i32 (%struct.nvkm_bar*)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %30 = getelementptr inbounds %struct.nvkm_bar, %struct.nvkm_bar* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.nvkm_bar*)*, i32 (%struct.nvkm_bar*)** %32, align 8
  %34 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %35 = call i32 %33(%struct.nvkm_bar* %34)
  br label %36

36:                                               ; preds = %28, %1
  ret i32 0
}

declare dso_local %struct.nvkm_bar* @nvkm_bar(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
