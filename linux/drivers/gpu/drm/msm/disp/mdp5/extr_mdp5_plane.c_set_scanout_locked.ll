; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_set_scanout_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_set_scanout_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }
%struct.drm_framebuffer = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_kms*, i32, %struct.drm_framebuffer*)* @set_scanout_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_scanout_locked(%struct.mdp5_kms* %0, i32 %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.msm_kms*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %6, align 8
  %8 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %9 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.msm_kms* %10, %struct.msm_kms** %7, align 8
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @REG_MDP5_PIPE_SRC_STRIDE_A(i32 %12)
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %15 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MDP5_PIPE_SRC_STRIDE_A_P0(i32 %18)
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %21 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MDP5_PIPE_SRC_STRIDE_A_P1(i32 %24)
  %26 = or i32 %19, %25
  %27 = call i32 @mdp5_write(%struct.mdp5_kms* %11, i32 %13, i32 %26)
  %28 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @REG_MDP5_PIPE_SRC_STRIDE_B(i32 %29)
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MDP5_PIPE_SRC_STRIDE_B_P2(i32 %35)
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MDP5_PIPE_SRC_STRIDE_B_P3(i32 %41)
  %43 = or i32 %36, %42
  %44 = call i32 @mdp5_write(%struct.mdp5_kms* %28, i32 %30, i32 %43)
  %45 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @REG_MDP5_PIPE_SRC0_ADDR(i32 %46)
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %49 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %50 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %48, i32 %51, i32 0)
  %53 = call i32 @mdp5_write(%struct.mdp5_kms* %45, i32 %47, i32 %52)
  %54 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @REG_MDP5_PIPE_SRC1_ADDR(i32 %55)
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %58 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %59 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %57, i32 %60, i32 1)
  %62 = call i32 @mdp5_write(%struct.mdp5_kms* %54, i32 %56, i32 %61)
  %63 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @REG_MDP5_PIPE_SRC2_ADDR(i32 %64)
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %67 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %68 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %66, i32 %69, i32 2)
  %71 = call i32 @mdp5_write(%struct.mdp5_kms* %63, i32 %65, i32 %70)
  %72 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @REG_MDP5_PIPE_SRC3_ADDR(i32 %73)
  %75 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %76 = load %struct.msm_kms*, %struct.msm_kms** %7, align 8
  %77 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @msm_framebuffer_iova(%struct.drm_framebuffer* %75, i32 %78, i32 3)
  %80 = call i32 @mdp5_write(%struct.mdp5_kms* %72, i32 %74, i32 %79)
  ret void
}

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_STRIDE_A(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_STRIDE_A_P0(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_STRIDE_A_P1(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC_STRIDE_B(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_STRIDE_B_P2(i32) #1

declare dso_local i32 @MDP5_PIPE_SRC_STRIDE_B_P3(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC0_ADDR(i32) #1

declare dso_local i32 @msm_framebuffer_iova(%struct.drm_framebuffer*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC1_ADDR(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC2_ADDR(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SRC3_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
