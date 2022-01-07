; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }
%struct.dm_arg_set = type { i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%llu+%llu%c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/%u%c\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"precise_timestamps\00", align 1
@STAT_PRECISE_TIMESTAMPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"histogram:\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@dm_internal_suspend_fast = common dso_local global i32 0, align 4
@dm_internal_resume_fast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i32, i8**, i8*, i32)* @message_stats_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_stats_create(%struct.mapped_device* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64*, align 8
  %25 = alloca %struct.dm_arg_set, align 8
  %26 = alloca %struct.dm_arg_set, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store %struct.mapped_device* %0, %struct.mapped_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i64* null, i64** %24, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %212

32:                                               ; preds = %5
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %25, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %25, i32 0, i32 1
  store i8** %35, i8*** %36, align 8
  %37 = call i32 @dm_consume_args(%struct.dm_arg_set* %25, i32 1)
  %38 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %38, i8** %27, align 8
  %39 = load i8*, i8** %27, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  store i64 0, i64* %15, align 8
  %43 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %44 = call i64 @dm_get_size(%struct.mapped_device* %43)
  store i64 %44, i64* %17, align 8
  %45 = load i64, i64* %17, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i64 1, i64* %17, align 8
  br label %48

48:                                               ; preds = %47, %42
  br label %63

49:                                               ; preds = %32
  %50 = load i8*, i8** %27, align 8
  %51 = call i32 (i8*, i8*, ...) @sscanf(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %15, i64* %17, i8* %14)
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %53, %49
  br label %212

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %17, align 8
  %66 = add i64 %64, %65
  store i64 %66, i64* %16, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %212

71:                                               ; preds = %63
  %72 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %72, i8** %27, align 8
  %73 = load i8*, i8** %27, align 8
  %74 = call i32 (i8*, i8*, ...) @sscanf(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %19, i8* %14)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %219

82:                                               ; preds = %76
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %18, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i32, i32* %19, align 4
  %88 = call i64 @do_div(i64 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %18, align 8
  br label %93

93:                                               ; preds = %90, %82
  %94 = load i64, i64* %18, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i64 1, i64* %18, align 8
  br label %97

97:                                               ; preds = %96, %93
  br label %111

98:                                               ; preds = %71
  %99 = load i8*, i8** %27, align 8
  %100 = call i32 (i8*, i8*, ...) @sscanf(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %18, i8* %14)
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %109, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %18, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %18, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106, %102, %98
  br label %212

110:                                              ; preds = %106
  br label %111

111:                                              ; preds = %110, %97
  %112 = bitcast %struct.dm_arg_set* %26 to i8*
  %113 = bitcast %struct.dm_arg_set* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %114, i8** %27, align 8
  %115 = load i8*, i8** %27, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %158

117:                                              ; preds = %111
  %118 = load i8*, i8** %27, align 8
  %119 = call i32 (i8*, i8*, ...) @sscanf(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %28, i8* %14)
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %158

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %156, %121
  %123 = load i32, i32* %28, align 4
  %124 = add i32 %123, -1
  store i32 %124, i32* %28, align 4
  %125 = icmp ne i32 %123, 0
  br i1 %125, label %126, label %157

126:                                              ; preds = %122
  %127 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %127, i8** %27, align 8
  %128 = load i8*, i8** %27, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  br label %212

131:                                              ; preds = %126
  %132 = load i8*, i8** %27, align 8
  %133 = call i32 @strcasecmp(i8* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* @STAT_PRECISE_TIMESTAMPS, align 4
  %137 = load i32, i32* %22, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %22, align 4
  br label %156

139:                                              ; preds = %131
  %140 = load i8*, i8** %27, align 8
  %141 = call i32 @strncasecmp(i8* %140, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %23, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %212

147:                                              ; preds = %143
  %148 = load i8*, i8** %27, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 10
  %150 = call i32 @parse_histogram(i8* %149, i32* %23, i64** %24)
  store i32 %150, i32* %12, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  br label %215

153:                                              ; preds = %147
  br label %155

154:                                              ; preds = %139
  br label %212

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %135
  br label %122

157:                                              ; preds = %122
  br label %161

158:                                              ; preds = %117, %111
  %159 = bitcast %struct.dm_arg_set* %25 to i8*
  %160 = bitcast %struct.dm_arg_set* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 16, i1 false)
  br label %161

161:                                              ; preds = %158, %157
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %162 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %162, i8** %27, align 8
  %163 = load i8*, i8** %27, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i8*, i8** %27, align 8
  store i8* %166, i8** %20, align 8
  br label %167

167:                                              ; preds = %165, %161
  %168 = call i8* @dm_shift_arg(%struct.dm_arg_set* %25)
  store i8* %168, i8** %27, align 8
  %169 = load i8*, i8** %27, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i8*, i8** %27, align 8
  store i8* %172, i8** %21, align 8
  br label %173

173:                                              ; preds = %171, %167
  %174 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %25, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %212

178:                                              ; preds = %173
  %179 = load i8*, i8** %10, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @INT_MAX, align 4
  %182 = call i32 @snprintf(i8* %179, i32 %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  %183 = load i8*, i8** %10, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i64 @dm_message_test_buffer_overflow(i8* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  store i32 1, i32* %12, align 4
  br label %215

188:                                              ; preds = %178
  %189 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %190 = call i32 @dm_get_stats(%struct.mapped_device* %189)
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* %16, align 8
  %193 = load i64, i64* %18, align 8
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* %23, align 4
  %196 = load i64*, i64** %24, align 8
  %197 = load i8*, i8** %20, align 8
  %198 = load i8*, i8** %21, align 8
  %199 = load i32, i32* @dm_internal_suspend_fast, align 4
  %200 = load i32, i32* @dm_internal_resume_fast, align 4
  %201 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %202 = call i32 @dm_stats_create(i32 %190, i64 %191, i64 %192, i64 %193, i32 %194, i32 %195, i64* %196, i8* %197, i8* %198, i32 %199, i32 %200, %struct.mapped_device* %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %188
  %206 = load i32, i32* %13, align 4
  store i32 %206, i32* %12, align 4
  br label %215

207:                                              ; preds = %188
  %208 = load i8*, i8** %10, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @snprintf(i8* %208, i32 %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  store i32 1, i32* %12, align 4
  br label %215

212:                                              ; preds = %177, %154, %146, %130, %109, %70, %61, %31
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %212, %207, %205, %187, %152
  %216 = load i64*, i64** %24, align 8
  %217 = call i32 @kfree(i64* %216)
  %218 = load i32, i32* %12, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %215, %79
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @dm_get_size(%struct.mapped_device*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @do_div(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_histogram(i8*, i32*, i64**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @dm_message_test_buffer_overflow(i8*, i32) #1

declare dso_local i32 @dm_stats_create(i32, i64, i64, i64, i32, i32, i64*, i8*, i8*, i32, i32, %struct.mapped_device*) #1

declare dso_local i32 @dm_get_stats(%struct.mapped_device*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
