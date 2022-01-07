; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bar/extr_gf100.c_gf100_bar_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.nvkm_bar = type { i32 }
%struct.gf100_bar = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@gf100_bar_oneinit.bar1_lock = internal global %struct.lock_class_key zeroinitializer, align 4
@gf100_bar_oneinit.bar2_lock = internal global %struct.lock_class_key zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_bar_oneinit(%struct.nvkm_bar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_bar*, align 8
  %4 = alloca %struct.gf100_bar*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_bar* %0, %struct.nvkm_bar** %3, align 8
  %6 = load %struct.nvkm_bar*, %struct.nvkm_bar** %3, align 8
  %7 = call %struct.gf100_bar* @gf100_bar(%struct.nvkm_bar* %6)
  store %struct.gf100_bar* %7, %struct.gf100_bar** %4, align 8
  %8 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %9 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %18 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %19 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = call i32 @gf100_bar_oneinit_bar(%struct.gf100_bar* %17, i32* %21, %struct.lock_class_key* @gf100_bar_oneinit.bar2_lock, i32 3)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %50

27:                                               ; preds = %16
  %28 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %29 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %33 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nvkm_bar_bar2_init(i32 %36)
  br label %38

38:                                               ; preds = %27, %1
  %39 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %40 = load %struct.gf100_bar*, %struct.gf100_bar** %4, align 8
  %41 = getelementptr inbounds %struct.gf100_bar, %struct.gf100_bar* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i32 @gf100_bar_oneinit_bar(%struct.gf100_bar* %39, i32* %43, %struct.lock_class_key* @gf100_bar_oneinit.bar1_lock, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %47, %25
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.gf100_bar* @gf100_bar(%struct.nvkm_bar*) #1

declare dso_local i32 @gf100_bar_oneinit_bar(%struct.gf100_bar*, i32*, %struct.lock_class_key*, i32) #1

declare dso_local i32 @nvkm_bar_bar2_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
