; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gk104.c_gk104_ce_intr_launcherr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gk104.c_gk104_ce_intr_launcherr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_enum = type { i8* }

@gk104_ce_launcherr_report = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"LAUNCHERR %08x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*, i32)* @gk104_ce_intr_launcherr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_ce_intr_launcherr(%struct.nvkm_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_enum*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %5, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %6, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 1068820, %15
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %14, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @gk104_ce_launcherr_report, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 15
  %21 = call %struct.nvkm_enum* @nvkm_enum_find(i32 %18, i32 %20)
  store %struct.nvkm_enum* %21, %struct.nvkm_enum** %8, align 8
  %22 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %25 = icmp ne %struct.nvkm_enum* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %30 ]
  %33 = call i32 @nvkm_warn(%struct.nvkm_subdev* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %32)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 1068820, %35
  %37 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %36, i32 0)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i32, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32, i8*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
