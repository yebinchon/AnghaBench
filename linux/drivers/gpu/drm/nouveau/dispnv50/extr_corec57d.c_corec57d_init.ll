; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_corec57d.c_corec57d_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_corec57d.c_corec57d_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_core = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_core*)* @corec57d_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @corec57d_init(%struct.nv50_core* %0) #0 {
  %2 = alloca %struct.nv50_core*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.nv50_core* %0, %struct.nv50_core** %2, align 8
  store i32 8, i32* %3, align 4
  %6 = load %struct.nv50_core*, %struct.nv50_core** %2, align 8
  %7 = getelementptr inbounds %struct.nv50_core, %struct.nv50_core* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(%struct.TYPE_5__* %7, i32 52)
  store i32* %8, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 520, i32 1)
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.nv50_core*, %struct.nv50_core** %2, align 8
  %15 = getelementptr inbounds %struct.nv50_core, %struct.nv50_core* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @evo_data(i32* %13, i32 %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %44, %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 128
  %27 = add nsw i32 4096, %26
  %28 = call i32 @evo_mthd(i32* %24, i32 %27, i32 3)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 1
  %32 = call i32 @evo_data(i32* %29, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @evo_data(i32* %33, i32 15)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @evo_data(i32* %35, i32 0)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 128
  %40 = add nsw i32 4112, %39
  %41 = call i32 @evo_mthd(i32* %37, i32 %40, i32 1)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @evo_data(i32* %42, i32 1146879)
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @evo_mthd(i32* %48, i32 512, i32 1)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @evo_data(i32* %50, i32 1)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.nv50_core*, %struct.nv50_core** %2, align 8
  %54 = getelementptr inbounds %struct.nv50_core, %struct.nv50_core* %53, i32 0, i32 0
  %55 = call i32 @evo_kick(i32* %52, %struct.TYPE_5__* %54)
  br label %56

56:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32* @evo_wait(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
