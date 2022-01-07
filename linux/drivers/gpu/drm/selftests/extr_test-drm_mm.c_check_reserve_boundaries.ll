; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_check_reserve_boundaries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_check_reserve_boundaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.boundary = type { i32, i32, i8* }
%struct.drm_mm_node = type { i32 }
%struct.boundary.0 = type { i32, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"{ 0, 0}\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"{ -size, 0}\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"{ size, 0}\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"{ size * count, 0}\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"{ -size, size}\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"{ -size, -size}\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"{ -size, 2*size}\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"{ 0, -size}\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"{ size, -size}\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"{ count*size, size}\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"{ count*size, -size}\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"{ count*size, count*size}\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"{ count*size, -count*size}\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"{ count*size, -(count+1)*size}\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"{ (count+1)*size, size}\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"{ (count+1)*size, -size}\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"{ (count+1)*size, -2*size}\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"boundary[%d:%s] failed, count=%u, size=%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mm*, i32, i32)* @check_reserve_boundaries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reserve_boundaries(%struct.drm_mm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_mm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [17 x %struct.boundary], align 16
  %9 = alloca %struct.drm_mm_node, align 4
  %10 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [17 x %struct.boundary], [17 x %struct.boundary]* %8, i64 0, i64 0
  %12 = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i32 0, i32 0
  store i32 0, i32* %12, align 16
  %13 = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.boundary, %struct.boundary* %11, i64 1
  %16 = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i32 0, i32 0
  %17 = load i32, i32* %7, align 4
  %18 = sub i32 0, %17
  store i32 %18, i32* %16, align 16
  %19 = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = getelementptr inbounds %struct.boundary, %struct.boundary* %15, i64 1
  %22 = getelementptr inbounds %struct.boundary, %struct.boundary* %21, i32 0, i32 0
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %22, align 16
  %24 = getelementptr inbounds %struct.boundary, %struct.boundary* %21, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.boundary, %struct.boundary* %21, i32 0, i32 2
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %25, align 8
  %26 = getelementptr inbounds %struct.boundary, %struct.boundary* %21, i64 1
  %27 = getelementptr inbounds %struct.boundary, %struct.boundary* %26, i32 0, i32 0
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul i32 %28, %29
  store i32 %30, i32* %27, align 16
  %31 = getelementptr inbounds %struct.boundary, %struct.boundary* %26, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.boundary, %struct.boundary* %26, i32 0, i32 2
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.boundary, %struct.boundary* %26, i64 1
  %34 = getelementptr inbounds %struct.boundary, %struct.boundary* %33, i32 0, i32 0
  %35 = load i32, i32* %7, align 4
  %36 = sub i32 0, %35
  store i32 %36, i32* %34, align 16
  %37 = getelementptr inbounds %struct.boundary, %struct.boundary* %33, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.boundary, %struct.boundary* %33, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %39, align 8
  %40 = getelementptr inbounds %struct.boundary, %struct.boundary* %33, i64 1
  %41 = getelementptr inbounds %struct.boundary, %struct.boundary* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = sub i32 0, %42
  store i32 %43, i32* %41, align 16
  %44 = getelementptr inbounds %struct.boundary, %struct.boundary* %40, i32 0, i32 1
  %45 = load i32, i32* %7, align 4
  %46 = sub i32 0, %45
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.boundary, %struct.boundary* %40, i32 0, i32 2
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %47, align 8
  %48 = getelementptr inbounds %struct.boundary, %struct.boundary* %40, i64 1
  %49 = getelementptr inbounds %struct.boundary, %struct.boundary* %48, i32 0, i32 0
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 0, %50
  store i32 %51, i32* %49, align 16
  %52 = getelementptr inbounds %struct.boundary, %struct.boundary* %48, i32 0, i32 1
  %53 = load i32, i32* %7, align 4
  %54 = mul i32 2, %53
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds %struct.boundary, %struct.boundary* %48, i32 0, i32 2
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %55, align 8
  %56 = getelementptr inbounds %struct.boundary, %struct.boundary* %48, i64 1
  %57 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i32 0, i32 0
  store i32 0, i32* %57, align 16
  %58 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i32 0, i32 1
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 0, %59
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i32 0, i32 2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %61, align 8
  %62 = getelementptr inbounds %struct.boundary, %struct.boundary* %56, i64 1
  %63 = getelementptr inbounds %struct.boundary, %struct.boundary* %62, i32 0, i32 0
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %63, align 16
  %65 = getelementptr inbounds %struct.boundary, %struct.boundary* %62, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = sub i32 0, %66
  store i32 %67, i32* %65, align 4
  %68 = getelementptr inbounds %struct.boundary, %struct.boundary* %62, i32 0, i32 2
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %68, align 8
  %69 = getelementptr inbounds %struct.boundary, %struct.boundary* %62, i64 1
  %70 = getelementptr inbounds %struct.boundary, %struct.boundary* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul i32 %71, %72
  store i32 %73, i32* %70, align 16
  %74 = getelementptr inbounds %struct.boundary, %struct.boundary* %69, i32 0, i32 1
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds %struct.boundary, %struct.boundary* %69, i32 0, i32 2
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %76, align 8
  %77 = getelementptr inbounds %struct.boundary, %struct.boundary* %69, i64 1
  %78 = getelementptr inbounds %struct.boundary, %struct.boundary* %77, i32 0, i32 0
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %79, %80
  store i32 %81, i32* %78, align 16
  %82 = getelementptr inbounds %struct.boundary, %struct.boundary* %77, i32 0, i32 1
  %83 = load i32, i32* %7, align 4
  %84 = sub i32 0, %83
  store i32 %84, i32* %82, align 4
  %85 = getelementptr inbounds %struct.boundary, %struct.boundary* %77, i32 0, i32 2
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8** %85, align 8
  %86 = getelementptr inbounds %struct.boundary, %struct.boundary* %77, i64 1
  %87 = getelementptr inbounds %struct.boundary, %struct.boundary* %86, i32 0, i32 0
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = mul i32 %88, %89
  store i32 %90, i32* %87, align 16
  %91 = getelementptr inbounds %struct.boundary, %struct.boundary* %86, i32 0, i32 1
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = mul i32 %92, %93
  store i32 %94, i32* %91, align 4
  %95 = getelementptr inbounds %struct.boundary, %struct.boundary* %86, i32 0, i32 2
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i8** %95, align 8
  %96 = getelementptr inbounds %struct.boundary, %struct.boundary* %86, i64 1
  %97 = getelementptr inbounds %struct.boundary, %struct.boundary* %96, i32 0, i32 0
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul i32 %98, %99
  store i32 %100, i32* %97, align 16
  %101 = getelementptr inbounds %struct.boundary, %struct.boundary* %96, i32 0, i32 1
  %102 = load i32, i32* %6, align 4
  %103 = sub i32 0, %102
  %104 = load i32, i32* %7, align 4
  %105 = mul i32 %103, %104
  store i32 %105, i32* %101, align 4
  %106 = getelementptr inbounds %struct.boundary, %struct.boundary* %96, i32 0, i32 2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %106, align 8
  %107 = getelementptr inbounds %struct.boundary, %struct.boundary* %96, i64 1
  %108 = getelementptr inbounds %struct.boundary, %struct.boundary* %107, i32 0, i32 0
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = mul i32 %109, %110
  store i32 %111, i32* %108, align 16
  %112 = getelementptr inbounds %struct.boundary, %struct.boundary* %107, i32 0, i32 1
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, 1
  %115 = sub i32 0, %114
  %116 = load i32, i32* %7, align 4
  %117 = mul i32 %115, %116
  store i32 %117, i32* %112, align 4
  %118 = getelementptr inbounds %struct.boundary, %struct.boundary* %107, i32 0, i32 2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8** %118, align 8
  %119 = getelementptr inbounds %struct.boundary, %struct.boundary* %107, i64 1
  %120 = getelementptr inbounds %struct.boundary, %struct.boundary* %119, i32 0, i32 0
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, 1
  %123 = load i32, i32* %7, align 4
  %124 = mul i32 %122, %123
  store i32 %124, i32* %120, align 16
  %125 = getelementptr inbounds %struct.boundary, %struct.boundary* %119, i32 0, i32 1
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %125, align 4
  %127 = getelementptr inbounds %struct.boundary, %struct.boundary* %119, i32 0, i32 2
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8** %127, align 8
  %128 = getelementptr inbounds %struct.boundary, %struct.boundary* %119, i64 1
  %129 = getelementptr inbounds %struct.boundary, %struct.boundary* %128, i32 0, i32 0
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  %132 = load i32, i32* %7, align 4
  %133 = mul i32 %131, %132
  store i32 %133, i32* %129, align 16
  %134 = getelementptr inbounds %struct.boundary, %struct.boundary* %128, i32 0, i32 1
  %135 = load i32, i32* %7, align 4
  %136 = sub i32 0, %135
  store i32 %136, i32* %134, align 4
  %137 = getelementptr inbounds %struct.boundary, %struct.boundary* %128, i32 0, i32 2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i8** %137, align 8
  %138 = getelementptr inbounds %struct.boundary, %struct.boundary* %128, i64 1
  %139 = getelementptr inbounds %struct.boundary, %struct.boundary* %138, i32 0, i32 0
  %140 = load i32, i32* %6, align 4
  %141 = add i32 %140, 1
  %142 = load i32, i32* %7, align 4
  %143 = mul i32 %141, %142
  store i32 %143, i32* %139, align 16
  %144 = getelementptr inbounds %struct.boundary, %struct.boundary* %138, i32 0, i32 1
  %145 = load i32, i32* %7, align 4
  %146 = mul i32 -2, %145
  store i32 %146, i32* %144, align 4
  %147 = getelementptr inbounds %struct.boundary, %struct.boundary* %138, i32 0, i32 2
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8** %147, align 8
  %148 = bitcast %struct.drm_mm_node* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %148, i8 0, i64 4, i1 false)
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %181, %3
  %150 = load i32, i32* %10, align 4
  %151 = getelementptr inbounds [17 x %struct.boundary], [17 x %struct.boundary]* %8, i64 0, i64 0
  %152 = bitcast %struct.boundary* %151 to %struct.boundary.0*
  %153 = call i32 @ARRAY_SIZE(%struct.boundary.0* %152)
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %149
  %156 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [17 x %struct.boundary], [17 x %struct.boundary]* %8, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.boundary, %struct.boundary* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 16
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [17 x %struct.boundary], [17 x %struct.boundary]* %8, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.boundary, %struct.boundary* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @set_node(%struct.drm_mm_node* %9, i32 %161, i32 %166)
  %168 = call i32 @expect_reserve_fail(%struct.drm_mm* %156, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %180, label %170

170:                                              ; preds = %155
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [17 x %struct.boundary], [17 x %struct.boundary]* %8, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.boundary, %struct.boundary* %174, i32 0, i32 2
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %171, i8* %176, i32 %177, i32 %178)
  store i32 0, i32* %4, align 4
  br label %185

180:                                              ; preds = %155
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %149

184:                                              ; preds = %149
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %184, %170
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.boundary.0*) #2

declare dso_local i32 @expect_reserve_fail(%struct.drm_mm*, i32) #2

declare dso_local i32 @set_node(%struct.drm_mm_node*, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
