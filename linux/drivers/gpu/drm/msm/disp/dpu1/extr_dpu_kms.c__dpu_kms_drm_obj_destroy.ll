; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_drm_obj_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c__dpu_kms_drm_obj_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32, i32, i32, i32, %struct.TYPE_15__**, %struct.TYPE_16__**, %struct.TYPE_17__**, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_17__*)* }
%struct.TYPE_18__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_18__*)* }

@.str = private unnamed_addr constant [17 x i8] c"invalid dpu_kms\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid dev\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid dev_private\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_kms*)* @_dpu_kms_drm_obj_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_kms_drm_obj_destroy(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.msm_drm_private*, align 8
  %4 = alloca i32, align 4
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %5 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %6 = icmp ne %struct.dpu_kms* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %161

9:                                                ; preds = %1
  %10 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %11 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %161

16:                                               ; preds = %9
  %17 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %18 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.msm_drm_private*, %struct.msm_drm_private** %20, align 8
  %22 = icmp ne %struct.msm_drm_private* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %161

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %29 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.msm_drm_private*, %struct.msm_drm_private** %31, align 8
  store %struct.msm_drm_private* %32, %struct.msm_drm_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %59, %27
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %36 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %41 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %40, i32 0, i32 7
  %42 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %42, i64 %44
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_18__*)*, i32 (%struct.TYPE_18__*)** %49, align 8
  %51 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %52 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %51, i32 0, i32 7
  %53 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %53, i64 %55
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = call i32 %50(%struct.TYPE_18__* %57)
  br label %59

59:                                               ; preds = %39
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %33

62:                                               ; preds = %33
  %63 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %64 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %91, %62
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %68 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %73 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %72, i32 0, i32 6
  %74 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %74, i64 %76
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %81, align 8
  %83 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %84 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %83, i32 0, i32 6
  %85 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %85, i64 %87
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = call i32 %82(%struct.TYPE_17__* %89)
  br label %91

91:                                               ; preds = %71
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %65

94:                                               ; preds = %65
  %95 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %96 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %123, %94
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %100 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %105 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %104, i32 0, i32 5
  %106 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %106, i64 %108
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %113, align 8
  %115 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %116 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %115, i32 0, i32 5
  %117 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %117, i64 %119
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = call i32 %114(%struct.TYPE_16__* %121)
  br label %123

123:                                              ; preds = %103
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %97

126:                                              ; preds = %97
  %127 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %128 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %155, %126
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %132 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %129
  %136 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %137 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %136, i32 0, i32 4
  %138 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %138, i64 %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %145, align 8
  %147 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %148 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %147, i32 0, i32 4
  %149 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %148, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %149, i64 %151
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = call i32 %146(%struct.TYPE_15__* %153)
  br label %155

155:                                              ; preds = %135
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %129

158:                                              ; preds = %129
  %159 = load %struct.msm_drm_private*, %struct.msm_drm_private** %3, align 8
  %160 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %159, i32 0, i32 3
  store i32 0, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %23, %14, %7
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
