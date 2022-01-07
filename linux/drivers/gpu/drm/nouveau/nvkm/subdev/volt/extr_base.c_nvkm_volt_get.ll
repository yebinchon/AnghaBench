; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { {}*, {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_volt_get(%struct.nvkm_volt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_volt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %3, align 8
  %6 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.nvkm_volt*)**
  %11 = load i32 (%struct.nvkm_volt*)*, i32 (%struct.nvkm_volt*)** %10, align 8
  %12 = icmp ne i32 (%struct.nvkm_volt*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.nvkm_volt*)**
  %19 = load i32 (%struct.nvkm_volt*)*, i32 (%struct.nvkm_volt*)** %18, align 8
  %20 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %21 = call i32 %19(%struct.nvkm_volt* %20)
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %1
  %23 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %24 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = bitcast {}** %26 to i32 (%struct.nvkm_volt*)**
  %28 = load i32 (%struct.nvkm_volt*)*, i32 (%struct.nvkm_volt*)** %27, align 8
  %29 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %30 = call i32 %28(%struct.nvkm_volt* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %37 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %40
  %52 = load %struct.nvkm_volt*, %struct.nvkm_volt** %3, align 8
  %53 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %34

64:                                               ; preds = %34
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %22
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %51, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
