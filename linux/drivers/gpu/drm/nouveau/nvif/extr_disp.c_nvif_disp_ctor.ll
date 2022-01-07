; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_disp.c_nvif_disp_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_disp.c_nvif_disp_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_mclass = type { i32, i32, i32 }
%struct.nvif_device = type { i32 }
%struct.nvif_disp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@nvif_disp_ctor.disps = internal constant [16 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 128, i32 -1, i32 0 }, %struct.nvif_mclass { i32 131, i32 -1, i32 0 }, %struct.nvif_mclass { i32 135, i32 -1, i32 0 }, %struct.nvif_mclass { i32 136, i32 -1, i32 0 }, %struct.nvif_mclass { i32 137, i32 -1, i32 0 }, %struct.nvif_mclass { i32 138, i32 -1, i32 0 }, %struct.nvif_mclass { i32 139, i32 -1, i32 0 }, %struct.nvif_mclass { i32 140, i32 -1, i32 0 }, %struct.nvif_mclass { i32 141, i32 -1, i32 0 }, %struct.nvif_mclass { i32 132, i32 -1, i32 0 }, %struct.nvif_mclass { i32 133, i32 -1, i32 0 }, %struct.nvif_mclass { i32 134, i32 -1, i32 0 }, %struct.nvif_mclass { i32 142, i32 -1, i32 0 }, %struct.nvif_mclass { i32 129, i32 -1, i32 0 }, %struct.nvif_mclass { i32 130, i32 -1, i32 0 }, %struct.nvif_mclass zeroinitializer], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_disp_ctor(%struct.nvif_device* %0, i32 %1, %struct.nvif_disp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvif_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvif_disp*, align 8
  %8 = alloca i32, align 4
  store %struct.nvif_device* %0, %struct.nvif_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvif_disp* %2, %struct.nvif_disp** %7, align 8
  %9 = load %struct.nvif_device*, %struct.nvif_device** %5, align 8
  %10 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @nvif_sclass(i32* %10, %struct.nvif_mclass* getelementptr inbounds ([16 x %struct.nvif_mclass], [16 x %struct.nvif_mclass]* @nvif_disp_ctor.disps, i64 0, i64 0), i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.nvif_disp*, %struct.nvif_disp** %7, align 8
  %14 = getelementptr inbounds %struct.nvif_disp, %struct.nvif_disp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load %struct.nvif_device*, %struct.nvif_device** %5, align 8
  %22 = getelementptr inbounds %struct.nvif_device, %struct.nvif_device* %21, i32 0, i32 0
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x %struct.nvif_mclass], [16 x %struct.nvif_mclass]* @nvif_disp_ctor.disps, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.nvif_mclass, %struct.nvif_mclass* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nvif_disp*, %struct.nvif_disp** %7, align 8
  %29 = getelementptr inbounds %struct.nvif_disp, %struct.nvif_disp* %28, i32 0, i32 0
  %30 = call i32 @nvif_object_init(i32* %22, i32 0, i32 %27, i32* null, i32 0, %struct.TYPE_2__* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %20, %18
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @nvif_sclass(i32*, %struct.nvif_mclass*, i32) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
