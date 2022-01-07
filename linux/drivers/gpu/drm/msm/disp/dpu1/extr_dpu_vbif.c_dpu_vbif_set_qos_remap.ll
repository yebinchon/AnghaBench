; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_set_qos_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_vbif.c_dpu_vbif_set_qos_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.dpu_hw_vbif**, %struct.dpu_hw_mdp* }
%struct.dpu_hw_vbif = type { i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 (%struct.dpu_hw_vbif*, i32, i32, i32)* }
%struct.TYPE_4__ = type { %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl }
%struct.dpu_vbif_qos_tbl = type { i32, i32* }
%struct.dpu_hw_mdp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dpu_hw_mdp*, i32, i32)* }
%struct.dpu_vbif_set_qos_params = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid vbif %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"qos remap not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"qos tbl not defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vbif:%d xin:%d lvl:%d/%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_vbif_set_qos_remap(%struct.dpu_kms* %0, %struct.dpu_vbif_set_qos_params* %1) #0 {
  %3 = alloca %struct.dpu_kms*, align 8
  %4 = alloca %struct.dpu_vbif_set_qos_params*, align 8
  %5 = alloca %struct.dpu_hw_vbif*, align 8
  %6 = alloca %struct.dpu_hw_mdp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpu_vbif_qos_tbl*, align 8
  %9 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %3, align 8
  store %struct.dpu_vbif_set_qos_params* %1, %struct.dpu_vbif_set_qos_params** %4, align 8
  store %struct.dpu_hw_vbif* null, %struct.dpu_hw_vbif** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %11 = icmp ne %struct.dpu_kms* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %14 = icmp ne %struct.dpu_vbif_set_qos_params* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %17 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %16, i32 0, i32 1
  %18 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %17, align 8
  %19 = icmp ne %struct.dpu_hw_mdp* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %12, %2
  %21 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %188

22:                                               ; preds = %15
  %23 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %24 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %23, i32 0, i32 1
  %25 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %24, align 8
  store %struct.dpu_hw_mdp* %25, %struct.dpu_hw_mdp** %6, align 8
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %65, %22
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %29 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %28, i32 0, i32 0
  %30 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %29, align 8
  %31 = call i32 @ARRAY_SIZE(%struct.dpu_hw_vbif** %30)
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %26
  %34 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %35 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %34, i32 0, i32 0
  %36 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %36, i64 %38
  %40 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %39, align 8
  %41 = icmp ne %struct.dpu_hw_vbif* %40, null
  br i1 %41, label %42, label %64

42:                                               ; preds = %33
  %43 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %44 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %43, i32 0, i32 0
  %45 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %45, i64 %47
  %49 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %48, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %53 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.dpu_kms*, %struct.dpu_kms** %3, align 8
  %58 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %57, i32 0, i32 0
  %59 = load %struct.dpu_hw_vbif**, %struct.dpu_hw_vbif*** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %59, i64 %61
  %63 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %62, align 8
  store %struct.dpu_hw_vbif* %63, %struct.dpu_hw_vbif** %5, align 8
  br label %68

64:                                               ; preds = %42, %33
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %26

68:                                               ; preds = %56, %26
  %69 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %70 = icmp ne %struct.dpu_hw_vbif* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %73 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %78 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %79)
  br label %188

81:                                               ; preds = %71
  %82 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %83 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dpu_hw_vbif*, i32, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.dpu_hw_vbif*, i32, i32, i32)* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %89 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.dpu_hw_mdp*, i32, i32)* %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %87, %81
  %94 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %188

95:                                               ; preds = %87
  %96 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %97 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %102 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  br label %110

105:                                              ; preds = %95
  %106 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %107 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi %struct.dpu_vbif_qos_tbl* [ %104, %100 ], [ %109, %105 ]
  store %struct.dpu_vbif_qos_tbl* %111, %struct.dpu_vbif_qos_tbl** %8, align 8
  %112 = load %struct.dpu_vbif_qos_tbl*, %struct.dpu_vbif_qos_tbl** %8, align 8
  %113 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load %struct.dpu_vbif_qos_tbl*, %struct.dpu_vbif_qos_tbl** %8, align 8
  %118 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %116, %110
  %122 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %188

123:                                              ; preds = %116
  %124 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %125 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %126, align 8
  %128 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %129 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %130 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %127(%struct.dpu_hw_mdp* %128, i32 %131, i32 1)
  store i32 %132, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %172, %123
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.dpu_vbif_qos_tbl*, %struct.dpu_vbif_qos_tbl** %8, align 8
  %136 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %175

139:                                              ; preds = %133
  %140 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %141 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %144 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.dpu_vbif_qos_tbl*, %struct.dpu_vbif_qos_tbl** %8, align 8
  %148 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, ...) @DPU_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %142, i32 %145, i32 %146, i32 %153)
  %155 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %156 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32 (%struct.dpu_hw_vbif*, i32, i32, i32)*, i32 (%struct.dpu_hw_vbif*, i32, i32, i32)** %157, align 8
  %159 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %160 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %161 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.dpu_vbif_qos_tbl*, %struct.dpu_vbif_qos_tbl** %8, align 8
  %165 = getelementptr inbounds %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %158(%struct.dpu_hw_vbif* %159, i32 %162, i32 %163, i32 %170)
  br label %172

172:                                              ; preds = %139
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %133

175:                                              ; preds = %133
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %180 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32 (%struct.dpu_hw_mdp*, i32, i32)*, i32 (%struct.dpu_hw_mdp*, i32, i32)** %181, align 8
  %183 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %6, align 8
  %184 = load %struct.dpu_vbif_set_qos_params*, %struct.dpu_vbif_set_qos_params** %4, align 8
  %185 = getelementptr inbounds %struct.dpu_vbif_set_qos_params, %struct.dpu_vbif_set_qos_params* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %182(%struct.dpu_hw_mdp* %183, i32 %186, i32 0)
  br label %188

188:                                              ; preds = %20, %76, %93, %121, %178, %175
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.dpu_hw_vbif**) #1

declare dso_local i32 @DPU_DEBUG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
