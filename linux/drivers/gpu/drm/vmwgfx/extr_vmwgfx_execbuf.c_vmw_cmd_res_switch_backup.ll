; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_res_switch_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_res_switch_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }
%struct.vmw_resource = type { i32 }
%struct.vmw_buffer_object = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, %struct.vmw_resource*, i32*, i64)* @vmw_cmd_res_switch_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_res_switch_backup(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, %struct.vmw_resource* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmw_private*, align 8
  %8 = alloca %struct.vmw_sw_context*, align 8
  %9 = alloca %struct.vmw_resource*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vmw_buffer_object*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %7, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %8, align 8
  store %struct.vmw_resource* %2, %struct.vmw_resource** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %16 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %17 = call i8* @vmw_execbuf_info_from_res(%struct.vmw_sw_context* %15, %struct.vmw_resource* %16)
  store i8* %17, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %40

23:                                               ; preds = %5
  %24 = load %struct.vmw_private*, %struct.vmw_private** %7, align 8
  %25 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @vmw_translate_mob_ptr(%struct.vmw_private* %24, %struct.vmw_sw_context* %25, i32* %26, %struct.vmw_buffer_object** %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %23
  %33 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %8, align 8
  %34 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @vmw_validation_res_switch_backup(i32 %35, i8* %36, %struct.vmw_buffer_object* %37, i64 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %30, %20
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i8* @vmw_execbuf_info_from_res(%struct.vmw_sw_context*, %struct.vmw_resource*) #1

declare dso_local i32 @vmw_translate_mob_ptr(%struct.vmw_private*, %struct.vmw_sw_context*, i32*, %struct.vmw_buffer_object**) #1

declare dso_local i32 @vmw_validation_res_switch_backup(i32, i8*, %struct.vmw_buffer_object*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
