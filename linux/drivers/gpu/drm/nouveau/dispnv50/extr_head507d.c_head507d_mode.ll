; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nv50_head_atom = type { %struct.nv50_head_mode }
%struct.nv50_head_mode = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head507d_mode(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca %struct.nv50_head_mode*, align 8
  %7 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %8 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_12__* @nv50_disp(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.nv50_dmac* %16, %struct.nv50_dmac** %5, align 8
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 0
  store %struct.nv50_head_mode* %18, %struct.nv50_head_mode** %6, align 8
  %19 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %20 = call i32* @evo_wait(%struct.nv50_dmac* %19, i32 13)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %135

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %25 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1024
  %29 = add nsw i32 2052, %28
  %30 = call i32 @evo_mthd(i32* %23, i32 %29, i32 2)
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %33 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 8388608, %34
  %36 = call i32 @evo_data(i32* %31, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %39 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 0
  %44 = call i32 @evo_data(i32* %37, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %47 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 1024
  %51 = add nsw i32 2064, %50
  %52 = call i32 @evo_mthd(i32* %45, i32 %51, i32 7)
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @evo_data(i32* %53, i32 0)
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %57 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %62 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %60, %64
  %66 = call i32 @evo_data(i32* %55, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %69 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %74 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %72, %76
  %78 = call i32 @evo_data(i32* %67, i32 %77)
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %81 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 16
  %85 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %86 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %84, %88
  %90 = call i32 @evo_data(i32* %79, i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %93 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = shl i32 %95, 16
  %97 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %98 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %96, %100
  %102 = call i32 @evo_data(i32* %91, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %105 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 16
  %109 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %110 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %108, %112
  %114 = call i32 @evo_data(i32* %103, i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %117 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @evo_data(i32* %115, i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %124 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 1024
  %128 = add nsw i32 2092, %127
  %129 = call i32 @evo_mthd(i32* %122, i32 %128, i32 1)
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @evo_data(i32* %130, i32 0)
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %134 = call i32 @evo_kick(i32* %132, %struct.nv50_dmac* %133)
  br label %135

135:                                              ; preds = %22, %2
  ret void
}

declare dso_local %struct.TYPE_12__* @nv50_disp(i32) #1

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
