; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/extr_gv100.c_gv100_gsp_oneinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gsp/extr_gv100.c_gv100_gsp_oneinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32, i32 }
%struct.nvkm_gsp = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GSP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @gv100_gsp_oneinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv100_gsp_oneinit(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_gsp*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %3, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %6 = call %struct.nvkm_gsp* @nvkm_gsp(%struct.nvkm_subdev* %5)
  store %struct.nvkm_gsp* %6, %struct.nvkm_gsp** %4, align 8
  %7 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @nvkm_top_addr(i32 %9, i32 %12)
  %14 = load %struct.nvkm_gsp*, %struct.nvkm_gsp** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_gsp, %struct.nvkm_gsp* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvkm_gsp*, %struct.nvkm_gsp** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_gsp, %struct.nvkm_gsp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %25 = load %struct.nvkm_gsp*, %struct.nvkm_gsp** %4, align 8
  %26 = getelementptr inbounds %struct.nvkm_gsp, %struct.nvkm_gsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvkm_gsp*, %struct.nvkm_gsp** %4, align 8
  %29 = getelementptr inbounds %struct.nvkm_gsp, %struct.nvkm_gsp* %28, i32 0, i32 0
  %30 = call i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27, i32* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.nvkm_gsp* @nvkm_gsp(%struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_top_addr(i32, i32) #1

declare dso_local i32 @nvkm_falcon_v1_new(%struct.nvkm_subdev*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
