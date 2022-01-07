; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nv50_instobj = type { %struct.TYPE_10__, %struct.TYPE_11__, i64, i32, %struct.nv50_instmem* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { i32 }
%struct.nv50_instmem = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_memory*)* @nv50_instobj_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_instobj_release(%struct.nvkm_memory* %0) #0 {
  %2 = alloca %struct.nvkm_memory*, align 8
  %3 = alloca %struct.nv50_instobj*, align 8
  %4 = alloca %struct.nv50_instmem*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %2, align 8
  %6 = load %struct.nvkm_memory*, %struct.nvkm_memory** %2, align 8
  %7 = call %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory* %6)
  store %struct.nv50_instobj* %7, %struct.nv50_instobj** %3, align 8
  %8 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %9 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %8, i32 0, i32 4
  %10 = load %struct.nv50_instmem*, %struct.nv50_instmem** %9, align 8
  store %struct.nv50_instmem* %10, %struct.nv50_instmem** %4, align 8
  %11 = load %struct.nv50_instmem*, %struct.nv50_instmem** %4, align 8
  %12 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %5, align 8
  %14 = call i32 (...) @wmb()
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nvkm_bar_flush(i32 %19)
  %21 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %21, i32 0, i32 3
  %23 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %23, i32 0, i32 0
  %25 = call i64 @refcount_dec_and_mutex_lock(i32* %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %1
  %28 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %29 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %36 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %41 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %40, i32 0, i32 1
  %42 = call i32 @list_empty(%struct.TYPE_11__* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %48 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %47, i32 0, i32 1
  %49 = load %struct.nv50_instmem*, %struct.nv50_instmem** %4, align 8
  %50 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(%struct.TYPE_11__* %48, i32* %50)
  br label %52

52:                                               ; preds = %39, %34, %27
  %53 = load %struct.nv50_instobj*, %struct.nv50_instobj** %3, align 8
  %54 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %58 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  br label %60

60:                                               ; preds = %52, %1
  ret void
}

declare dso_local %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @nvkm_bar_flush(i32) #1

declare dso_local i64 @refcount_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_11__*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
