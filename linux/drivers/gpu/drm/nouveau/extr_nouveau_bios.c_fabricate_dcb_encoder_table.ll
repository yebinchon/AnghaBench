; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_fabricate_dcb_encoder_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_fabricate_dcb_encoder_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.dcb_table }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dcb_table = type { i32 }

@DCB_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@DCB_OUTPUT_TV = common dso_local global i32 0, align 4
@DCB_OUTPUT_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nvbios*)* @fabricate_dcb_encoder_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fabricate_dcb_encoder_table(%struct.drm_device* %0, %struct.nvbios* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nvbios*, align 8
  %5 = alloca %struct.dcb_table*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.nvbios* %1, %struct.nvbios** %4, align 8
  %7 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %8 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %7, i32 0, i32 2
  store %struct.dcb_table* %8, %struct.dcb_table** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = call i64 @nv_two_heads(%struct.drm_device* %9)
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 3, i32 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dcb_table*, %struct.dcb_table** %5, align 8
  %15 = load i32, i32* @DCB_OUTPUT_ANALOG, align 4
  %16 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %17 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @fabricate_dcb_output(%struct.dcb_table* %14, i32 %15, i32 %20, i32 1, i32 1)
  %22 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %23 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %24 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nv04_tv_identify(%struct.drm_device* %22, i32 %27)
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.dcb_table*, %struct.dcb_table** %5, align 8
  %32 = load i32, i32* @DCB_OUTPUT_TV, align 4
  %33 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %34 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @fabricate_dcb_output(%struct.dcb_table* %31, i32 %32, i32 %37, i32 %38, i32 0)
  br label %63

40:                                               ; preds = %2
  %41 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %42 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %48 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %46, %40
  %53 = load %struct.dcb_table*, %struct.dcb_table** %5, align 8
  %54 = load i32, i32* @DCB_OUTPUT_TMDS, align 4
  %55 = load %struct.nvbios*, %struct.nvbios** %4, align 8
  %56 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @fabricate_dcb_output(%struct.dcb_table* %53, i32 %54, i32 %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %52, %46
  br label %63

63:                                               ; preds = %62, %30
  ret void
}

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @fabricate_dcb_output(%struct.dcb_table*, i32, i32, i32, i32) #1

declare dso_local i64 @nv04_tv_identify(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
