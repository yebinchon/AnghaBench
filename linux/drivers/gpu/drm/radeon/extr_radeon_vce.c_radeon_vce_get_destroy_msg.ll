; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_get_destroy_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_get_destroy_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_ib = type { i32, i32, i32, i8** }

@.str = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_get_destroy_msg(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.radeon_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_fence**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.radeon_ib, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.radeon_fence** %3, %struct.radeon_fence*** %9, align 8
  store i32 1024, i32* %10, align 4
  %15 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @radeon_ib_get(%struct.radeon_device* %15, i32 %16, %struct.radeon_ib* %11, i32* null, i32 4096)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %5, align 4
  br label %148

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1024
  store i32 %27, i32* %12, align 4
  %28 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = call i8* @cpu_to_le32(i32 12)
  %30 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %31, i64 %35
  store i8* %29, i8** %36, align 8
  %37 = call i8* @cpu_to_le32(i32 1)
  %38 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8*, i8** %39, i64 %43
  store i8* %37, i8** %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %48, i64 %52
  store i8* %46, i8** %53, align 8
  %54 = call i8* @cpu_to_le32(i32 20)
  %55 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  store i8* %54, i8** %61, align 8
  %62 = call i8* @cpu_to_le32(i32 83886085)
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  store i8* %62, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @upper_32_bits(i32 %70)
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8*, i8** %74, i64 %78
  store i8* %72, i8** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8*, i8** %83, i64 %87
  store i8* %81, i8** %88, align 8
  %89 = call i8* @cpu_to_le32(i32 1)
  %90 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8*, i8** %91, i64 %95
  store i8* %89, i8** %96, align 8
  %97 = call i8* @cpu_to_le32(i32 8)
  %98 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8*, i8** %99, i64 %103
  store i8* %97, i8** %104, align 8
  %105 = call i8* @cpu_to_le32(i32 33554433)
  %106 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8*, i8** %107, i64 %111
  store i8* %105, i8** %112, align 8
  %113 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %125, %24
  %116 = load i32, i32* %13, align 4
  %117 = icmp ult i32 %116, 1024
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = call i8* @cpu_to_le32(i32 0)
  %120 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %119, i8** %124, align 8
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %115

128:                                              ; preds = %115
  %129 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %130 = call i32 @radeon_ib_schedule(%struct.radeon_device* %129, %struct.radeon_ib* %11, i32* null, i32 0)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  %138 = icmp ne %struct.radeon_fence** %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call %struct.radeon_fence* @radeon_fence_ref(i32 %141)
  %143 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  store %struct.radeon_fence* %142, %struct.radeon_fence** %143, align 8
  br label %144

144:                                              ; preds = %139, %136
  %145 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %146 = call i32 @radeon_ib_free(%struct.radeon_device* %145, %struct.radeon_ib* %11)
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %20
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local %struct.radeon_fence* @radeon_fence_ref(i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
