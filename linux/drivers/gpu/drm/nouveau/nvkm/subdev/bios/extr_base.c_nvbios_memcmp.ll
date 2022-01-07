; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_memcmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_base.c_nvbios_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvbios_memcmp(%struct.nvkm_bios* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %35, %4
  %13 = load i32, i32* %9, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  %20 = call zeroext i8 @nvbios_rd08(%struct.nvkm_bios* %17, i32 %18)
  store i8 %20, i8* %10, align 1
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %11, align 1
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %16
  %30 = load i8, i8* %10, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %31, %33
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %16
  br label %12

36:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local zeroext i8 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
