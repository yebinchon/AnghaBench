; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_base.c_nvkm_secboot_dtor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_base.c_nvkm_secboot_dtor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_secboot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.nvkm_secboot*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nvkm_subdev*)* @nvkm_secboot_dtor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nvkm_secboot_dtor(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_secboot*, align 8
  %4 = alloca i8*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %6 = call %struct.nvkm_secboot* @nvkm_secboot(%struct.nvkm_subdev* %5)
  store %struct.nvkm_secboot* %6, %struct.nvkm_secboot** %3, align 8
  store i8* null, i8** %4, align 8
  %7 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8* (%struct.nvkm_secboot*)*, i8* (%struct.nvkm_secboot*)** %10, align 8
  %12 = icmp ne i8* (%struct.nvkm_secboot*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8* (%struct.nvkm_secboot*)*, i8* (%struct.nvkm_secboot*)** %17, align 8
  %19 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %20 = call i8* %18(%struct.nvkm_secboot* %19)
  store i8* %20, i8** %4, align 8
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i8*, i8** %4, align 8
  ret i8* %22
}

declare dso_local %struct.nvkm_secboot* @nvkm_secboot(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
