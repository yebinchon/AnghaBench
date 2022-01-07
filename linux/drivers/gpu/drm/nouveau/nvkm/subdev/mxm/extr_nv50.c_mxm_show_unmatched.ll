; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_show_unmatched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_nv50.c_mxm_show_unmatched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"unmatched output device %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mxm*, i32*, i8*)* @mxm_show_unmatched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_show_unmatched(%struct.nvkm_mxm* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.nvkm_mxm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nvkm_subdev*, align 8
  %8 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 240
  %15 = icmp ne i32 %14, 240
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @nvkm_info(%struct.nvkm_subdev* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %3
  ret i32 1
}

declare dso_local i32 @nvkm_info(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
