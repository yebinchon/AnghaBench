; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_wr32_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_wr32_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nv50_instobj = type { i32, %struct.nv50_instmem* }
%struct.nv50_instmem = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_memory*, i32, i32)* @nv50_instobj_wr32_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_instobj_wr32_slow(%struct.nvkm_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv50_instobj*, align 8
  %8 = alloca %struct.nv50_instmem*, align 8
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %14 = call %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory* %13)
  store %struct.nv50_instobj* %14, %struct.nv50_instobj** %7, align 8
  %15 = load %struct.nv50_instobj*, %struct.nv50_instobj** %7, align 8
  %16 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %15, i32 0, i32 1
  %17 = load %struct.nv50_instmem*, %struct.nv50_instmem** %16, align 8
  store %struct.nv50_instmem* %17, %struct.nv50_instmem** %8, align 8
  %18 = load %struct.nv50_instmem*, %struct.nv50_instmem** %8, align 8
  %19 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %9, align 8
  %23 = load %struct.nv50_instobj*, %struct.nv50_instobj** %7, align 8
  %24 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @nvkm_memory_addr(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 17592184995840
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load %struct.nv50_instobj*, %struct.nv50_instobj** %7, align 8
  %33 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @nvkm_memory_addr(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = and i64 %38, 1048575
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load %struct.nv50_instmem*, %struct.nv50_instmem** %8, align 8
  %42 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.nv50_instmem*, %struct.nv50_instmem** %8, align 8
  %47 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %3
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 16
  %58 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 5888, i32 %57)
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.nv50_instmem*, %struct.nv50_instmem** %8, align 8
  %61 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %54, %3
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 7340032, %64
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %65, i32 %66)
  %68 = load %struct.nv50_instmem*, %struct.nv50_instmem** %8, align 8
  %69 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
