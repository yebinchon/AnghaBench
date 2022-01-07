; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_validate_bin_cl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_validate.c_vc4_validate_bin_cl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_info = type { i64, i32, i64 (%struct.vc4_exec_info*, i8*, i8*)* }
%struct.vc4_exec_info = type { i64, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.drm_device = type { i32 }

@cmd_info = common dso_local global %struct.cmd_info* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"0x%08x: packet %d out of bounds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"0x%08x: packet %d invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"0x%08x: packet %d (%s) length 0x%08x exceeds bounds (0x%08x)\0A\00", align 1
@VC4_PACKET_GEM_HANDLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"0x%08x: packet %d (%s) failed to validate\0A\00", align 1
@VC4_PACKET_HALT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"Bin CL missing VC4_PACKET_START_TILE_BINNING\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Bin CL missing VC4_PACKET_INCREMENT_SEMAPHORE + VC4_PACKET_FLUSH\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_validate_bin_cl(%struct.drm_device* %0, i8* %1, i8* %2, %struct.vc4_exec_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vc4_exec_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.cmd_info*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.vc4_exec_info* %3, %struct.vc4_exec_info** %9, align 8
  %17 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %18 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %22

22:                                               ; preds = %139, %4
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %140

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr i8, i8* %27, i64 %28
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr i8, i8* %30, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.cmd_info*, %struct.cmd_info** @cmd_info, align 8
  %38 = call i64 @ARRAY_SIZE(%struct.cmd_info* %37)
  %39 = icmp uge i64 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %15, align 8
  %43 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %171

46:                                               ; preds = %26
  %47 = load %struct.cmd_info*, %struct.cmd_info** @cmd_info, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %47, i64 %48
  store %struct.cmd_info* %49, %struct.cmd_info** %16, align 8
  %50 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %51 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %171

60:                                               ; preds = %46
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %63 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %60
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %72 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %75 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70, i32 %73, i64 %76, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %171

83:                                               ; preds = %60
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* @VC4_PACKET_GEM_HANDLES, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i8*, i8** %13, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %91 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i8* %88, i8* %89, i64 %92)
  br label %94

94:                                               ; preds = %87, %83
  %95 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %96 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %95, i32 0, i32 2
  %97 = load i64 (%struct.vc4_exec_info*, i8*, i8*)*, i64 (%struct.vc4_exec_info*, i8*, i8*)** %96, align 8
  %98 = icmp ne i64 (%struct.vc4_exec_info*, i8*, i8*)* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %101 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %100, i32 0, i32 2
  %102 = load i64 (%struct.vc4_exec_info*, i8*, i8*)*, i64 (%struct.vc4_exec_info*, i8*, i8*)** %101, align 8
  %103 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr i8, i8* %104, i64 1
  %106 = load i8*, i8** %14, align 8
  %107 = getelementptr i8, i8* %106, i64 1
  %108 = call i64 %102(%struct.vc4_exec_info* %103, i8* %105, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %99
  %111 = load i64, i64* %12, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %114 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %111, i64 %112, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %171

119:                                              ; preds = %99, %94
  %120 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %121 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %12, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %12, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* @VC4_PACKET_GEM_HANDLES, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  %129 = load %struct.cmd_info*, %struct.cmd_info** %16, align 8
  %130 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %11, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %11, align 8
  br label %134

134:                                              ; preds = %128, %119
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* @VC4_PACKET_HALT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %140

139:                                              ; preds = %134
  br label %22

140:                                              ; preds = %138, %22
  %141 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %142 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %11, align 8
  %145 = add nsw i64 %143, %144
  %146 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %147 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %146, i32 0, i32 4
  store i64 %145, i64* %147, align 8
  %148 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %149 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %140
  %153 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %171

156:                                              ; preds = %140
  %157 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %158 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %9, align 8
  %163 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161, %156
  %167 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %5, align 4
  br label %171

170:                                              ; preds = %161
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %166, %152, %110, %68, %54, %40
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i64 @ARRAY_SIZE(%struct.cmd_info*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
