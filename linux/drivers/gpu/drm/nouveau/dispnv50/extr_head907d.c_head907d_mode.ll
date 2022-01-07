; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nv50_head_atom = type { %struct.nv50_head_mode }
%struct.nv50_head_mode = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head907d_mode(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
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
  %20 = call i32* @evo_wait(%struct.nv50_dmac* %19, i32 14)
  store i32* %20, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %130

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %25 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 768
  %29 = add nsw i32 1040, %28
  %30 = call i32 @evo_mthd(i32* %23, i32 %29, i32 6)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @evo_data(i32* %31, i32 0)
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %35 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %40 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %38, %42
  %44 = call i32 @evo_data(i32* %33, i32 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %47 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 16
  %51 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %52 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %50, %54
  %56 = call i32 @evo_data(i32* %45, i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %59 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 16
  %63 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %64 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %62, %66
  %68 = call i32 @evo_data(i32* %57, i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %71 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 16
  %75 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %76 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %74, %78
  %80 = call i32 @evo_data(i32* %69, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %83 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 16
  %87 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %88 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %86, %90
  %92 = call i32 @evo_data(i32* %81, i32 %91)
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %95 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 768
  %99 = add nsw i32 1068, %98
  %100 = call i32 @evo_mthd(i32* %93, i32 %99, i32 2)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @evo_data(i32* %101, i32 0)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @evo_data(i32* %103, i32 -256)
  %105 = load i32*, i32** %7, align 8
  %106 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %107 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 768
  %111 = add nsw i32 1104, %110
  %112 = call i32 @evo_mthd(i32* %105, i32 %111, i32 3)
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %115 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 1000
  %118 = call i32 @evo_data(i32* %113, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @evo_data(i32* %119, i32 2097152)
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.nv50_head_mode*, %struct.nv50_head_mode** %6, align 8
  %123 = getelementptr inbounds %struct.nv50_head_mode, %struct.nv50_head_mode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 1000
  %126 = call i32 @evo_data(i32* %121, i32 %125)
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %129 = call i32 @evo_kick(i32* %127, %struct.nv50_dmac* %128)
  br label %130

130:                                              ; preds = %22, %2
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
