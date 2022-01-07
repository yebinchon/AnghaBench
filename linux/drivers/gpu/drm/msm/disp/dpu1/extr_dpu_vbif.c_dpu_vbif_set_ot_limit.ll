; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_set_ot_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_set_ot_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.dpu_hw_vbif**, %struct.dpu_hw_mdp* }
%struct.dpu_hw_vbif = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32)* }
%struct.dpu_hw_mdp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dpu_hw_mdp*, i32, i32)* }
%struct.dpu_vbif_set_ot_params = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid arguments vbif %d mdp %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_vbif_set_ot_limit(%struct.dpu_kms* %0, %struct.dpu_vbif_set_ot_params* %1) #0 {
  %3 = alloca %struct.dpu_kms*, align 8
  %4 = alloca %struct.dpu_vbif_set_ot_params*, align 8
  %5 = alloca %struct.dpu_hw_vbif*, align 8
  %6 = alloca %struct.dpu_hw_mdp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %3, align 8
  store %struct.dpu_vbif_set_ot_params* %1, %struct.dpu_vbif_set_ot_params** %4, align 8
  store %struct.dpu_hw_vbif* null, %struct.dpu_hw_vbif** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %12 = icmp ne %struct.dpu_kms* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %203

15:                                               ; preds = %2
  %16 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %16, i32 0, i32 1
  %18 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %17, align 8
  store %struct.dpu_hw_mdp* %18, %struct.dpu_hw_mdp** %6, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %58, %15
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %21, i32 0, i32 0
  %23 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %22, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.dpu_hw_vbif** %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %28 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %27, i32 0, i32 0
  %29 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %29, i64 %31
  %33 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %32, align 8
  %34 = icmp ne %struct.dpu_hw_vbif* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %26
  %36 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %37 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %36, i32 0, i32 0
  %38 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %38, i64 %40
  %42 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %41, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %46 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %35
  %50 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %51 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %50, i32 0, i32 0
  %52 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %52, i64 %54
  %56 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %55, align 8
  store %struct.dpu_hw_vbif* %56, %struct.dpu_hw_vbif** %5, align 8
  br label %57

57:                                               ; preds = %49, %35, %26
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %19

61:                                               ; preds = %19
  %62 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %63 = icmp ne %struct.dpu_hw_vbif* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %66 = icmp ne %struct.dpu_hw_mdp* %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %69 = icmp ne %struct.dpu_hw_vbif* %68, null
  %70 = zext i1 %69 to i32
  %71 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %72 = icmp ne %struct.dpu_hw_mdp* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73)
  br label %203

75:                                               ; preds = %64
  %76 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %77 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %78, align 8
  %80 = icmp ne i32 (%struct.dpu_hw_mdp*, i32, i32)* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %83 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32 (%struct.dpu_hw_vbif*, i32, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.dpu_hw_vbif*, i32, i32, i32)* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %89 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.dpu_hw_vbif*, i32, i32)* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %87, %81, %75
  br label %203

94:                                               ; preds = %87
  %95 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %96 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i32 (%struct.dpu_hw_vbif*, i32)*, i32 (%struct.dpu_hw_vbif*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.dpu_hw_vbif*, i32)* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %102 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %107 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32 (%struct.dpu_hw_vbif*, i32)*, i32 (%struct.dpu_hw_vbif*, i32)** %108, align 8
  %110 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %111 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %112 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %109(%struct.dpu_hw_vbif* %110, i32 %113)
  br label %115

115:                                              ; preds = %105, %100, %94
  %116 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %117 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %118 = call i32 @_dpu_vbif_get_ot_limit(%struct.dpu_hw_vbif* %116, %struct.dpu_vbif_set_ot_params* %117)
  %119 = and i32 %118, 255
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %203

123:                                              ; preds = %115
  %124 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %125 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %128 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %132 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @trace_dpu_perf_set_ot(i32 %126, i32 %129, i32 %130, i64 %133)
  %135 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %136 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %137, align 8
  %139 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %140 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %141 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %138(%struct.dpu_hw_mdp* %139, i32 %142, i32 1)
  store i32 %143, i32* %7, align 4
  %144 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %145 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32 (%struct.dpu_hw_vbif*, i32, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32, i32)** %146, align 8
  %148 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %149 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %150 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %153 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 %147(%struct.dpu_hw_vbif* %148, i32 %151, i32 %154, i32 %155)
  %157 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %158 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32)** %159, align 8
  %161 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %162 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %163 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 %160(%struct.dpu_hw_vbif* %161, i32 %164, i32 1)
  %166 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %167 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %168 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @_dpu_vbif_wait_for_xin_halt(%struct.dpu_hw_vbif* %166, i32 %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %123
  %174 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %175 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %178 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @trace_dpu_vbif_wait_xin_halt_fail(i64 %176, i32 %179)
  br label %181

181:                                              ; preds = %173, %123
  %182 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %183 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32 (%struct.dpu_hw_vbif*, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32)** %184, align 8
  %186 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %187 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %188 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 %185(%struct.dpu_hw_vbif* %186, i32 %189, i32 0)
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %181
  %194 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %195 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %196, align 8
  %198 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %199 = load %struct.dpu_vbif_set_ot_params*, %struct.dpu_vbif_set_ot_params** %4, align 8
  %200 = getelementptr inbounds %struct.dpu_vbif_set_ot_params, %struct.dpu_vbif_set_ot_params* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %197(%struct.dpu_hw_mdp* %198, i32 %201, i32 0)
  br label %203

203:                                              ; preds = %13, %67, %93, %122, %193, %181
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_hw_vbif**) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @_dpu_vbif_get_ot_limit(%struct.dpu_hw_vbif*, %struct.dpu_vbif_set_ot_params*) #1

declare dso_local i32 @trace_dpu_perf_set_ot(i32, i32, i32, i64) #1

declare dso_local i32 @_dpu_vbif_wait_for_xin_halt(%struct.dpu_hw_vbif*, i32) #1

declare dso_local i32 @trace_dpu_vbif_wait_xin_halt_fail(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
