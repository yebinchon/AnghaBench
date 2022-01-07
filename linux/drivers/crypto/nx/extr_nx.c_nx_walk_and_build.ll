; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_walk_and_build.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/nx/extr_nx.c_nx_walk_and_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nx_sg = type { i32 }
%struct.scatterlist = type { i32 }
%struct.scatter_walk = type { %struct.scatterlist* }

@SCATTERWALK_FROM_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nx_sg* @nx_walk_and_build(%struct.nx_sg* %0, i32 %1, %struct.scatterlist* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.nx_sg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.scatter_walk, align 8
  %12 = alloca %struct.nx_sg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.nx_sg* %0, %struct.nx_sg** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  store %struct.nx_sg* %17, %struct.nx_sg** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %31, %5
  %21 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %22 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %14, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %14, align 4
  %37 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %38 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %37)
  store %struct.scatterlist* %38, %struct.scatterlist** %8, align 8
  br label %20

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub i32 %40, %41
  %43 = call i32 @scatterwalk_advance(%struct.scatter_walk* %11, i32 %42)
  br label %44

44:                                               ; preds = %71, %39
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %49 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %50 = ptrtoint %struct.nx_sg* %48 to i64
  %51 = ptrtoint %struct.nx_sg* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br label %57

57:                                               ; preds = %47, %44
  %58 = phi i1 [ false, %44 ], [ %56, %47 ]
  br i1 %58, label %59, label %96

59:                                               ; preds = %57
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %11, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %11, i32 0, i32 0
  %66 = load %struct.scatterlist*, %struct.scatterlist** %65, align 8
  %67 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %66)
  %68 = call i32 @scatterwalk_start(%struct.scatter_walk* %11, %struct.scatterlist* %67)
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @scatterwalk_clamp(%struct.scatter_walk* %11, i32 %69)
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %64, %59
  %72 = call i8* @scatterwalk_map(%struct.scatter_walk* %11)
  store i8* %72, i8** %16, align 8
  %73 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  %78 = load %struct.nx_sg*, %struct.nx_sg** %6, align 8
  %79 = ptrtoint %struct.nx_sg* %77 to i64
  %80 = ptrtoint %struct.nx_sg* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 4
  %83 = sub nsw i64 %76, %82
  %84 = trunc i64 %83 to i32
  %85 = call %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg* %73, i8* %74, i32* %13, i32 %84)
  store %struct.nx_sg* %85, %struct.nx_sg** %12, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i8*, i8** %16, align 8
  %90 = call i32 @scatterwalk_unmap(i8* %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @scatterwalk_advance(%struct.scatter_walk* %11, i32 %91)
  %93 = load i32, i32* @SCATTERWALK_FROM_SG, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @scatterwalk_done(%struct.scatter_walk* %11, i32 %93, i32 %94)
  br label %44

96:                                               ; preds = %57
  %97 = load i32, i32* %15, align 4
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load %struct.nx_sg*, %struct.nx_sg** %12, align 8
  ret %struct.nx_sg* %101
}

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, %struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i32) #1

declare dso_local i32 @scatterwalk_clamp(%struct.scatter_walk*, i32) #1

declare dso_local i8* @scatterwalk_map(%struct.scatter_walk*) #1

declare dso_local %struct.nx_sg* @nx_build_sg_list(%struct.nx_sg*, i8*, i32*, i32) #1

declare dso_local i32 @scatterwalk_unmap(i8*) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
