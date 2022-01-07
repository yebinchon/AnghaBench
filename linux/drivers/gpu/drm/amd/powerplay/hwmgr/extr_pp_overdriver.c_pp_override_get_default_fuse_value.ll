; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_overdriver.c_pp_override_get_default_fuse_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_pp_overdriver.c_pp_override_get_default_fuse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phm_fuses_default = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@vega10_fuses_default = common dso_local global %struct.phm_fuses_default* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pp_override_get_default_fuse_value(i64 %0, %struct.phm_fuses_default* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.phm_fuses_default*, align 8
  %6 = alloca %struct.phm_fuses_default*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.phm_fuses_default* %1, %struct.phm_fuses_default** %5, align 8
  %8 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** @vega10_fuses_default, align 8
  store %struct.phm_fuses_default* %8, %struct.phm_fuses_default** %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %96, %2
  %10 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %10, i64 %11
  %13 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %18, i64 %19
  %21 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %95

24:                                               ; preds = %16
  %25 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %25, i64 %26
  %28 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %31 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %32, i64 %33
  %35 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %38 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %39, i64 %40
  %42 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %45 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %46, i64 %47
  %49 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %52 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %53, i64 %54
  %56 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %59 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %60, i64 %61
  %63 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %66 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %67, i64 %68
  %70 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %73 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %74, i64 %75
  %77 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %80 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %81, i64 %82
  %84 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %87 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %88, i64 %89
  %91 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.phm_fuses_default*, %struct.phm_fuses_default** %5, align 8
  %94 = getelementptr inbounds %struct.phm_fuses_default, %struct.phm_fuses_default* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %3, align 4
  br label %102

95:                                               ; preds = %16
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %7, align 8
  br label %9

99:                                               ; preds = %9
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %24
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
