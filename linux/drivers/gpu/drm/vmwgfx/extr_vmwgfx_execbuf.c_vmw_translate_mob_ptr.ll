; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_translate_mob_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_translate_mob_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_relocation = type { i32, %struct.vmw_buffer_object*, i32* }

@.str = private unnamed_addr constant [35 x i8] c"Could not find or use MOB buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i32*, %struct.vmw_buffer_object**)* @vmw_translate_mob_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_translate_mob_ptr(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i32* %2, %struct.vmw_buffer_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vmw_buffer_object**, align 8
  %10 = alloca %struct.vmw_buffer_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmw_relocation*, align 8
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.vmw_buffer_object** %3, %struct.vmw_buffer_object*** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %17 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vmw_validation_preload_bo(i32 %18)
  %20 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %21 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.vmw_buffer_object* @vmw_user_bo_noref_lookup(i32 %24, i32 %25)
  store %struct.vmw_buffer_object* %26, %struct.vmw_buffer_object** %10, align 8
  %27 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %28 = call i64 @IS_ERR(%struct.vmw_buffer_object* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %33 = call i32 @PTR_ERR(%struct.vmw_buffer_object* %32)
  store i32 %33, i32* %5, align 4
  br label %72

34:                                               ; preds = %4
  %35 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %36 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %39 = call i32 @vmw_validation_add_bo(i32 %37, %struct.vmw_buffer_object* %38, i32 1, i32 0)
  store i32 %39, i32* %13, align 4
  %40 = call i32 (...) @vmw_user_bo_noref_release()
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %72

48:                                               ; preds = %34
  %49 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %50 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.vmw_relocation* @vmw_validation_mem_alloc(i32 %51, i32 24)
  store %struct.vmw_relocation* %52, %struct.vmw_relocation** %12, align 8
  %53 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %54 = icmp ne %struct.vmw_relocation* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %72

58:                                               ; preds = %48
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %61 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %60, i32 0, i32 2
  store i32* %59, i32** %61, align 8
  %62 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %63 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %64 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %63, i32 0, i32 1
  store %struct.vmw_buffer_object* %62, %struct.vmw_buffer_object** %64, align 8
  %65 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %66 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %9, align 8
  store %struct.vmw_buffer_object* %65, %struct.vmw_buffer_object** %66, align 8
  %67 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %68 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %67, i32 0, i32 0
  %69 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %70 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %69, i32 0, i32 0
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %58, %55, %46, %30
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @vmw_validation_preload_bo(i32) #1

declare dso_local %struct.vmw_buffer_object* @vmw_user_bo_noref_lookup(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vmw_buffer_object*) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_buffer_object*) #1

declare dso_local i32 @vmw_validation_add_bo(i32, %struct.vmw_buffer_object*, i32, i32) #1

declare dso_local i32 @vmw_user_bo_noref_release(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vmw_relocation* @vmw_validation_mem_alloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
