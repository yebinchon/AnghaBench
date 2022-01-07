; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_set_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_set_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_volt*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_volt_set_id(%struct.nvkm_volt* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_volt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %16 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.nvkm_volt*, i32, i32)*, i32 (%struct.nvkm_volt*, i32, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.nvkm_volt*, i32, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nvkm_volt*, i32, i32)*, i32 (%struct.nvkm_volt*, i32, i32)** %25, align 8
  %27 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 %26(%struct.nvkm_volt* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %79

31:                                               ; preds = %5
  %32 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @nvkm_volt_map(%struct.nvkm_volt* %32, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %40 = call i32 @nvkm_volt_get(%struct.nvkm_volt* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %11, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %56, %49, %43, %38
  %61 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @nvkm_volt_map(%struct.nvkm_volt* %61, i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @max(i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.nvkm_volt*, %struct.nvkm_volt** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @nvkm_volt_set(%struct.nvkm_volt* %72, i32 %73)
  store i32 %74, i32* %12, align 4
  br label %76

75:                                               ; preds = %56, %53
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %31
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %21
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @nvkm_volt_map(%struct.nvkm_volt*, i32, i32) #1

declare dso_local i32 @nvkm_volt_get(%struct.nvkm_volt*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @nvkm_volt_set(%struct.nvkm_volt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
