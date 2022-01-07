; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_write_csc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp4/extr_mdp4_plane.c_mdp4_write_csc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp4_kms = type { i32 }
%struct.csc_cfg = type { i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp4_kms*, i32, %struct.csc_cfg*)* @mdp4_write_csc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp4_write_csc_config(%struct.mdp4_kms* %0, i32 %1, %struct.csc_cfg* %2) #0 {
  %4 = alloca %struct.mdp4_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csc_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.mdp4_kms* %0, %struct.mdp4_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.csc_cfg* %2, %struct.csc_cfg** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %28, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %11 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %8
  %16 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @REG_MDP4_PIPE_CSC_MV(i32 %17, i32 %18)
  %20 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mdp4_write(%struct.mdp4_kms* %16, i32 %19, i32 %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %8

31:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ARRAY_SIZE(i32* %36)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @REG_MDP4_PIPE_CSC_PRE_BV(i32 %41, i32 %42)
  %44 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mdp4_write(%struct.mdp4_kms* %40, i32 %43, i32 %50)
  %52 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @REG_MDP4_PIPE_CSC_POST_BV(i32 %53, i32 %54)
  %56 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mdp4_write(%struct.mdp4_kms* %52, i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %39
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %32

67:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %100, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %71 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ARRAY_SIZE(i32* %72)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %68
  %76 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @REG_MDP4_PIPE_CSC_PRE_LV(i32 %77, i32 %78)
  %80 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %81 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mdp4_write(%struct.mdp4_kms* %76, i32 %79, i32 %86)
  %88 = load %struct.mdp4_kms*, %struct.mdp4_kms** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @REG_MDP4_PIPE_CSC_POST_LV(i32 %89, i32 %90)
  %92 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %93 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mdp4_write(%struct.mdp4_kms* %88, i32 %91, i32 %98)
  br label %100

100:                                              ; preds = %75
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %68

103:                                              ; preds = %68
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mdp4_write(%struct.mdp4_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_CSC_MV(i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_CSC_PRE_BV(i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_CSC_POST_BV(i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_CSC_PRE_LV(i32, i32) #1

declare dso_local i32 @REG_MDP4_PIPE_CSC_POST_LV(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
