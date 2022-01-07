; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_ctb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct_buffer = type { i64*, %struct.guc_ct_buffer_desc* }
%struct.guc_ct_buffer_desc = type { i32, i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"CT: available %d (%u:%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"CT: incomplete message %*ph %*ph %*ph\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"CT: received %*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc_ct_buffer*, i64*)* @ctb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctb_read(%struct.intel_guc_ct_buffer* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_guc_ct_buffer*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.guc_ct_buffer_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_guc_ct_buffer* %0, %struct.intel_guc_ct_buffer** %4, align 8
  store i64* %1, i64** %5, align 8
  %14 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %14, i32 0, i32 1
  %16 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %15, align 8
  store %struct.guc_ct_buffer_desc* %16, %struct.guc_ct_buffer_desc** %6, align 8
  %17 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %18 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %23 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %28 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %9, align 8
  %32 = load %struct.intel_guc_ct_buffer*, %struct.intel_guc_ct_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.intel_guc_ct_buffer, %struct.intel_guc_ct_buffer* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  store i64* %34, i64** %10, align 8
  %35 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %36 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 4
  %39 = call i32 @GEM_BUG_ON(i32 %38)
  %40 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %41 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %42, 4
  %44 = call i32 @GEM_BUG_ON(i32 %43)
  %45 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %46 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 4
  %49 = call i32 @GEM_BUG_ON(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp uge i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @GEM_BUG_ON(i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp uge i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @GEM_BUG_ON(i32 %58)
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %2
  %69 = load i32, i32* @ENODATA, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %189

71:                                               ; preds = %2
  %72 = load i64, i64* %11, align 8
  %73 = icmp ult i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %11, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 (i8*, i32, ...) @CT_DEBUG_DRIVER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %11, align 8
  %88 = icmp ult i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @GEM_BUG_ON(i32 %89)
  %91 = load i64*, i64** %10, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %5, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* %9, align 8
  %100 = urem i64 %98, %99
  store i64 %100, i64* %7, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ct_header_get_len(i64 %103)
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %11, align 8
  %109 = icmp ugt i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %158

113:                                              ; preds = %81
  %114 = load i64*, i64** %5, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %115, %116
  %118 = sub i64 %117, 1
  %119 = load i64, i64* %9, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %7, align 8
  %124 = sub i64 %122, %123
  br label %128

125:                                              ; preds = %113
  %126 = load i64, i64* %11, align 8
  %127 = sub i64 %126, 1
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i64 [ %124, %121 ], [ %127, %125 ]
  %130 = mul i64 4, %129
  %131 = trunc i64 %130 to i32
  %132 = load i64*, i64** %10, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds i64, i64* %132, i64 %133
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* %11, align 8
  %137 = add i64 %135, %136
  %138 = sub i64 %137, 1
  %139 = load i64, i64* %9, align 8
  %140 = icmp ugt i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load i64, i64* %11, align 8
  %143 = sub i64 %142, 1
  %144 = load i64, i64* %9, align 8
  %145 = sub i64 %143, %144
  %146 = load i64, i64* %7, align 8
  %147 = add i64 %145, %146
  br label %149

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148, %141
  %150 = phi i64 [ %147, %141 ], [ 0, %148 ]
  %151 = mul i64 4, %150
  %152 = trunc i64 %151 to i32
  %153 = load i64*, i64** %10, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 4, i64* %114, i32 %131, i64* %134, i32 %152, i64* %154)
  %156 = load i32, i32* @EPROTO, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %189

158:                                              ; preds = %81
  store i32 1, i32* %13, align 4
  br label %159

159:                                              ; preds = %176, %158
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %12, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %159
  %164 = load i64*, i64** %10, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %5, align 8
  %169 = load i32, i32* %13, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %7, align 8
  %173 = add i64 %172, 1
  %174 = load i64, i64* %9, align 8
  %175 = urem i64 %173, %174
  store i64 %175, i64* %7, align 8
  br label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %13, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %159

179:                                              ; preds = %159
  %180 = load i32, i32* %12, align 4
  %181 = mul i32 4, %180
  %182 = load i64*, i64** %5, align 8
  %183 = call i32 (i8*, i32, ...) @CT_DEBUG_DRIVER(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %181, i64* %182)
  %184 = load i64, i64* %7, align 8
  %185 = mul i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = load %struct.guc_ct_buffer_desc*, %struct.guc_ct_buffer_desc** %6, align 8
  %188 = getelementptr inbounds %struct.guc_ct_buffer_desc, %struct.guc_ct_buffer_desc* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 4
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %179, %149, %68
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CT_DEBUG_DRIVER(i8*, i32, ...) #1

declare dso_local i32 @ct_header_get_len(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i64*, i32, i64*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
