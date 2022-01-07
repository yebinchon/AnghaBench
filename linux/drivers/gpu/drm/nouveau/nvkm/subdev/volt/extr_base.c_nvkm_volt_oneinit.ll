; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_volt = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_volt*)* }

@.str = private unnamed_addr constant [11 x i8] c"speedo %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_volt_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_volt_oneinit(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_volt*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %6 = call %struct.nvkm_volt* @nvkm_volt(%struct.nvkm_subdev* %5)
  store %struct.nvkm_volt* %6, %struct.nvkm_volt** %4, align 8
  %7 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %8 = call i64 @nvkm_volt_speedo_read(%struct.nvkm_volt* %7)
  %9 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %16, i32 0, i32 2
  %18 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @nvkm_debug(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.nvkm_volt*)*, i32 (%struct.nvkm_volt*)** %26, align 8
  %28 = icmp ne i32 (%struct.nvkm_volt*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %31 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.nvkm_volt*)*, i32 (%struct.nvkm_volt*)** %33, align 8
  %35 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %36 = call i32 %34(%struct.nvkm_volt* %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.nvkm_volt* @nvkm_volt(%struct.nvkm_subdev*) #1

declare dso_local i64 @nvkm_volt_speedo_read(%struct.nvkm_volt*) #1

declare dso_local i32 @nvkm_debug(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
