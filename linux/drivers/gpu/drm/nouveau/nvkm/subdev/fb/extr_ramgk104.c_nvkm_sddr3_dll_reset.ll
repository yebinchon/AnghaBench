; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_nvkm_sddr3_dll_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_nvkm_sddr3_dll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_ramfuc = type { i32 }

@mr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_ramfuc*)* @nvkm_sddr3_dll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_sddr3_dll_reset(%struct.gk104_ramfuc* %0) #0 {
  %2 = alloca %struct.gk104_ramfuc*, align 8
  store %struct.gk104_ramfuc* %0, %struct.gk104_ramfuc** %2, align 8
  %3 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %2, align 8
  %4 = load i32*, i32** @mr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @ram_nuke(%struct.gk104_ramfuc* %3, i32 %6)
  %8 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %2, align 8
  %9 = load i32*, i32** @mr, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ram_mask(%struct.gk104_ramfuc* %8, i32 %11, i32 256, i32 256)
  %13 = load %struct.gk104_ramfuc*, %struct.gk104_ramfuc** %2, align 8
  %14 = load i32*, i32** @mr, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ram_mask(%struct.gk104_ramfuc* %13, i32 %16, i32 256, i32 0)
  ret void
}

declare dso_local i32 @ram_nuke(%struct.gk104_ramfuc*, i32) #1

declare dso_local i32 @ram_mask(%struct.gk104_ramfuc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
