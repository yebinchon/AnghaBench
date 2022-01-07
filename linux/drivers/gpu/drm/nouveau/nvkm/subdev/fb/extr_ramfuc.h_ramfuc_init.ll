; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramfuc.h_ramfuc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ramfuc = type { %struct.nvkm_fb*, i32, i32 }
%struct.nvkm_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ramfuc*, %struct.nvkm_fb*)* @ramfuc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ramfuc_init(%struct.ramfuc* %0, %struct.nvkm_fb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ramfuc*, align 8
  %5 = alloca %struct.nvkm_fb*, align 8
  %6 = alloca i32, align 4
  store %struct.ramfuc* %0, %struct.ramfuc** %4, align 8
  store %struct.nvkm_fb* %1, %struct.nvkm_fb** %5, align 8
  %7 = load %struct.nvkm_fb*, %struct.nvkm_fb** %5, align 8
  %8 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ramfuc*, %struct.ramfuc** %4, align 8
  %14 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %13, i32 0, i32 2
  %15 = call i32 @nvkm_memx_init(i32 %12, i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load %struct.ramfuc*, %struct.ramfuc** %4, align 8
  %22 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.nvkm_fb*, %struct.nvkm_fb** %5, align 8
  %26 = load %struct.ramfuc*, %struct.ramfuc** %4, align 8
  %27 = getelementptr inbounds %struct.ramfuc, %struct.ramfuc* %26, i32 0, i32 0
  store %struct.nvkm_fb* %25, %struct.nvkm_fb** %27, align 8
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @nvkm_memx_init(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
