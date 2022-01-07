; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_parse_cs_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vce.c_amdgpu_vce_ring_parse_cs_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_cs_parser = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { %struct.amdgpu_ib* }
%struct.amdgpu_ib = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"invalid VCE command length (%d)!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Handle already in use!\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"no session command at start of IB\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"New session without create command!\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_MAX_VCE_HANDLES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vce_ring_parse_cs_vm(%struct.amdgpu_cs_parser* %0, i64 %1) #0 {
  %3 = alloca %struct.amdgpu_cs_parser*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_ib*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.amdgpu_cs_parser* %0, %struct.amdgpu_cs_parser** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %21, i64 %22
  store %struct.amdgpu_ib* %23, %struct.amdgpu_ib** %5, align 8
  store i32 -1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %118, %2
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %125

30:                                               ; preds = %24
  %31 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %31, i64 %32, i32 %33)
  store i64 %34, i64* %15, align 8
  %35 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %35, i64 %36, i32 %38)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %15, align 8
  %41 = icmp ult i64 %40, 8
  br i1 %41, label %46, label %42

42:                                               ; preds = %30
  %43 = load i64, i64* %15, align 8
  %44 = and i64 %43, 3
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %30
  %47 = load i64, i64* %15, align 8
  %48 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %136

51:                                               ; preds = %42
  %52 = load i64, i64* %16, align 8
  switch i64 %52, label %110 [
    i64 1, label %53
    i64 16777217, label %67
    i64 33554433, label %104
  ]

53:                                               ; preds = %51
  %54 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser* %54, i64 %55, i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @amdgpu_vce_validate_handle(%struct.amdgpu_cs_parser* %59, i64 %60, i64* %9)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %13, align 4
  br label %136

66:                                               ; preds = %53
  br label %111

67:                                               ; preds = %51
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %8, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 1, %74
  %76 = sext i32 %75 to i64
  %77 = and i64 %73, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %7, align 8
  %85 = and i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = shl i32 1, %86
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %9, align 8
  %90 = or i64 %89, %88
  store i64 %90, i64* %9, align 8
  br label %103

91:                                               ; preds = %67
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = and i64 %92, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %91
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  br label %136

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %79
  br label %111

104:                                              ; preds = %51
  %105 = load i32, i32* %6, align 4
  %106 = shl i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %7, align 8
  %109 = or i64 %108, %107
  store i64 %109, i64* %7, align 8
  br label %111

110:                                              ; preds = %51
  br label %111

111:                                              ; preds = %110, %104, %103, %66
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, -1
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %13, align 4
  br label %136

118:                                              ; preds = %111
  %119 = load i64, i64* %15, align 8
  %120 = udiv i64 %119, 4
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %14, align 4
  br label %24

125:                                              ; preds = %24
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %8, align 8
  %128 = xor i64 %127, -1
  %129 = and i64 %126, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @ENOENT, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %131, %125
  br label %136

136:                                              ; preds = %135, %114, %98, %64, %46
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %7, align 8
  store i64 %140, i64* %10, align 8
  %141 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %142 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %5, align 8
  %145 = call i32 @amdgpu_ib_free(%struct.TYPE_6__* %143, %struct.amdgpu_ib* %144, i32* null)
  br label %148

146:                                              ; preds = %136
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %146, %139
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %172, %148
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @AMDGPU_MAX_VCE_HANDLES, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %175

153:                                              ; preds = %149
  %154 = load i64, i64* %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = shl i32 1, %155
  %157 = sext i32 %156 to i64
  %158 = and i64 %154, %157
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %3, align 8
  %162 = getelementptr inbounds %struct.amdgpu_cs_parser, %struct.amdgpu_cs_parser* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i32 @atomic_set(i32* %169, i32 0)
  br label %171

171:                                              ; preds = %160, %153
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load i32, i32* %13, align 4
  ret i32 %176
}

declare dso_local i64 @amdgpu_get_ib_value(%struct.amdgpu_cs_parser*, i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @amdgpu_vce_validate_handle(%struct.amdgpu_cs_parser*, i64, i64*) #1

declare dso_local i32 @amdgpu_ib_free(%struct.TYPE_6__*, %struct.amdgpu_ib*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
