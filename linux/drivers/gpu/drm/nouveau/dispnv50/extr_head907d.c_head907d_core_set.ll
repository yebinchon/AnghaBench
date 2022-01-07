; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_core_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_core_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head907d_core_set(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %7 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @nv50_disp(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.nv50_dmac* %15, %struct.nv50_dmac** %5, align 8
  %16 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %17 = call i32* @evo_wait(%struct.nv50_dmac* %16, i32 9)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %116

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 768
  %26 = add nsw i32 1120, %25
  %27 = call i32 @evo_mthd(i32* %20, i32 %26, i32 1)
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = call i32 @evo_data(i32* %28, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %37 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 768
  %41 = add nsw i32 1128, %40
  %42 = call i32 @evo_mthd(i32* %35, i32 %41, i32 4)
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %45 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %50 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %48, %52
  %54 = call i32 @evo_data(i32* %43, i32 %53)
  %55 = load i32*, i32** %6, align 8
  %56 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %57 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 24
  %61 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %62 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = shl i32 %65, 8
  %67 = or i32 %60, %66
  %68 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %69 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = or i32 %67, %72
  %74 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %75 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %73, %77
  %79 = call i32 @evo_data(i32* %55, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %82 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = call i32 @evo_data(i32* %80, i32 %85)
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %89 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @evo_data(i32* %87, i32 %91)
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %95 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %97, 768
  %99 = add nsw i32 1200, %98
  %100 = call i32 @evo_mthd(i32* %93, i32 %99, i32 1)
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %103 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 16
  %107 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %108 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %106, %110
  %112 = call i32 @evo_data(i32* %101, i32 %111)
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %115 = call i32 @evo_kick(i32* %113, %struct.nv50_dmac* %114)
  br label %116

116:                                              ; preds = %19, %2
  ret void
}

declare dso_local %struct.TYPE_10__* @nv50_disp(i32) #1

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
