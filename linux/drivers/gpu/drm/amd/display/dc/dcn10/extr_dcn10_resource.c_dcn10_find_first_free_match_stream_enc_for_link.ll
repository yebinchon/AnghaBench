; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_find_first_free_match_stream_enc_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_resource.c_dcn10_find_first_free_match_stream_enc_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_encoder = type { i64 }
%struct.resource_context = type { i32* }
%struct.resource_pool = type { i32, %struct.stream_encoder** }
%struct.dc_stream_state = type { %struct.dc_link* }
%struct.dc_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.stream_encoder* @dcn10_find_first_free_match_stream_enc_for_link(%struct.resource_context* %0, %struct.resource_pool* %1, %struct.dc_stream_state* %2) #0 {
  %4 = alloca %struct.stream_encoder*, align 8
  %5 = alloca %struct.resource_context*, align 8
  %6 = alloca %struct.resource_pool*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_link*, align 8
  store %struct.resource_context* %0, %struct.resource_context** %5, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %6, align 8
  store %struct.dc_stream_state* %2, %struct.dc_stream_state** %7, align 8
  store i32 -1, i32* %9, align 4
  %11 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %12 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %11, i32 0, i32 0
  %13 = load %struct.dc_link*, %struct.dc_link** %12, align 8
  store %struct.dc_link* %13, %struct.dc_link** %10, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %65, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %17 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.resource_context*, %struct.resource_context** %5, align 8
  %22 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %20
  %30 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %31 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %30, i32 0, i32 1
  %32 = load %struct.stream_encoder**, %struct.stream_encoder*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.stream_encoder*, %struct.stream_encoder** %32, i64 %34
  %36 = load %struct.stream_encoder*, %struct.stream_encoder** %35, align 8
  %37 = icmp ne %struct.stream_encoder* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %41 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %40, i32 0, i32 1
  %42 = load %struct.stream_encoder**, %struct.stream_encoder*** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.stream_encoder*, %struct.stream_encoder** %42, i64 %44
  %46 = load %struct.stream_encoder*, %struct.stream_encoder** %45, align 8
  %47 = getelementptr inbounds %struct.stream_encoder, %struct.stream_encoder* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dc_link*, %struct.dc_link** %10, align 8
  %50 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %57 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %56, i32 0, i32 1
  %58 = load %struct.stream_encoder**, %struct.stream_encoder*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stream_encoder*, %struct.stream_encoder** %58, i64 %60
  %62 = load %struct.stream_encoder*, %struct.stream_encoder** %61, align 8
  store %struct.stream_encoder* %62, %struct.stream_encoder** %4, align 8
  br label %80

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63, %29, %20
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %14

68:                                               ; preds = %14
  %69 = load i32, i32* %9, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.resource_pool*, %struct.resource_pool** %6, align 8
  %73 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %72, i32 0, i32 1
  %74 = load %struct.stream_encoder**, %struct.stream_encoder*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.stream_encoder*, %struct.stream_encoder** %74, i64 %76
  %78 = load %struct.stream_encoder*, %struct.stream_encoder** %77, align 8
  store %struct.stream_encoder* %78, %struct.stream_encoder** %4, align 8
  br label %80

79:                                               ; preds = %68
  store %struct.stream_encoder* null, %struct.stream_encoder** %4, align 8
  br label %80

80:                                               ; preds = %79, %71, %55
  %81 = load %struct.stream_encoder*, %struct.stream_encoder** %4, align 8
  ret %struct.stream_encoder* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
