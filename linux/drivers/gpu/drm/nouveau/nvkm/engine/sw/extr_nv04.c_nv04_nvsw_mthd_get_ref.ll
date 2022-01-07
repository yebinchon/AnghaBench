; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv04.c_nv04_nvsw_mthd_get_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv04.c_nv04_nvsw_mthd_get_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_nvsw = type { i32 }
%struct.nv04_sw_chan = type { i32 }
%union.anon = type { %struct.nv04_nvsw_get_ref_v0 }
%struct.nv04_nvsw_get_ref_v0 = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_nvsw*, i8*, i32)* @nv04_nvsw_mthd_get_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_nvsw_mthd_get_ref(%struct.nvkm_nvsw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_nvsw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nv04_sw_chan*, align 8
  %8 = alloca %union.anon*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_nvsw* %0, %struct.nvkm_nvsw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nvkm_nvsw*, %struct.nvkm_nvsw** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_nvsw, %struct.nvkm_nvsw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nv04_sw_chan* @nv04_sw_chan(i32 %12)
  store %struct.nv04_sw_chan* %13, %struct.nv04_sw_chan** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %union.anon*
  store %union.anon* %15, %union.anon** %8, align 8
  %16 = load i32, i32* @ENOSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %union.anon*, %union.anon** %8, align 8
  %20 = bitcast %union.anon* %19 to %struct.nv04_nvsw_get_ref_v0*
  %21 = getelementptr inbounds %struct.nv04_nvsw_get_ref_v0, %struct.nv04_nvsw_get_ref_v0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nvif_unpack(i32 %18, i8** %5, i32* %6, i32 %22, i32 0, i32 0, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.nv04_sw_chan*, %struct.nv04_sw_chan** %7, align 8
  %27 = getelementptr inbounds %struct.nv04_sw_chan, %struct.nv04_sw_chan* %26, i32 0, i32 0
  %28 = call i32 @atomic_read(i32* %27)
  %29 = load %union.anon*, %union.anon** %8, align 8
  %30 = bitcast %union.anon* %29 to %struct.nv04_nvsw_get_ref_v0*
  %31 = getelementptr inbounds %struct.nv04_nvsw_get_ref_v0, %struct.nv04_nvsw_get_ref_v0* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.nv04_sw_chan* @nv04_sw_chan(i32) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
