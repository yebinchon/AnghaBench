; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_fermi_mthd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"fermi mthd %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i32, i8*, i32)* @gf100_fermi_mthd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_fermi_mthd(%struct.nvkm_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @nvif_ioctl(%struct.nvkm_object* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %24 [
    i32 129, label %14
    i32 128, label %19
  ]

14:                                               ; preds = %4
  %15 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @gf100_fermi_mthd_zbc_color(%struct.nvkm_object* %15, i8* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %4
  %20 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @gf100_fermi_mthd_zbc_depth(%struct.nvkm_object* %20, i8* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %28

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %19, %14
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32) #1

declare dso_local i32 @gf100_fermi_mthd_zbc_color(%struct.nvkm_object*, i8*, i32) #1

declare dso_local i32 @gf100_fermi_mthd_zbc_depth(%struct.nvkm_object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
