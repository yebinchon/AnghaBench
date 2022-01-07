; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v3_6.c_df_v3_6_pmc_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@smnPerfMonCtlLo0 = common dso_local global i32 0, align 4
@smnPerfMonCtrLo0 = common dso_local global i32 0, align 4
@smnPerfMonCtlHi0 = common dso_local global i32 0, align 4
@smnPerfMonCtrHi0 = common dso_local global i32 0, align 4
@smnPerfMonCtlLo1 = common dso_local global i32 0, align 4
@smnPerfMonCtrLo1 = common dso_local global i32 0, align 4
@smnPerfMonCtlHi1 = common dso_local global i32 0, align 4
@smnPerfMonCtrHi1 = common dso_local global i32 0, align 4
@smnPerfMonCtlLo2 = common dso_local global i32 0, align 4
@smnPerfMonCtrLo2 = common dso_local global i32 0, align 4
@smnPerfMonCtlHi2 = common dso_local global i32 0, align 4
@smnPerfMonCtrHi2 = common dso_local global i32 0, align 4
@smnPerfMonCtlLo3 = common dso_local global i32 0, align 4
@smnPerfMonCtrLo3 = common dso_local global i32 0, align 4
@smnPerfMonCtlHi3 = common dso_local global i32 0, align 4
@smnPerfMonCtrHi3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32*, i32*)* @df_v3_6_pmc_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v3_6_pmc_get_addr(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @df_v3_6_pmc_config_2_cntr(%struct.amdgpu_device* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %96

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  switch i32 %19, label %96 [
    i32 0, label %20
    i32 1, label %39
    i32 2, label %58
    i32 3, label %77
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @smnPerfMonCtlLo0, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @smnPerfMonCtrLo0, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @smnPerfMonCtlHi0, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @smnPerfMonCtrHi0, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %96

39:                                               ; preds = %18
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @smnPerfMonCtlLo1, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @smnPerfMonCtrLo1, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @smnPerfMonCtlHi1, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @smnPerfMonCtrHi1, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  br label %96

58:                                               ; preds = %18
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @smnPerfMonCtlLo2, align 4
  br label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @smnPerfMonCtrLo2, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @smnPerfMonCtlHi2, align 4
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @smnPerfMonCtrHi2, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  br label %96

77:                                               ; preds = %18
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @smnPerfMonCtlLo3, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @smnPerfMonCtrLo3, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @smnPerfMonCtlHi3, align 4
  br label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @smnPerfMonCtrHi3, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %17, %18, %93, %74, %55, %36
  ret void
}

declare dso_local i32 @df_v3_6_pmc_config_2_cntr(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
