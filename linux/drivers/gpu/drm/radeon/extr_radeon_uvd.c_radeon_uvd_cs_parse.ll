; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_cs_packet = type { i32, i32 }

@__const.radeon_uvd_cs_parse.buf_sizes = private unnamed_addr constant [4 x i32] [i32 2048, i32 33554432, i32 7077888, i32 2048], align 16
@.str = private unnamed_addr constant [43 x i8] c"UVD IB length (%d) not 16 dwords aligned!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No relocation chunk !\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"UVD-IBs need a msg command!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_uvd_cs_parse(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_packet, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.radeon_uvd_cs_parse.buf_sizes to i8*), i64 16, i1 false)
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = srem i32 %15, 16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %20 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %92

27:                                               ; preds = %1
  %28 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %74, %36
  %38 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %39 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %38, %struct.radeon_cs_packet* %4, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %92

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %67 [
    i32 129, label %50
    i32 128, label %59
  ]

50:                                               ; preds = %47
  %51 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %53 = call i32 @radeon_uvd_cs_reg(%struct.radeon_cs_parser* %51, %struct.radeon_cs_packet* %4, i32* %6, i32* %7, i32* %52, i32* %8)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %92

58:                                               ; preds = %50
  br label %73

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 2
  %63 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %64 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %73

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %92

73:                                               ; preds = %59, %58
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %37, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %92

91:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %87, %67, %56, %45, %32, %18
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #2

declare dso_local i32 @radeon_uvd_cs_reg(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
