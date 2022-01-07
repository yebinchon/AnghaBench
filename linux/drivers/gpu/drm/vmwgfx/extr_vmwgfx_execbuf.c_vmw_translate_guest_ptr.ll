; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_translate_guest_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_translate_guest_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.vmw_relocation = type { i32, %struct.vmw_buffer_object*, %struct.TYPE_5__* }

@.str = private unnamed_addr constant [35 x i8] c"Could not find or use GMR region.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.TYPE_5__*, %struct.vmw_buffer_object**)* @vmw_translate_guest_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_translate_guest_ptr(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, %struct.TYPE_5__* %2, %struct.vmw_buffer_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmw_private*, align 8
  %7 = alloca %struct.vmw_sw_context*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.vmw_buffer_object**, align 8
  %10 = alloca %struct.vmw_buffer_object*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vmw_relocation*, align 8
  %13 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %6, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.vmw_buffer_object** %3, %struct.vmw_buffer_object*** %9, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %18 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vmw_validation_preload_bo(i32 %19)
  %21 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %22 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.vmw_buffer_object* @vmw_user_bo_noref_lookup(i32 %25, i32 %26)
  store %struct.vmw_buffer_object* %27, %struct.vmw_buffer_object** %10, align 8
  %28 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %29 = call i64 @IS_ERR(%struct.vmw_buffer_object* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.vmw_buffer_object* %33)
  store i32 %34, i32* %5, align 4
  br label %73

35:                                               ; preds = %4
  %36 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %37 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %40 = call i32 @vmw_validation_add_bo(i32 %38, %struct.vmw_buffer_object* %39, i32 0, i32 0)
  store i32 %40, i32* %13, align 4
  %41 = call i32 (...) @vmw_user_bo_noref_release()
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %73

49:                                               ; preds = %35
  %50 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %51 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.vmw_relocation* @vmw_validation_mem_alloc(i32 %52, i32 24)
  store %struct.vmw_relocation* %53, %struct.vmw_relocation** %12, align 8
  %54 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %55 = icmp ne %struct.vmw_relocation* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %73

59:                                               ; preds = %49
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %62 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %61, i32 0, i32 2
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %62, align 8
  %63 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %64 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %65 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %64, i32 0, i32 1
  store %struct.vmw_buffer_object* %63, %struct.vmw_buffer_object** %65, align 8
  %66 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %10, align 8
  %67 = load %struct.vmw_buffer_object**, %struct.vmw_buffer_object*** %9, align 8
  store %struct.vmw_buffer_object* %66, %struct.vmw_buffer_object** %67, align 8
  %68 = load %struct.vmw_relocation*, %struct.vmw_relocation** %12, align 8
  %69 = getelementptr inbounds %struct.vmw_relocation, %struct.vmw_relocation* %68, i32 0, i32 0
  %70 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %7, align 8
  %71 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %59, %56, %47, %31
  %74 = load i32, i32* %5, align 4
  ret i32 %74
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
