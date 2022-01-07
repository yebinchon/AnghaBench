; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_msg_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_msg_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"UVD codec not handled %d!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid UVD decoding target pitch!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid dpb_size in UVD message (%d / %d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @radeon_uvd_cs_msg_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_uvd_cs_msg_decode(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 6
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 9
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = udiv i32 %31, 16
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = udiv i32 %33, 16
  %35 = call i32 @ALIGN(i32 %34, i32 2)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = mul i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = udiv i32 %39, 2
  %41 = load i32, i32* %13, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ALIGN(i32 %43, i32 1024)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %107 [
    i32 0, label %46
    i32 1, label %62
    i32 3, label %88
    i32 4, label %91
  ]

46:                                               ; preds = %2
  %47 = load i32, i32* %13, align 4
  %48 = mul i32 %47, 17
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = mul i32 %49, %50
  %52 = mul i32 %51, 17
  %53 = mul i32 %52, 192
  %54 = load i32, i32* %15, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul i32 %56, %57
  %59 = mul i32 %58, 32
  %60 = load i32, i32* %15, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %15, align 4
  br label %112

62:                                               ; preds = %2
  %63 = load i32, i32* %13, align 4
  %64 = mul i32 %63, 3
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = mul i32 %65, %66
  %68 = mul i32 %67, 128
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 %71, 64
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul i32 %75, 128
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %77, %76
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @max(i32 %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = mul i32 %82, 7
  %84 = mul i32 %83, 16
  %85 = call i32 @ALIGN(i32 %84, i32 64)
  %86 = load i32, i32* %15, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %112

88:                                               ; preds = %2
  %89 = load i32, i32* %13, align 4
  %90 = mul i32 %89, 3
  store i32 %90, i32* %15, align 4
  br label %112

91:                                               ; preds = %2
  %92 = load i32, i32* %13, align 4
  %93 = mul i32 %92, 3
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul i32 %94, %95
  %97 = mul i32 %96, 64
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul i32 %100, %101
  %103 = mul i32 %102, 32
  %104 = call i32 @ALIGN(i32 %103, i32 64)
  %105 = load i32, i32* %15, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %15, align 4
  br label %112

107:                                              ; preds = %2
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %137

112:                                              ; preds = %91, %88, %62, %46
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp ugt i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %137

120:                                              ; preds = %112
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %137

130:                                              ; preds = %120
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 2
  store i32 %134, i32* %136, align 4
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %130, %124, %116, %107
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
