; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_init.c_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvbios_init = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"IO\09\09I[0x%04x] &= 0x%02x |= 0x%02x\0A\00", align 1
@NV_50 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvbios_init*)* @init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_io(%struct.nvbios_init* %0) #0 {
  %2 = alloca %struct.nvbios_init*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nvbios_init* %0, %struct.nvbios_init** %2, align 8
  %8 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %9 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %13, align 8
  store %struct.nvkm_bios* %14, %struct.nvkm_bios** %3, align 8
  %15 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %16 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %17 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @nvbios_rd16(%struct.nvkm_bios* %15, i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %22 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %23 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 3
  %26 = call i32 @nvbios_rd16(%struct.nvkm_bios* %21, i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %28 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %29 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 4
  %32 = call i32 @nvbios_rd16(%struct.nvkm_bios* %27, i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  %37 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %38 = getelementptr inbounds %struct.nvbios_init, %struct.nvbios_init* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 5
  store i64 %40, i64* %38, align 8
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %42 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NV_50, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %78

49:                                               ; preds = %1
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 963
  br i1 %51, label %52, label %78

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %57 = call i32 @init_mask(%struct.nvbios_init* %56, i32 6373632, i32 -260046848, i32 8388608)
  %58 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %59 = call i32 @init_mask(%struct.nvbios_init* %58, i32 57740, i32 131072, i32 131072)
  %60 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %61 = call i32 @init_mask(%struct.nvbios_init* %60, i32 6375680, i32 -260046848, i32 8388608)
  %62 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %63 = call i32 @init_mask(%struct.nvbios_init* %62, i32 512, i32 1073741824, i32 0)
  %64 = call i32 @mdelay(i32 10)
  %65 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %66 = call i32 @init_mask(%struct.nvbios_init* %65, i32 57740, i32 131072, i32 0)
  %67 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %68 = call i32 @init_mask(%struct.nvbios_init* %67, i32 512, i32 1073741824, i32 1073741824)
  %69 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %70 = call i32 @init_wr32(%struct.nvbios_init* %69, i32 6373632, i32 8388632)
  %71 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %72 = call i32 @init_wr32(%struct.nvbios_init* %71, i32 6375680, i32 8388632)
  %73 = call i32 @mdelay(i32 10)
  %74 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %75 = call i32 @init_wr32(%struct.nvbios_init* %74, i32 6373632, i32 268435480)
  %76 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %77 = call i32 @init_wr32(%struct.nvbios_init* %76, i32 6375680, i32 268435480)
  br label %78

78:                                               ; preds = %55, %52, %49, %1
  %79 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @init_rdport(%struct.nvbios_init* %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.nvbios_init*, %struct.nvbios_init** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @init_wrport(%struct.nvbios_init* %84, i32 %85, i32 %88)
  ret void
}

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, i32) #1

declare dso_local i32 @init_mask(%struct.nvbios_init*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @init_wr32(%struct.nvbios_init*, i32, i32) #1

declare dso_local i32 @init_rdport(%struct.nvbios_init*, i32) #1

declare dso_local i32 @init_wrport(%struct.nvbios_init*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
