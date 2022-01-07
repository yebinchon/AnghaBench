; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_set_scanout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_plane_set_scanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_framebuffer = type { i32* }
%struct.mdp4_plane = type { i32 }
%struct.mdp4_kms = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_framebuffer*)* @mdp4_plane_set_scanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_plane_set_scanout(%struct.drm_plane* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.mdp4_plane*, align 8
  %6 = alloca %struct.mdp4_kms*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %9 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %10 = call %struct.mdp4_plane* @to_mdp4_plane(%struct.drm_plane* %9)
  store %struct.mdp4_plane* %10, %struct.mdp4_plane** %5, align 8
  %11 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %12 = call %struct.mdp4_kms* @get_kms(%struct.drm_plane* %11)
  store %struct.mdp4_kms* %12, %struct.mdp4_kms** %6, align 8
  %13 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %14 = getelementptr inbounds %struct.mdp4_kms, %struct.mdp4_kms* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.msm_kms* %15, %struct.msm_kms** %7, align 8
  %16 = load %struct.mdp4_plane*, %struct.mdp4_plane** %5, align 8
  %17 = getelementptr inbounds %struct.mdp4_plane, %struct.mdp4_plane* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @REG_MDP4_PIPE_SRC_STRIDE_A(i32 %20)
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %23 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MDP4_PIPE_SRC_STRIDE_A_P0(i32 %26)
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MDP4_PIPE_SRC_STRIDE_A_P1(i32 %32)
  %34 = or i32 %27, %33
  %35 = call i32 @mdp4_write(%struct.mdp4_kms* %19, i32 %21, i32 %34)
  %36 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @REG_MDP4_PIPE_SRC_STRIDE_B(i32 %37)
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MDP4_PIPE_SRC_STRIDE_B_P2(i32 %43)
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MDP4_PIPE_SRC_STRIDE_B_P3(i32 %49)
  %51 = or i32 %44, %50
  %52 = call i32 @mdp4_write(%struct.mdp4_kms* %36, i32 %38, i32 %51)
  %53 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @REG_MDP4_PIPE_SRCP0_BASE(i32 %54)
  %56 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %57 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %58 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %56, i32 %59, i32 0)
  %61 = call i32 @mdp4_write(%struct.mdp4_kms* %53, i32 %55, i32 %60)
  %62 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @REG_MDP4_PIPE_SRCP1_BASE(i32 %63)
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %66 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %67 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %65, i32 %68, i32 1)
  %70 = call i32 @mdp4_write(%struct.mdp4_kms* %62, i32 %64, i32 %69)
  %71 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @REG_MDP4_PIPE_SRCP2_BASE(i32 %72)
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %75 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %76 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %74, i32 %77, i32 2)
  %79 = call i32 @mdp4_write(%struct.mdp4_kms* %71, i32 %73, i32 %78)
  %80 = load %struct.mdp4_kms*, %struct.mdp4_kms** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @REG_MDP4_PIPE_SRCP3_BASE(i32 %81)
  %83 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %84 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %85 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %83, i32 %86, i32 3)
  %88 = call i32 @mdp4_write(%struct.mdp4_kms* %80, i32 %82, i32 %87)
  ret void
}

declare dso_local %struct.mdp4_plane* @to_mdp4_plane(%struct.drm_plane*) #1

declare dso_local %struct.mdp4_kms* @get_kms(%struct.drm_plane*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRC_STRIDE_A(i32) #1

declare dso_local i32 @MDP4_PIPE_SRC_STRIDE_A_P0(i32) #1

declare dso_local i32 @MDP4_PIPE_SRC_STRIDE_A_P1(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRC_STRIDE_B(i32) #1

declare dso_local i32 @MDP4_PIPE_SRC_STRIDE_B_P2(i32) #1

declare dso_local i32 @MDP4_PIPE_SRC_STRIDE_B_P3(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRCP0_BASE(i32) #1

declare dso_local i32 @msm_framebuffer_iova(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRCP1_BASE(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRCP2_BASE(i32) #1

declare dso_local i32 @REG_MDP4_PIPE_SRCP3_BASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
