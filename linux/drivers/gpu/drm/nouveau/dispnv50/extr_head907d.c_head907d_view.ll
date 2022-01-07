; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_view.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head907d.c_head907d_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head907d_view(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
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
  %17 = call i32* @evo_wait(%struct.nv50_dmac* %16, i32 8)
  store i32* %17, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %97

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 768
  %26 = add nsw i32 1172, %25
  %27 = call i32 @evo_mthd(i32* %20, i32 %26, i32 1)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @evo_data(i32* %28, i32 0)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %32 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 768
  %36 = add nsw i32 1208, %35
  %37 = call i32 @evo_mthd(i32* %30, i32 %36, i32 1)
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %40 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %45 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %43, %47
  %49 = call i32 @evo_data(i32* %38, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %52 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 768
  %56 = add nsw i32 1216, %55
  %57 = call i32 @evo_mthd(i32* %50, i32 %56, i32 3)
  %58 = load i32*, i32** %6, align 8
  %59 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %60 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %65 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %63, %67
  %69 = call i32 @evo_data(i32* %58, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %72 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %75, %79
  %81 = call i32 @evo_data(i32* %70, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %84 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %89 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %87, %91
  %93 = call i32 @evo_data(i32* %82, i32 %92)
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %96 = call i32 @evo_kick(i32* %94, %struct.nv50_dmac* %95)
  br label %97

97:                                               ; preds = %19, %2
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
