; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadowramin.c_pramin_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_shadowramin.c_pramin_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.nvkm_bios*)* @pramin_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pramin_read(i8* %0, i32 %1, i32 %2, %struct.nvkm_bios* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_bios* %3, %struct.nvkm_bios** %9, align 8
  %12 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %13 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp sle i32 %18, 1048576
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %39, %20
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 7340032, %30
  %32 = call i32 @nvkm_rd32(%struct.nvkm_device* %29, i32 %31)
  %33 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %34 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %11, align 4
  br label %22

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
