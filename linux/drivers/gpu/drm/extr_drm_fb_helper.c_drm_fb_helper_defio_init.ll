; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_defio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_defio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.fb_info* }
%struct.fb_info = type { %struct.fb_ops*, %struct.fb_ops* }
%struct.fb_ops = type { i32, i32 }
%struct.fb_deferred_io = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@drm_fb_helper_deferred_io = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_defio_init(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_deferred_io*, align 8
  %6 = alloca %struct.fb_ops*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %8 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %7, i32 0, i32 0
  %9 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  store %struct.fb_info* %9, %struct.fb_info** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.fb_ops* @kzalloc(i32 8, i32 %10)
  %12 = bitcast %struct.fb_ops* %11 to %struct.fb_deferred_io*
  store %struct.fb_deferred_io* %12, %struct.fb_deferred_io** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fb_ops* @kzalloc(i32 8, i32 %13)
  store %struct.fb_ops* %14, %struct.fb_ops** %6, align 8
  %15 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  %16 = icmp ne %struct.fb_deferred_io* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.fb_ops*, %struct.fb_ops** %6, align 8
  %19 = icmp ne %struct.fb_ops* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  %22 = bitcast %struct.fb_deferred_io* %21 to %struct.fb_ops*
  %23 = call i32 @kfree(%struct.fb_ops* %22)
  %24 = load %struct.fb_ops*, %struct.fb_ops** %6, align 8
  %25 = call i32 @kfree(%struct.fb_ops* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %50

28:                                               ; preds = %17
  %29 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  %30 = bitcast %struct.fb_deferred_io* %29 to %struct.fb_ops*
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  store %struct.fb_ops* %30, %struct.fb_ops** %32, align 8
  %33 = call i32 @msecs_to_jiffies(i32 50)
  %34 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  %35 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @drm_fb_helper_deferred_io, align 4
  %37 = load %struct.fb_deferred_io*, %struct.fb_deferred_io** %5, align 8
  %38 = getelementptr inbounds %struct.fb_deferred_io, %struct.fb_deferred_io* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fb_ops*, %struct.fb_ops** %6, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = load %struct.fb_ops*, %struct.fb_ops** %41, align 8
  %43 = bitcast %struct.fb_ops* %39 to i8*
  %44 = bitcast %struct.fb_ops* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.fb_ops*, %struct.fb_ops** %6, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 0
  store %struct.fb_ops* %45, %struct.fb_ops** %47, align 8
  %48 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %49 = call i32 @fb_deferred_io_init(%struct.fb_info* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %28, %20
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.fb_ops* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.fb_ops*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fb_deferred_io_init(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
