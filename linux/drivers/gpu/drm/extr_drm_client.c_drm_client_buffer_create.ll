; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_client_buffer = type { %struct.drm_gem_object*, i32, i32, %struct.drm_client_dev* }
%struct.drm_gem_object = type { i32 }
%struct.drm_client_dev = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_format_info = type { i32* }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_client_buffer* (%struct.drm_client_dev*, i8*, i8*, i8*)* @drm_client_buffer_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_client_buffer* @drm_client_buffer_create(%struct.drm_client_dev* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.drm_client_buffer*, align 8
  %6 = alloca %struct.drm_client_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca %struct.drm_mode_create_dumb, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.drm_client_buffer*, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_client_dev* %0, %struct.drm_client_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.drm_format_info* @drm_format_info(i8* %16)
  store %struct.drm_format_info* %17, %struct.drm_format_info** %10, align 8
  %18 = bitcast %struct.drm_mode_create_dumb* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 32, i1 false)
  %19 = load %struct.drm_client_dev*, %struct.drm_client_dev** %6, align 8
  %20 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %12, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.drm_client_buffer* @kzalloc(i32 24, i32 %22)
  store %struct.drm_client_buffer* %23, %struct.drm_client_buffer** %13, align 8
  %24 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %25 = icmp ne %struct.drm_client_buffer* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.drm_client_buffer* @ERR_PTR(i32 %28)
  store %struct.drm_client_buffer* %29, %struct.drm_client_buffer** %5, align 8
  br label %83

30:                                               ; preds = %4
  %31 = load %struct.drm_client_dev*, %struct.drm_client_dev** %6, align 8
  %32 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %33 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %32, i32 0, i32 3
  store %struct.drm_client_dev* %31, %struct.drm_client_dev** %33, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 4
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %39 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 8
  %44 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %46 = load %struct.drm_client_dev*, %struct.drm_client_dev** %6, align 8
  %47 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @drm_mode_create_dumb(%struct.drm_device* %45, %struct.drm_mode_create_dumb* %11, i32 %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %30
  br label %78

53:                                               ; preds = %30
  %54 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %57 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %61 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.drm_client_dev*, %struct.drm_client_dev** %6, align 8
  %63 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %11, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.drm_gem_object* @drm_gem_object_lookup(i32 %64, i32 %66)
  store %struct.drm_gem_object* %67, %struct.drm_gem_object** %14, align 8
  %68 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %69 = icmp ne %struct.drm_gem_object* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %15, align 4
  br label %78

73:                                               ; preds = %53
  %74 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %75 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %76 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %75, i32 0, i32 0
  store %struct.drm_gem_object* %74, %struct.drm_gem_object** %76, align 8
  %77 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  store %struct.drm_client_buffer* %77, %struct.drm_client_buffer** %5, align 8
  br label %83

78:                                               ; preds = %70, %52
  %79 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %13, align 8
  %80 = call i32 @drm_client_buffer_delete(%struct.drm_client_buffer* %79)
  %81 = load i32, i32* %15, align 4
  %82 = call %struct.drm_client_buffer* @ERR_PTR(i32 %81)
  store %struct.drm_client_buffer* %82, %struct.drm_client_buffer** %5, align 8
  br label %83

83:                                               ; preds = %78, %73, %26
  %84 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %5, align 8
  ret %struct.drm_client_buffer* %84
}

declare dso_local %struct.drm_format_info* @drm_format_info(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.drm_client_buffer* @kzalloc(i32, i32) #1

declare dso_local %struct.drm_client_buffer* @ERR_PTR(i32) #1

declare dso_local i32 @drm_mode_create_dumb(%struct.drm_device*, %struct.drm_mode_create_dumb*, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(i32, i32) #1

declare dso_local i32 @drm_client_buffer_delete(%struct.drm_client_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
