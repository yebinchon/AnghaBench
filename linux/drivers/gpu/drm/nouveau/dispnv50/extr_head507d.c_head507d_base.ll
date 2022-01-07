; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nv50_dmac = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.nv50_dmac }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @head507d_base(%struct.nv50_head* %0, %struct.nv50_head_atom* %1) #0 {
  %3 = alloca %struct.nv50_head*, align 8
  %4 = alloca %struct.nv50_head_atom*, align 8
  %5 = alloca %struct.nv50_dmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %3, align 8
  store %struct.nv50_head_atom* %1, %struct.nv50_head_atom** %4, align 8
  %8 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_10__* @nv50_disp(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.nv50_dmac* %16, %struct.nv50_dmac** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %4, align 8
  %24 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %38 [
    i32 8, label %27
    i32 4, label %30
    i32 2, label %33
    i32 1, label %36
  ]

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 1280
  store i32 %29, i32* %6, align 4
  br label %40

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 768
  store i32 %32, i32* %6, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 256
  store i32 %35, i32* %6, align 4
  br label %40

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %22
  %39 = call i32 @WARN_ON(i32 1)
  br label %40

40:                                               ; preds = %38, %36, %33, %30, %27
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %2
  %44 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %45 = call i32* @evo_wait(%struct.nv50_dmac* %44, i32 2)
  store i32* %45, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.nv50_head*, %struct.nv50_head** %3, align 8
  %50 = getelementptr inbounds %struct.nv50_head, %struct.nv50_head* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 1024
  %54 = add nsw i32 2304, %53
  %55 = call i32 @evo_mthd(i32* %48, i32 %54, i32 1)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @evo_data(i32* %56, i32 %57)
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.nv50_dmac*, %struct.nv50_dmac** %5, align 8
  %61 = call i32 @evo_kick(i32* %59, %struct.nv50_dmac* %60)
  br label %62

62:                                               ; preds = %47, %43
  ret void
}

declare dso_local %struct.TYPE_10__* @nv50_disp(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

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
