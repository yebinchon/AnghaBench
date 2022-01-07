; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_define_gmrfb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_check_define_gmrfb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.anon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i8*)* @vmw_cmd_check_define_gmrfb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_check_define_gmrfb(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i8* %2) #0 {
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_sw_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmw_buffer_object*, align 8
  %8 = alloca %struct.anon*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.anon*
  store %struct.anon* %10, %struct.anon** %8, align 8
  %11 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %12 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %5, align 8
  %13 = load %struct.anon*, %struct.anon** %8, align 8
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @vmw_translate_guest_ptr(%struct.vmw_private* %11, %struct.vmw_sw_context* %12, i32* %15, %struct.vmw_buffer_object** %7)
  ret i32 %16
}

declare dso_local i32 @vmw_translate_guest_ptr(%struct.vmw_private*, %struct.vmw_sw_context*, i32*, %struct.vmw_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
