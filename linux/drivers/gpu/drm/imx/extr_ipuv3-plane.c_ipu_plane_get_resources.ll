; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_ipu_plane_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_plane = type { i32, i64, i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [33 x i8] c"failed to get idmac channel: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to get alpha idmac channel %d: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get dmfc: ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to get dp flow: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_plane_get_resources(%struct.ipu_plane* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipu_plane*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipu_plane* %0, %struct.ipu_plane** %3, align 8
  %6 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %7 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %10 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i8* @ipu_idmac_get(i32 %8, i32 %11)
  %13 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %14 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %16 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %22 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %113

28:                                               ; preds = %1
  %29 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %30 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ipu_channel_alpha_channel(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %37 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @ipu_idmac_get(i32 %38, i32 %39)
  %41 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %42 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %44 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %43, i32 0, i32 5
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %50 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %49, i32 0, i32 5
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %113

57:                                               ; preds = %35
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %60 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %63 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @ipu_dmfc_get(i32 %61, i32 %64)
  %66 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %67 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %69 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %58
  %74 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %75 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %109

80:                                               ; preds = %58
  %81 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %82 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %87 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %90 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @ipu_dp_get(i32 %88, i64 %91)
  %93 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %94 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %96 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @IS_ERR(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %85
  %101 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %102 = getelementptr inbounds %struct.ipu_plane, %struct.ipu_plane* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @PTR_ERR(i8* %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  br label %109

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107, %80
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %100, %73
  %110 = load %struct.ipu_plane*, %struct.ipu_plane** %3, align 8
  %111 = call i32 @ipu_plane_put_resources(%struct.ipu_plane* %110)
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %108, %48, %20
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i8* @ipu_idmac_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @ipu_channel_alpha_channel(i32) #1

declare dso_local i8* @ipu_dmfc_get(i32, i32) #1

declare dso_local i8* @ipu_dp_get(i32, i64) #1

declare dso_local i32 @ipu_plane_put_resources(%struct.ipu_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
