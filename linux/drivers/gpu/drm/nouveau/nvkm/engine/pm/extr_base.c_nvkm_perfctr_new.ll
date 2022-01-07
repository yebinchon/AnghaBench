; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfctr_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/pm/extr_base.c_nvkm_perfctr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_perfdom = type { i32, i32 }
%struct.nvkm_perfsig = type { i32 }
%struct.nvkm_perfctr = type { i32, i32, i32**, %struct.nvkm_perfsig**, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_perfdom*, i32, i32, %struct.nvkm_perfsig**, [8 x i32]*, i32, %struct.nvkm_perfctr**)* @nvkm_perfctr_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_perfctr_new(%struct.nvkm_perfdom* %0, i32 %1, i32 %2, %struct.nvkm_perfsig** %3, [8 x i32]* %4, i32 %5, %struct.nvkm_perfctr** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_perfdom*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvkm_perfsig**, align 8
  %13 = alloca [8 x i32]*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvkm_perfctr**, align 8
  %16 = alloca %struct.nvkm_perfctr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_perfdom* %0, %struct.nvkm_perfdom** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.nvkm_perfsig** %3, %struct.nvkm_perfsig*** %12, align 8
  store [8 x i32]* %4, [8 x i32]** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nvkm_perfctr** %6, %struct.nvkm_perfctr*** %15, align 8
  %19 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %9, align 8
  %20 = icmp ne %struct.nvkm_perfdom* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %107

24:                                               ; preds = %7
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.nvkm_perfctr* @kzalloc(i32 32, i32 %25)
  %27 = load %struct.nvkm_perfctr**, %struct.nvkm_perfctr*** %15, align 8
  store %struct.nvkm_perfctr* %26, %struct.nvkm_perfctr** %27, align 8
  store %struct.nvkm_perfctr* %26, %struct.nvkm_perfctr** %16, align 8
  %28 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %29 = icmp ne %struct.nvkm_perfctr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %107

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %36 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %39 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %42 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %98, %33
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %101

46:                                               ; preds = %43
  %47 = load %struct.nvkm_perfsig**, %struct.nvkm_perfsig*** %12, align 8
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %47, i64 %49
  %51 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %50, align 8
  %52 = icmp ne %struct.nvkm_perfsig* %51, null
  br i1 %52, label %53, label %97

53:                                               ; preds = %46
  %54 = load %struct.nvkm_perfsig**, %struct.nvkm_perfsig*** %12, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %54, i64 %56
  %58 = load %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %57, align 8
  %59 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %9, align 8
  %60 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds %struct.nvkm_perfsig, %struct.nvkm_perfsig* %58, i64 %63
  %65 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %66 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %65, i32 0, i32 3
  %67 = load %struct.nvkm_perfsig**, %struct.nvkm_perfsig*** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nvkm_perfsig*, %struct.nvkm_perfsig** %67, i64 %69
  store %struct.nvkm_perfsig* %64, %struct.nvkm_perfsig** %70, align 8
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %93, %53
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = load [8 x i32]*, [8 x i32]** %13, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %75, i64 %77
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %78, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %84 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %82, i32* %92, align 4
  br label %93

93:                                               ; preds = %74
  %94 = load i32, i32* %18, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %18, align 4
  br label %71

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96, %46
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %43

101:                                              ; preds = %43
  %102 = load %struct.nvkm_perfctr*, %struct.nvkm_perfctr** %16, align 8
  %103 = getelementptr inbounds %struct.nvkm_perfctr, %struct.nvkm_perfctr* %102, i32 0, i32 1
  %104 = load %struct.nvkm_perfdom*, %struct.nvkm_perfdom** %9, align 8
  %105 = getelementptr inbounds %struct.nvkm_perfdom, %struct.nvkm_perfdom* %104, i32 0, i32 1
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %101, %30, %21
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local %struct.nvkm_perfctr* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
