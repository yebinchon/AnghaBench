; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_volt = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.nvkm_subdev }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { {}*, {}* }
%struct.nvkm_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"couldn't set %iuv\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"set req %duv to %duv: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_volt*, i32)* @nvkm_volt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_volt_set(%struct.nvkm_volt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_volt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_volt* %0, %struct.nvkm_volt** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %12, i32 0, i32 4
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %19 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %20 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.nvkm_volt*, i32)**
  %24 = load i32 (%struct.nvkm_volt*, i32)*, i32 (%struct.nvkm_volt*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.nvkm_volt*, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (%struct.nvkm_volt*, i32)**
  %32 = load i32 (%struct.nvkm_volt*, i32)*, i32 (%struct.nvkm_volt*, i32)** %31, align 8
  %33 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.nvkm_volt* %33, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %109

36:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %68, %36
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %40 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  %44 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %45 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %43
  br label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %71

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %37

71:                                               ; preds = %66, %37
  %72 = load i32, i32* %10, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @nvkm_error(%struct.nvkm_subdev* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %109

79:                                               ; preds = %71
  %80 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %81 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = bitcast {}** %83 to i32 (%struct.nvkm_volt*, i32)**
  %85 = load i32 (%struct.nvkm_volt*, i32)*, i32 (%struct.nvkm_volt*, i32)** %84, align 8
  %86 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %87 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %88 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %85(%struct.nvkm_volt* %86, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %6, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %99 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @nvkm_debug(%struct.nvkm_subdev* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32 %105, i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %79, %74, %26
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
