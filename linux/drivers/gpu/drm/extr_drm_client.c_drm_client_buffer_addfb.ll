; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_addfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client.c_drm_client_buffer_addfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_client_buffer = type { %struct.TYPE_3__*, %struct.drm_client_dev*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_client_dev = type { i32, i32, i32 }
%struct.drm_mode_fb_cmd = type { i32, i32, i32, i32, i8*, i8*, i32 }
%struct.drm_format_info = type { i32*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_client_buffer*, i8*, i8*, i8*)* @drm_client_buffer_addfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_client_buffer_addfb(%struct.drm_client_buffer* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_client_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_client_dev*, align 8
  %11 = alloca %struct.drm_mode_fb_cmd, align 8
  %12 = alloca %struct.drm_format_info*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_client_buffer* %0, %struct.drm_client_buffer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %14, i32 0, i32 1
  %16 = load %struct.drm_client_dev*, %struct.drm_client_dev** %15, align 8
  store %struct.drm_client_dev* %16, %struct.drm_client_dev** %10, align 8
  %17 = bitcast %struct.drm_mode_fb_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load i8*, i8** %9, align 8
  %19 = call %struct.drm_format_info* @drm_format_info(i8* %18)
  store %struct.drm_format_info* %19, %struct.drm_format_info** %12, align 8
  %20 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %21 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.drm_format_info*, %struct.drm_format_info** %12, align 8
  %28 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 5
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.drm_client_dev*, %struct.drm_client_dev** %10, align 8
  %44 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_client_dev*, %struct.drm_client_dev** %10, align 8
  %47 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @drm_mode_addfb(i32 %45, %struct.drm_mode_fb_cmd* %11, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %4
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %5, align 4
  br label %94

54:                                               ; preds = %4
  %55 = load %struct.drm_client_dev*, %struct.drm_client_dev** %10, align 8
  %56 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %58, i32 0, i32 1
  %60 = load %struct.drm_client_dev*, %struct.drm_client_dev** %59, align 8
  %61 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.drm_mode_fb_cmd, %struct.drm_mode_fb_cmd* %11, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_3__* @drm_framebuffer_lookup(i32 %57, i32 %62, i32 %64)
  %66 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %66, i32 0, i32 0
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %67, align 8
  %68 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = icmp ne %struct.TYPE_3__* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %54
  %77 = load i32, i32* @ENOENT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %94

79:                                               ; preds = %54
  %80 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %81 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = call i32 @drm_framebuffer_put(%struct.TYPE_3__* %82)
  %84 = load %struct.drm_client_buffer*, %struct.drm_client_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.drm_client_buffer, %struct.drm_client_buffer* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_client_dev*, %struct.drm_client_dev** %10, align 8
  %90 = getelementptr inbounds %struct.drm_client_dev, %struct.drm_client_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TASK_COMM_LEN, align 4
  %93 = call i32 @strscpy(i32 %88, i32 %91, i32 %92)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %79, %76, %52
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i8*) #2

declare dso_local i32 @drm_mode_addfb(i32, %struct.drm_mode_fb_cmd*, i32) #2

declare dso_local %struct.TYPE_3__* @drm_framebuffer_lookup(i32, i32, i32) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @drm_framebuffer_put(%struct.TYPE_3__*) #2

declare dso_local i32 @strscpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
