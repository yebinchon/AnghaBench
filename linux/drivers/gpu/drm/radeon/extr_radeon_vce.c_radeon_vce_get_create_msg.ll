; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_get_create_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vce.c_radeon_vce_get_create_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_ib = type { i32, i32, i32, i8** }

@.str = private unnamed_addr constant [32 x i8] c"radeon: failed to get ib (%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"radeon: failed to schedule ib (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_vce_get_create_msg(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.radeon_fence** %3) #0 {
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
  br label %228

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
  %54 = call i8* @cpu_to_le32(i32 48)
  %55 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  store i8* %54, i8** %61, align 8
  %62 = call i8* @cpu_to_le32(i32 16777217)
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8*, i8** %64, i64 %68
  store i8* %62, i8** %69, align 8
  %70 = call i8* @cpu_to_le32(i32 0)
  %71 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %72, i64 %76
  store i8* %70, i8** %77, align 8
  %78 = call i8* @cpu_to_le32(i32 66)
  %79 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8*, i8** %80, i64 %84
  store i8* %78, i8** %85, align 8
  %86 = call i8* @cpu_to_le32(i32 10)
  %87 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8*, i8** %88, i64 %92
  store i8* %86, i8** %93, align 8
  %94 = call i8* @cpu_to_le32(i32 1)
  %95 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8*, i8** %96, i64 %100
  store i8* %94, i8** %101, align 8
  %102 = call i8* @cpu_to_le32(i32 128)
  %103 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %104 = load i8**, i8*** %103, align 8
  %105 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8*, i8** %104, i64 %108
  store i8* %102, i8** %109, align 8
  %110 = call i8* @cpu_to_le32(i32 96)
  %111 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8*, i8** %112, i64 %116
  store i8* %110, i8** %117, align 8
  %118 = call i8* @cpu_to_le32(i32 256)
  %119 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i8*, i8** %120, i64 %124
  store i8* %118, i8** %125, align 8
  %126 = call i8* @cpu_to_le32(i32 256)
  %127 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %128 = load i8**, i8*** %127, align 8
  %129 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8*, i8** %128, i64 %132
  store i8* %126, i8** %133, align 8
  %134 = call i8* @cpu_to_le32(i32 12)
  %135 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8*, i8** %136, i64 %140
  store i8* %134, i8** %141, align 8
  %142 = call i8* @cpu_to_le32(i32 0)
  %143 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8*, i8** %144, i64 %148
  store i8* %142, i8** %149, align 8
  %150 = call i8* @cpu_to_le32(i32 20)
  %151 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i8*, i8** %152, i64 %156
  store i8* %150, i8** %157, align 8
  %158 = call i8* @cpu_to_le32(i32 83886085)
  %159 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8*, i8** %160, i64 %164
  store i8* %158, i8** %165, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @upper_32_bits(i32 %166)
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i8*, i8** %170, i64 %174
  store i8* %168, i8** %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i8* @cpu_to_le32(i32 %176)
  %178 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %179 = load i8**, i8*** %178, align 8
  %180 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8*, i8** %179, i64 %183
  store i8* %177, i8** %184, align 8
  %185 = call i8* @cpu_to_le32(i32 1)
  %186 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %187 = load i8**, i8*** %186, align 8
  %188 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8*, i8** %187, i64 %191
  store i8* %185, i8** %192, align 8
  %193 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %205, %24
  %196 = load i32, i32* %13, align 4
  %197 = icmp ult i32 %196, 1024
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = call i8* @cpu_to_le32(i32 0)
  %200 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 3
  %201 = load i8**, i8*** %200, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  store i8* %199, i8** %204, align 8
  br label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %13, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %13, align 4
  br label %195

208:                                              ; preds = %195
  %209 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %210 = call i32 @radeon_ib_schedule(%struct.radeon_device* %209, %struct.radeon_ib* %11, i32* null, i32 0)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %213, %208
  %217 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  %218 = icmp ne %struct.radeon_fence** %217, null
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %11, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call %struct.radeon_fence* @radeon_fence_ref(i32 %221)
  %223 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  store %struct.radeon_fence* %222, %struct.radeon_fence** %223, align 8
  br label %224

224:                                              ; preds = %219, %216
  %225 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %226 = call i32 @radeon_ib_free(%struct.radeon_device* %225, %struct.radeon_ib* %11)
  %227 = load i32, i32* %14, align 4
  store i32 %227, i32* %5, align 4
  br label %228

228:                                              ; preds = %224, %20
  %229 = load i32, i32* %5, align 4
  ret i32 %229
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
