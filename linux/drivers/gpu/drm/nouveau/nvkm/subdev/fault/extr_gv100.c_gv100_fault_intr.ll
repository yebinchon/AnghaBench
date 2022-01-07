; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fault/extr_gv100.c_gv100_fault_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fault = type { i32, i64*, %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"intr %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fault*)* @gv100_fault_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gv100_fault_intr(%struct.nvkm_fault* %0) #0 {
  %2 = alloca %struct.nvkm_fault*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_fault* %0, %struct.nvkm_fault** %2, align 8
  %6 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %6, i32 0, i32 2
  store %struct.nvkm_subdev* %7, %struct.nvkm_subdev** %3, align 8
  %8 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %4, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 1051168)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, -2147483648
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %18 = call i32 @gv100_fault_intr_fault(%struct.nvkm_fault* %17)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 1052256, i32 -2147483648)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 2147483647
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 536870912
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %29 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %36 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %35, i32 0, i32 0
  %37 = call i32 @nvkm_event_send(i32* %36, i32 1, i32 0, i32* null, i32 0)
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, -536870913
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, 134217728
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %47 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.nvkm_fault*, %struct.nvkm_fault** %2, align 8
  %54 = getelementptr inbounds %struct.nvkm_fault, %struct.nvkm_fault* %53, i32 0, i32 0
  %55 = call i32 @nvkm_event_send(i32* %54, i32 1, i32 1, i32* null, i32 0)
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, -134217729
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @nvkm_debug(%struct.nvkm_subdev* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @gv100_fault_intr_fault(%struct.nvkm_fault*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_event_send(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
