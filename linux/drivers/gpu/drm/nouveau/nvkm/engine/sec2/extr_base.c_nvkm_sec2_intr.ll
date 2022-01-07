; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec2/extr_base.c_nvkm_sec2_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sec2/extr_base.c_nvkm_sec2_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_sec2 = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"unhandled intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @nvkm_sec2_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_sec2_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_sec2*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %9 = call %struct.nvkm_sec2* @nvkm_sec2(%struct.nvkm_engine* %8)
  store %struct.nvkm_sec2* %9, %struct.nvkm_sec2** %3, align 8
  %10 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %4, align 8
  %12 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %5, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %16 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 28
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %3, align 8
  %23 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i64 %25)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 16
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 64
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %3, align 8
  %38 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %37, i32 0, i32 1
  %39 = call i32 @schedule_work(i32* %38)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %41 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 4
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i64 %44, i32 64)
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, -65
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %36, %1
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @nvkm_error(%struct.nvkm_subdev* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %56 = load %struct.nvkm_sec2*, %struct.nvkm_sec2** %3, align 8
  %57 = getelementptr inbounds %struct.nvkm_sec2, %struct.nvkm_sec2* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %51, %48
  ret void
}

declare dso_local %struct.nvkm_sec2* @nvkm_sec2(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
