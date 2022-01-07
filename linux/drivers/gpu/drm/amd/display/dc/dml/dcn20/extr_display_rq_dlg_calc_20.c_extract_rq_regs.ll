; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20.c_extract_rq_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_rq_dlg_calc_20.c_extract_rq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_mode_lib = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_25__, i64, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display_mode_lib*, %struct.TYPE_26__*, %struct.TYPE_15__*)* @extract_rq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extract_rq_regs(%struct.display_mode_lib* %0, %struct.TYPE_26__* %1, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %2) #0 {
  %4 = alloca %struct.display_mode_lib*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.display_mode_lib* %0, %struct.display_mode_lib** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %8 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %9 = getelementptr inbounds %struct.display_mode_lib, %struct.display_mode_lib* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 1024
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @extract_rq_sizing_regs(%struct.display_mode_lib* %13, %struct.TYPE_16__* %15, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @dml_log2(i32 %24)
  %26 = call i8* @dml_floor(i8* %25, i32 1)
  %27 = getelementptr i8, i8* %26, i64 -3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %3
  %35 = load %struct.display_mode_lib*, %struct.display_mode_lib** %4, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @extract_rq_sizing_regs(%struct.display_mode_lib* %35, %struct.TYPE_16__* %37, i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @dml_log2(i32 %46)
  %48 = call i8* @dml_floor(i8* %47, i32 1)
  %49 = getelementptr i8, i8* %48, i64 -3
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %34, %3
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @dml_log2(i32 %57)
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @dml_log2(i32 %65)
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  store i8* %66, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 32768
  br i1 %74, label %75, label %78

75:                                               ; preds = %53
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %81

78:                                               ; preds = %53
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  store i32 2, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sitofp i64 %95 to double
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sitofp i64 %100 to double
  %102 = fdiv double %96, %101
  %103 = fcmp ole double %102, 1.500000e+00
  br i1 %103, label %104, label %110

104:                                              ; preds = %91
  %105 = load i32, i32* %6, align 4
  %106 = uitofp i32 %105 to double
  %107 = fdiv double %106, 2.000000e+00
  %108 = fdiv double %107, 6.400000e+01
  %109 = fptoui double %108 to i32
  store i32 %109, i32* %7, align 4
  br label %119

110:                                              ; preds = %91
  %111 = load i32, i32* %6, align 4
  %112 = uitofp i32 %111 to double
  %113 = fmul double 2.000000e+00, %112
  %114 = fdiv double %113, 3.000000e+00
  %115 = fptoui double %114 to i32
  %116 = call double @dml_round_to_multiple(i32 %115, i32 256, i32 0)
  %117 = fdiv double %116, 6.400000e+01
  %118 = fptoui double %117 to i32
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %110, %104
  br label %120

120:                                              ; preds = %119, %81
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  ret void
}

declare dso_local i32 @extract_rq_sizing_regs(%struct.display_mode_lib*, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @dml_floor(i8*, i32) #1

declare dso_local i8* @dml_log2(i32) #1

declare dso_local double @dml_round_to_multiple(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
