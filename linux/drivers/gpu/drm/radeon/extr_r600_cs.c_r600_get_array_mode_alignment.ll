; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_get_array_mode_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_get_array_mode_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.array_mode_checker = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.array_mode_checker*, i32*, i32*, i32*, i32*)* @r600_get_array_mode_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_get_array_mode_alignment(%struct.array_mode_checker* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.array_mode_checker*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.array_mode_checker* %0, %struct.array_mode_checker** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 8, i32* %12, align 4
  store i32 8, i32* %13, align 4
  %18 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %19 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %22 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %28 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %32 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %16, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %41 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %136 [
    i32 128, label %43
    i32 129, label %48
    i32 131, label %65
    i32 130, label %90
  ]

43:                                               ; preds = %5
  %44 = load i32*, i32** %8, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 1, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 1, i32* %46, align 4
  %47 = load i32*, i32** %11, align 8
  store i32 1, i32* %47, align 4
  br label %139

48:                                               ; preds = %5
  %49 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %50 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %53 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %51, %54
  %56 = call i8* @max(i32 64, i32 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 1, i32* %59, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 1, i32* %60, align 4
  %61 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %62 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  br label %139

65:                                               ; preds = %5
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %68 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %72 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %76 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = sdiv i32 %69, %78
  %80 = call i8* @max(i32 %66, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 1, i32* %85, align 4
  %86 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %87 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  br label %139

90:                                               ; preds = %5
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %95 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %98 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %102 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %105 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %103, %106
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sdiv i32 %100, %109
  %111 = call i8* @max(i32 %93, i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %8, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = mul nsw i32 %114, %115
  %117 = load i32*, i32** %9, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %10, align 8
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %123 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %125, %127
  %129 = load %struct.array_mode_checker*, %struct.array_mode_checker** %7, align 8
  %130 = getelementptr inbounds %struct.array_mode_checker, %struct.array_mode_checker* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %128, %131
  %133 = call i8* @max(i32 %119, i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %5
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %140

139:                                              ; preds = %90, %65, %48, %43
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %136
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
