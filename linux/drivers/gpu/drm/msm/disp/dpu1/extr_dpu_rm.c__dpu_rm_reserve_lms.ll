; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_lms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c__dpu_rm_reserve_lms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.dpu_rm_requirements = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dpu_rm_hw_iter = type { %struct.dpu_rm_hw_blk* }
%struct.dpu_rm_hw_blk = type { i32, i8* }

@MAX_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid number of lm: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DPU_HW_BLK_LM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"unable to find appropriate mixers\0A\00", align 1
@ENAVAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_rm*, i8*, %struct.dpu_rm_requirements*)* @_dpu_rm_reserve_lms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_rm_reserve_lms(%struct.dpu_rm* %0, i8* %1, %struct.dpu_rm_requirements* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_rm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dpu_rm_requirements*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpu_rm_hw_iter, align 8
  %12 = alloca %struct.dpu_rm_hw_iter, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dpu_rm* %0, %struct.dpu_rm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dpu_rm_requirements* %2, %struct.dpu_rm_requirements** %7, align 8
  %17 = load i32, i32* @MAX_BLOCKS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca %struct.dpu_rm_hw_blk*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MAX_BLOCKS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca %struct.dpu_rm_hw_blk*, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %25 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %31 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %183

37:                                               ; preds = %3
  %38 = load i32, i32* @DPU_HW_BLK_LM, align 4
  %39 = call i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter* %11, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %127, %79, %37
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %43 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.dpu_rm*, %struct.dpu_rm** %5, align 8
  %49 = call i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm* %48, %struct.dpu_rm_hw_iter* %11)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i1 [ false, %40 ], [ %50, %47 ]
  br i1 %52, label %53, label %128

53:                                               ; preds = %51
  %54 = bitcast %struct.dpu_rm_hw_blk** %20 to %struct.dpu_rm_hw_blk***
  %55 = mul nuw i64 8, %18
  %56 = trunc i64 %55 to i32
  %57 = call i32 @memset(%struct.dpu_rm_hw_blk*** %54, i32 0, i32 %56)
  %58 = bitcast %struct.dpu_rm_hw_blk** %23 to %struct.dpu_rm_hw_blk***
  %59 = mul nuw i64 8, %22
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(%struct.dpu_rm_hw_blk*** %58, i32 0, i32 %60)
  store i32 0, i32* %13, align 4
  %62 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %11, i32 0, i32 0
  %63 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %65
  store %struct.dpu_rm_hw_blk* %63, %struct.dpu_rm_hw_blk** %66, align 8
  %67 = load %struct.dpu_rm*, %struct.dpu_rm** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %71
  %73 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %23, i64 %75
  %77 = call i32 @_dpu_rm_check_lm_and_get_connected_blks(%struct.dpu_rm* %67, i8* %68, %struct.dpu_rm_requirements* %69, %struct.dpu_rm_hw_blk* %73, %struct.dpu_rm_hw_blk** %76, %struct.dpu_rm_hw_blk* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %53
  br label %40

80:                                               ; preds = %53
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* @DPU_HW_BLK_LM, align 4
  %84 = call i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter* %12, i32 0, i32 %83)
  br label %85

85:                                               ; preds = %119, %118, %104, %80
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %88 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.dpu_rm*, %struct.dpu_rm** %5, align 8
  %94 = call i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm* %93, %struct.dpu_rm_hw_iter* %12)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %92, %85
  %97 = phi i1 [ false, %85 ], [ %95, %92 ]
  br i1 %97, label %98, label %127

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %11, i32 0, i32 0
  %100 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %99, align 8
  %101 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %12, i32 0, i32 0
  %102 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %101, align 8
  %103 = icmp eq %struct.dpu_rm_hw_blk* %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %85

105:                                              ; preds = %98
  %106 = load %struct.dpu_rm*, %struct.dpu_rm** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %109 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %12, i32 0, i32 0
  %110 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %23, i64 %112
  %114 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %11, i32 0, i32 0
  %115 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %114, align 8
  %116 = call i32 @_dpu_rm_check_lm_and_get_connected_blks(%struct.dpu_rm* %106, i8* %107, %struct.dpu_rm_requirements* %108, %struct.dpu_rm_hw_blk* %110, %struct.dpu_rm_hw_blk** %113, %struct.dpu_rm_hw_blk* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %105
  br label %85

119:                                              ; preds = %105
  %120 = getelementptr inbounds %struct.dpu_rm_hw_iter, %struct.dpu_rm_hw_iter* %12, i32 0, i32 0
  %121 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %123
  store %struct.dpu_rm_hw_blk* %121, %struct.dpu_rm_hw_blk** %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %85

127:                                              ; preds = %96
  br label %40

128:                                              ; preds = %51
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.dpu_rm_requirements*, %struct.dpu_rm_requirements** %7, align 8
  %131 = getelementptr inbounds %struct.dpu_rm_requirements, %struct.dpu_rm_requirements* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %129, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @ENAVAIL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %183

139:                                              ; preds = %128
  store i32 0, i32* %14, align 4
  br label %140

140:                                              ; preds = %178, %139
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @ARRAY_SIZE(%struct.dpu_rm_hw_blk** %20)
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %181

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %146
  %148 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %147, align 8
  %149 = icmp ne %struct.dpu_rm_hw_blk* %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  br label %181

151:                                              ; preds = %144
  %152 = load i8*, i8** %6, align 8
  %153 = load i32, i32* %14, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %154
  %156 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %155, align 8
  %157 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %156, i32 0, i32 1
  store i8* %152, i8** %157, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %23, i64 %160
  %162 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %161, align 8
  %163 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %162, i32 0, i32 1
  store i8* %158, i8** %163, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %20, i64 %165
  %167 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %166, align 8
  %168 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %23, i64 %172
  %174 = load %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk** %173, align 8
  %175 = getelementptr inbounds %struct.dpu_rm_hw_blk, %struct.dpu_rm_hw_blk* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @trace_dpu_rm_reserve_lms(i32 %169, i8* %170, i32 %176)
  br label %178

178:                                              ; preds = %151
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %140

181:                                              ; preds = %150, %140
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %183

183:                                              ; preds = %181, %135, %29
  %184 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DPU_ERROR(i8*, i32) #2

declare dso_local i32 @dpu_rm_init_hw_iter(%struct.dpu_rm_hw_iter*, i32, i32) #2

declare dso_local i64 @_dpu_rm_get_hw_locked(%struct.dpu_rm*, %struct.dpu_rm_hw_iter*) #2

declare dso_local i32 @memset(%struct.dpu_rm_hw_blk***, i32, i32) #2

declare dso_local i32 @_dpu_rm_check_lm_and_get_connected_blks(%struct.dpu_rm*, i8*, %struct.dpu_rm_requirements*, %struct.dpu_rm_hw_blk*, %struct.dpu_rm_hw_blk**, %struct.dpu_rm_hw_blk*) #2

declare dso_local i32 @DPU_DEBUG(i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_rm_hw_blk**) #2

declare dso_local i32 @trace_dpu_rm_reserve_lms(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
