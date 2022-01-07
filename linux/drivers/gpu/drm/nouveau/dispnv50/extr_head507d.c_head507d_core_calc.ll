; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_core_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_core_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_13__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, i32, i32, i64, i64 }
%struct.nv50_disp = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head507d_core_calc(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_disp*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %6 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nv50_disp* @nv50_disp(i32 %10)
  store %struct.nv50_disp* %11, %struct.nv50_disp** %5, align 8
  %12 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %13 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %19 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  br i1 %16, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %23 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %27 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 12
  store i64 %25, i64* %28, align 8
  %29 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %34 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 11
  store i64 %32, i64* %35, align 8
  %36 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %37 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %41 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %44 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %48 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 10
  store i32 %46, i32* %49, align 4
  br label %93

50:                                               ; preds = %2
  %51 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %52 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %58 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  br i1 %55, label %69, label %60

60:                                               ; preds = %50
  %61 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %62 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %66 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = icmp ne i32 %64, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %60, %50
  %70 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %71 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 12
  store i64 0, i64* %72, align 8
  %73 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %74 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 11
  store i64 0, i64* %75, align 8
  %76 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %82 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %85 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %90 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 10
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %69, %60
  br label %93

93:                                               ; preds = %92, %21
  %94 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %95 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %102 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 9
  store i32 %100, i32* %103, align 8
  %104 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %105 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 8
  store i64 0, i64* %106, align 8
  %107 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %108 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  store i32 207, i32* %109, align 4
  %110 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %111 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 7
  store i64 0, i64* %112, align 8
  %113 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %114 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %117 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %120 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  store i64 0, i64* %121, align 8
  %122 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %123 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ALIGN(i32 %125, i32 64)
  %127 = mul nsw i32 %126, 4
  %128 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %129 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32 %127, i32* %130, align 4
  ret void
}

declare dso_local %struct.nv50_disp* @nv50_disp(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
