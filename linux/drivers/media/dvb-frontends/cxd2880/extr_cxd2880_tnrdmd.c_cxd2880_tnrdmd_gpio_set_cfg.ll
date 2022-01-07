; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_gpio_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_gpio_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_GPIO_MODE_EEW = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_gpio_set_cfg(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_tnrdmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %16 = icmp ne %struct.cxd2880_tnrdmd* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  br label %109

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %109

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @CXD2880_TNRDMD_GPIO_MODE_EEW, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %109

33:                                               ; preds = %26
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %41 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %109

48:                                               ; preds = %39, %33
  %49 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %50 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 64, %51
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %49, i32 %50, i32 0, i32 %52, i32 %53, i32 15)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %7, align 4
  br label %109

59:                                               ; preds = %48
  %60 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %61 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  %70 = load i32, i32* %9, align 4
  %71 = shl i32 1, %70
  %72 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %60, i32 %61, i32 0, i32 67, i32 %69, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %7, align 4
  br label %109

77:                                               ; preds = %68
  %78 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %79 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = shl i32 1, %83
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  %88 = load i32, i32* %9, align 4
  %89 = shl i32 1, %88
  %90 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %78, i32 %79, i32 0, i32 68, i32 %87, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %7, align 4
  br label %109

95:                                               ; preds = %86
  %96 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %97 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %104

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 1, %102
  br label %104

104:                                              ; preds = %101, %100
  %105 = phi i32 [ 0, %100 ], [ %103, %101 ]
  %106 = load i32, i32* %9, align 4
  %107 = shl i32 1, %106
  %108 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %96, i32 %97, i32 0, i32 69, i32 %105, i32 %107)
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %104, %93, %75, %57, %45, %30, %23, %17
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
