; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_plane.c__dpu_plane_setup_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_csc_cfg = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_plane = type { i32, %struct.dpu_csc_cfg* }

@_dpu_plane_setup_csc.dpu_csc_YUV2RGB_601L = internal constant %struct.dpu_csc_cfg { i32* inttoptr (i64 76288 to i32*), %struct.TYPE_10__ { i32 65520, i32 65408, i32 65408, i32 0, i32 0, i32 0 }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ { i32 16, i32 235, i32 16 }, %struct.TYPE_7__ { i32 0, i32 255, i32 0 }, %struct.TYPE_6__ zeroinitializer }, align 8
@_dpu_plane_setup_csc.dpu_csc10_YUV2RGB_601L = internal constant %struct.dpu_csc_cfg { i32* inttoptr (i64 76288 to i32*), %struct.TYPE_10__ { i32 65472, i32 65024, i32 65024, i32 0, i32 0, i32 0 }, %struct.TYPE_9__ zeroinitializer, %struct.TYPE_8__ { i32 64, i32 940, i32 64 }, %struct.TYPE_7__ { i32 0, i32 1023, i32 0 }, %struct.TYPE_6__ zeroinitializer }, align 8
@.str = private unnamed_addr constant [15 x i8] c"invalid plane\0A\00", align 1
@DPU_SSPP_CSC_10BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"using 0x%X 0x%X 0x%X...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_plane*)* @_dpu_plane_setup_csc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_plane_setup_csc(%struct.dpu_plane* %0) #0 {
  %2 = alloca %struct.dpu_plane*, align 8
  store %struct.dpu_plane* %0, %struct.dpu_plane** %2, align 8
  %3 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %4 = icmp ne %struct.dpu_plane* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %45

7:                                                ; preds = %1
  %8 = load i32, i32* @DPU_SSPP_CSC_10BIT, align 4
  %9 = call i32 @BIT(i32 %8)
  %10 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %17 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %16, i32 0, i32 1
  store %struct.dpu_csc_cfg* @_dpu_plane_setup_csc.dpu_csc10_YUV2RGB_601L, %struct.dpu_csc_cfg** %17, align 8
  br label %21

18:                                               ; preds = %7
  %19 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %20 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %19, i32 0, i32 1
  store %struct.dpu_csc_cfg* @_dpu_plane_setup_csc.dpu_csc_YUV2RGB_601L, %struct.dpu_csc_cfg** %20, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %23 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %24 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %23, i32 0, i32 1
  %25 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %24, align 8
  %26 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %31 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %30, i32 0, i32 1
  %32 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %31, align 8
  %33 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dpu_plane*, %struct.dpu_plane** %2, align 8
  %38 = getelementptr inbounds %struct.dpu_plane, %struct.dpu_plane* %37, i32 0, i32 1
  %39 = load %struct.dpu_csc_cfg*, %struct.dpu_csc_cfg** %38, align 8
  %40 = getelementptr inbounds %struct.dpu_csc_cfg, %struct.dpu_csc_cfg* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DPU_DEBUG_PLANE(%struct.dpu_plane* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %21, %5
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_DEBUG_PLANE(%struct.dpu_plane*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
