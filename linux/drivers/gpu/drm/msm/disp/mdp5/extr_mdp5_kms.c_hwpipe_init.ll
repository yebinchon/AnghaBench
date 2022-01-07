; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_hwpipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_hwpipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32 }
%struct.mdp5_cfg_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@hwpipe_init.rgb_planes = internal constant [4 x i32] [i32 135, i32 134, i32 133, i32 132], align 16
@hwpipe_init.vig_planes = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@hwpipe_init.dma_planes = internal constant [2 x i32] [i32 137, i32 136], align 4
@hwpipe_init.cursor_planes = internal constant [2 x i32] [i32 139, i32 138], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*)* @hwpipe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwpipe_init(%struct.mdp5_kms* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.mdp5_cfg_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  %6 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %7 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32 %8)
  store %struct.mdp5_cfg_hw* %9, %struct.mdp5_cfg_hw** %4, align 8
  %10 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %11 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %12 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %16 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %20 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @construct_pipes(%struct.mdp5_kms* %10, i32 %14, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @hwpipe_init.rgb_planes, i64 0, i64 0), i32 %18, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %1
  %29 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %30 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %31 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %35 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %39 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @construct_pipes(%struct.mdp5_kms* %29, i32 %33, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @hwpipe_init.vig_planes, i64 0, i64 0), i32 %37, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %28
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %86

47:                                               ; preds = %28
  %48 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %49 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %50 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %54 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %58 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @construct_pipes(%struct.mdp5_kms* %48, i32 %52, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @hwpipe_init.dma_planes, i64 0, i64 0), i32 %56, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %86

66:                                               ; preds = %47
  %67 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %68 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %69 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %73 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %4, align 8
  %77 = getelementptr inbounds %struct.mdp5_cfg_hw, %struct.mdp5_cfg_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @construct_pipes(%struct.mdp5_kms* %67, i32 %71, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @hwpipe_init.cursor_planes, i64 0, i64 0), i32 %75, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %83, %64, %45, %26
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32) #1

declare dso_local i32 @construct_pipes(%struct.mdp5_kms*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
