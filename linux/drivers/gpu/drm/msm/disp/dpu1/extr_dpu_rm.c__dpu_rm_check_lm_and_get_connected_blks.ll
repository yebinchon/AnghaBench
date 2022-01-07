; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_check_lm_and_get_connected_blks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_check_lm_and_get_connected_blks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.dpu_rm_requirements = type { i32 }
%struct.dpu_rm_hw_blk = type { i64, i32 }
%struct.dpu_lm_cfg = type { i64, i64, i32 }
%struct.dpu_rm_hw_iter = type { %struct.dpu_rm_hw_blk* }
%struct.TYPE_2__ = type { %struct.dpu_lm_cfg* }

@.str = private unnamed_addr constant [19 x i8] c"check lm %d pp %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"lm %d not peer of lm %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lm %d already reserved\0A\00", align 1
@DPU_HW_BLK_PINGPONG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get pp on lm %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"lm %d pp %d already reserved\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_rm*, i32, %struct.dpu_rm_requirements*, %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*)* @_dpu_rm_check_lm_and_get_connected_blks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_rm_check_lm_and_get_connected_blks(%struct.dpu_rm* %0, i32 %1, %struct.dpu_rm_requirements* %2, %struct.dpu_rm_hw_blk* %3, %struct.dpu_rm_hw_blk** %4, %struct.dpu_rm_hw_blk* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpu_rm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpu_rm_requirements*, align 8
  %11 = alloca %struct.dpu_rm_hw_blk*, align 8
  %12 = alloca %struct.dpu_rm_hw_blk**, align 8
  %13 = alloca %struct.dpu_rm_hw_blk*, align 8
  %14 = alloca %struct.dpu_lm_cfg*, align 8
  %15 = alloca %struct.dpu_rm_hw_iter, align 8
  %16 = alloca %struct.dpu_lm_cfg*, align 8
  store %struct.dpu_rm* %0, %struct.dpu_rm** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dpu_rm_requirements* %2, %struct.dpu_rm_requirements** %10, align 8
  store %struct.dpu_rm_hw_blk* %3, %struct.dpu_rm_hw_blk** %11, align 8
  store %struct.dpu_rm_hw_blk** %4, %struct.dpu_rm_hw_blk*** %12, align 8
  store %struct.dpu_rm_hw_blk* %5, %struct.dpu_rm_hw_blk** %13, align 8
  %17 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %11, align 8
  %18 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_2__* @to_dpu_hw_mixer(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %21, align 8
  store %struct.dpu_lm_cfg* %22, %struct.dpu_lm_cfg** %14, align 8
  %23 = load %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*** %12, align 8
  store %struct.dpu_rm_hw_blk* null, %struct.dpu_rm_hw_blk** %23, align 8
  %24 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %25 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %28 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, i64, ...) @DPU_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %13, align 8
  %32 = icmp ne %struct.dpu_rm_hw_blk* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %6
  %34 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %13, align 8
  %35 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_2__* @to_dpu_hw_mixer(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %38, align 8
  store %struct.dpu_lm_cfg* %39, %struct.dpu_lm_cfg** %16, align 8
  %40 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %41 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %16, align 8
  %44 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %43, i32 0, i32 2
  %45 = call i32 @test_bit(i64 %42, i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %33
  %48 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %49 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %16, align 8
  %52 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i64, ...) @DPU_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %53)
  store i32 0, i32* %7, align 4
  br label %112

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %6
  %57 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %11, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @RESERVED_BY_OTHER(%struct.dpu_rm_hw_blk* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %63 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, i64, ...) @DPU_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  store i32 0, i32* %7, align 4
  br label %112

66:                                               ; preds = %56
  %67 = load i32, i32* @DPU_HW_BLK_PINGPONG, align 4
  %68 = call i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter* %15, i32 0, i32 %67)
  br label %69

69:                                               ; preds = %86, %66
  %70 = load %struct.dpu_rm*, %struct.dpu_rm** %8, align 8
  %71 = call i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm* %70, %struct.dpu_rm_hw_iter* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %15, i32 0, i32 0
  %75 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %74, align 8
  %76 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %79 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %15, i32 0, i32 0
  %84 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %83, align 8
  %85 = load %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*** %12, align 8
  store %struct.dpu_rm_hw_blk* %84, %struct.dpu_rm_hw_blk** %85, align 8
  br label %87

86:                                               ; preds = %73
  br label %69

87:                                               ; preds = %82, %69
  %88 = load %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*** %12, align 8
  %89 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %88, align 8
  %90 = icmp ne %struct.dpu_rm_hw_blk* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load %struct.dpu_lm_cfg*, %struct.dpu_lm_cfg** %14, align 8
  %93 = getelementptr inbounds %struct.dpu_lm_cfg, %struct.dpu_lm_cfg* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  store i32 0, i32* %7, align 4
  br label %112

96:                                               ; preds = %87
  %97 = load %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*** %12, align 8
  %98 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @RESERVED_BY_OTHER(%struct.dpu_rm_hw_blk* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %11, align 8
  %104 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*** %12, align 8
  %107 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %106, align 8
  %108 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (i8*, i64, ...) @DPU_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %105, i64 %109)
  store i32 0, i32* %7, align 4
  br label %112

111:                                              ; preds = %96
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %102, %91, %61, %47
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_2__* @to_dpu_hw_mixer(i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i64 @RESERVED_BY_OTHER(%struct.dpu_rm_hw_blk*, i32) #1

declare dso_local i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter*, i32, i32) #1

declare dso_local i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm*, %struct.dpu_rm_hw_iter*) #1

declare dso_local i32 @DPU_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
