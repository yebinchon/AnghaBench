; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_rd32_slow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/extr_nv50.c_nv50_instobj_rd32_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_memory = type { i32 }
%struct.nv50_instobj = type { i32, %struct.nv50_instmem* }
%struct.nv50_instmem = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_memory*, i32)* @nv50_instobj_rd32_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_instobj_rd32_slow(%struct.nvkm_memory* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_memory*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_instobj*, align 8
  %6 = alloca %struct.nv50_instmem*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.nvkm_memory* %0, %struct.nvkm_memory** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.nvkm_memory*, %struct.nvkm_memory** %3, align 8
  %13 = call %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory* %12)
  store %struct.nv50_instobj* %13, %struct.nv50_instobj** %5, align 8
  %14 = load %struct.nv50_instobj*, %struct.nv50_instobj** %5, align 8
  %15 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %14, i32 0, i32 1
  %16 = load %struct.nv50_instmem*, %struct.nv50_instmem** %15, align 8
  store %struct.nv50_instmem* %16, %struct.nv50_instmem** %6, align 8
  %17 = load %struct.nv50_instmem*, %struct.nv50_instmem** %6, align 8
  %18 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %7, align 8
  %22 = load %struct.nv50_instobj*, %struct.nv50_instobj** %5, align 8
  %23 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @nvkm_memory_addr(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = and i64 %28, 17592184995840
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nv50_instobj*, %struct.nv50_instobj** %5, align 8
  %32 = getelementptr inbounds %struct.nv50_instobj, %struct.nv50_instobj* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nvkm_memory_addr(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = and i64 %37, 1048575
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nv50_instmem*, %struct.nv50_instmem** %6, align 8
  %41 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.nv50_instmem*, %struct.nv50_instmem** %6, align 8
  %46 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %2
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 16
  %57 = call i32 @nvkm_wr32(%struct.nvkm_device* %54, i32 5888, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.nv50_instmem*, %struct.nv50_instmem** %6, align 8
  %60 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %53, %2
  %62 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 7340032, %63
  %65 = call i32 @nvkm_rd32(%struct.nvkm_device* %62, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.nv50_instmem*, %struct.nv50_instmem** %6, align 8
  %67 = getelementptr inbounds %struct.nv50_instmem, %struct.nv50_instmem* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local %struct.nv50_instobj* @nv50_instobj(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_memory_addr(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
