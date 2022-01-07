; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.msm_display_topology = type { i32 }
%struct.dpu_rm_hw_iter = type { %struct.dpu_rm_hw_blk* }
%struct.dpu_rm_hw_blk = type { i32, i32, i32 }
%struct.dpu_hw_ctl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_BLOCKS = common dso_local global i32 0, align 4
@DPU_HW_BLK_CTL = common dso_local global i32 0, align 4
@DPU_CTL_SPLIT_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ctl %d caps 0x%lX\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ctl %d match\0A\00", align 1
@ENAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_rm*, i32, %struct.msm_display_topology*)* @_dpu_rm_reserve_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_rm_reserve_ctls(%struct.dpu_rm* %0, i32 %1, %struct.msm_display_topology* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_rm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msm_display_topology*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dpu_rm_hw_iter, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dpu_hw_ctl*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dpu_rm* %0, %struct.dpu_rm** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.msm_display_topology* %2, %struct.msm_display_topology** %7, align 8
  %18 = load i32, i32* @MAX_BLOCKS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca %struct.dpu_rm_hw_blk*, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = bitcast %struct.dpu_rm_hw_blk** %21 to %struct.dpu_rm_hw_blk***
  %23 = mul nuw i64 8, %19
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(%struct.dpu_rm_hw_blk*** %22, i32 0, i32 %24)
  %26 = load %struct.msm_display_topology*, %struct.msm_display_topology** %7, align 8
  %27 = getelementptr inbounds %struct.msm_display_topology, %struct.msm_display_topology* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.msm_display_topology*, %struct.msm_display_topology** %7, align 8
  %30 = call i32 @_dpu_rm_needs_split_display(%struct.msm_display_topology* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @DPU_HW_BLK_CTL, align 4
  %32 = call i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter* %10, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %86, %69, %53, %3
  %34 = load %struct.dpu_rm*, %struct.dpu_rm** %5, align 8
  %35 = call i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm* %34, %struct.dpu_rm_hw_iter* %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %39 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %38, align 8
  %40 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.dpu_hw_ctl* @to_dpu_hw_ctl(i32 %41)
  store %struct.dpu_hw_ctl* %42, %struct.dpu_hw_ctl** %14, align 8
  %43 = load %struct.dpu_hw_ctl*, %struct.dpu_hw_ctl** %14, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_ctl, %struct.dpu_hw_ctl* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %49 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @RESERVED_BY_OTHER(%struct.dpu_rm_hw_blk* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  br label %33

54:                                               ; preds = %37
  %55 = load i32, i32* @DPU_CTL_SPLIT_DISPLAY, align 4
  %56 = call i64 @BIT(i32 %55)
  %57 = load i64, i64* %15, align 8
  %58 = and i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %61 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %60, align 8
  %62 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %15, align 8
  %65 = call i32 (i8*, i32, ...) @DPU_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %33

70:                                               ; preds = %54
  %71 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %72 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %21, i64 %74
  store %struct.dpu_rm_hw_blk* %72, %struct.dpu_rm_hw_blk** %75, align 8
  %76 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %10, i32 0, i32 0
  %77 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %76, align 8
  %78 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, ...) @DPU_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %87

86:                                               ; preds = %70
  br label %33

87:                                               ; preds = %85, %33
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @ENAVAIL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %124

94:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @ARRAY_SIZE(%struct.dpu_rm_hw_blk** %21)
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ false, %95 ], [ %102, %99 ]
  br i1 %104, label %105, label %123

105:                                              ; preds = %103
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %21, i64 %108
  %110 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %109, align 8
  %111 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %110, i32 0, i32 1
  store i32 %106, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %21, i64 %113
  %115 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %114, align 8
  %116 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @trace_dpu_rm_reserve_ctls(i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %95

123:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %123, %91
  %125 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.dpu_rm_hw_blk***, i32, i32) #2

declare dso_local i32 @_dpu_rm_needs_split_display(%struct.msm_display_topology*) #2

declare dso_local i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter*, i32, i32) #2

declare dso_local i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm*, %struct.dpu_rm_hw_iter*) #2

declare dso_local %struct.dpu_hw_ctl* @to_dpu_hw_ctl(i32) #2

declare dso_local i64 @RESERVED_BY_OTHER(%struct.dpu_rm_hw_blk*, i32) #2

declare dso_local i64 @BIT(i32) #2

declare dso_local i32 @DPU_DEBUG(i8*, i32, ...) #2

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_rm_hw_blk**) #2

declare dso_local i32 @trace_dpu_rm_reserve_ctls(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
