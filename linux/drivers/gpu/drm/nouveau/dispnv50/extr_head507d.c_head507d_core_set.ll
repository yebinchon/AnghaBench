; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_core_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_core_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nv50_dmac }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_head*, %struct.nv50_head_atom*)* @head507d_core_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @head507d_core_set(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %7 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_16__* @nv50_disp(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store %struct.nv50_dmac* %15, %struct.nv50_dmac** %5, align 8
  %16 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %17 = call i32* @evo_wait(%struct.nv50_dmac* %16, i32 9)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %138

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1024
  %26 = add nsw i32 2144, %25
  %27 = call i32 @evo_mthd(i32* %20, i32 %26, i32 1)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = call i32 @evo_data(i32* %28, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %37 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 1024
  %41 = add nsw i32 2152, %40
  %42 = call i32 @evo_mthd(i32* %35, i32 %41, i32 4)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %45 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %50 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %48, %52
  %54 = call i32 @evo_data(i32* %43, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %57 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 20
  %61 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %62 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %69 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %67, %72
  %74 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %75 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %73, %77
  %79 = call i32 @evo_data(i32* %55, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %82 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %87 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %85, %90
  %92 = call i32 @evo_data(i32* %80, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %95 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @evo_data(i32* %93, i32 %97)
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %101 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, 1024
  %105 = add nsw i32 2240, %104
  %106 = call i32 @evo_mthd(i32* %99, i32 %105, i32 1)
  %107 = load i32*, i32** %6, align 8
  %108 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %109 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 16
  %113 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %114 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 11
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %112, %116
  %118 = call i32 @evo_data(i32* %107, i32 %117)
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %121 = call i32 @evo_kick(i32* %119, %struct.nv50_dmac* %120)
  %122 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %123 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %127 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %130 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %136 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  store i32 %134, i32* %137, align 8
  br label %138

138:                                              ; preds = %19, %2
  ret void
}

declare dso_local %struct.TYPE_16__* @nv50_disp(i32) #1

declare dso_local i32* @evo_wait(%struct.nv50_dmac*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.nv50_dmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
