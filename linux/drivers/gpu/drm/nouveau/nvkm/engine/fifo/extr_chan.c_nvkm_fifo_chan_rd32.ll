; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_rd32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_rd32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_fifo_chan = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i64, i32*)* @nvkm_fifo_chan_rd32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fifo_chan_rd32(%struct.nvkm_object* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvkm_fifo_chan*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %10 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object* %9)
  store %struct.nvkm_fifo_chan* %10, %struct.nvkm_fifo_chan** %8, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %12 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %21 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %24 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @ioremap(i32 %22, i64 %25)
  %27 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %58

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %38, 4
  %40 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %58

50:                                               ; preds = %37
  %51 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %52 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @ioread32_native(i64 %55)
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %47, %33
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ioremap(i32, i64) #1

declare dso_local i32 @ioread32_native(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
