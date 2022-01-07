; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_msm_mdss_get_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_mdss.c_msm_mdss_get_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_mdss = type { i32*, i32*, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_mdss*)* @msm_mdss_get_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_mdss_get_clocks(%struct.mdp5_mdss* %0) #0 {
  %2 = alloca %struct.mdp5_mdss*, align 8
  %3 = alloca %struct.platform_device*, align 8
  store %struct.mdp5_mdss* %0, %struct.mdp5_mdss** %2, align 8
  %4 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %5 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.platform_device* @to_platform_device(i32 %9)
  store %struct.platform_device* %10, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call i8* @msm_clk_get(%struct.platform_device* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %15 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %17 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %23 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i8* @msm_clk_get(%struct.platform_device* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %29 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %31 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %37 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %24
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i8* @msm_clk_get(%struct.platform_device* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %43 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  %44 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %45 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load %struct.mdp5_mdss*, %struct.mdp5_mdss** %2, align 8
  %51 = getelementptr inbounds %struct.mdp5_mdss, %struct.mdp5_mdss* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %38
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i8* @msm_clk_get(%struct.platform_device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
