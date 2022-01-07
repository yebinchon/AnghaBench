; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_unpin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_framebuffer_unpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_framebuffer = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_buffer_object = type { i32 }
%struct.TYPE_11__ = type { %struct.vmw_buffer_object* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.vmw_buffer_object* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_framebuffer*)* @vmw_framebuffer_unpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_framebuffer_unpin(%struct.vmw_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_framebuffer*, align 8
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_buffer_object*, align 8
  store %struct.vmw_framebuffer* %0, %struct.vmw_framebuffer** %3, align 8
  %6 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %7 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.vmw_private* @vmw_priv(i32 %9)
  store %struct.vmw_private* %10, %struct.vmw_private** %4, align 8
  %11 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %12 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %17 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %16, i32 0, i32 0
  %18 = call %struct.TYPE_11__* @vmw_framebuffer_to_vfbd(%struct.TYPE_10__* %17)
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %19, align 8
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.vmw_framebuffer*, %struct.vmw_framebuffer** %3, align 8
  %23 = getelementptr inbounds %struct.vmw_framebuffer, %struct.vmw_framebuffer* %22, i32 0, i32 0
  %24 = call %struct.TYPE_9__* @vmw_framebuffer_to_vfbs(%struct.TYPE_10__* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %28, align 8
  br label %30

30:                                               ; preds = %21, %15
  %31 = phi %struct.vmw_buffer_object* [ %20, %15 ], [ %29, %21 ]
  store %struct.vmw_buffer_object* %31, %struct.vmw_buffer_object** %5, align 8
  %32 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %33 = icmp ne %struct.vmw_buffer_object* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %41 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %5, align 8
  %42 = call i32 @vmw_bo_unpin(%struct.vmw_private* %40, %struct.vmw_buffer_object* %41, i32 0)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %38
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local %struct.TYPE_11__* @vmw_framebuffer_to_vfbd(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @vmw_framebuffer_to_vfbs(%struct.TYPE_10__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @vmw_bo_unpin(%struct.vmw_private*, %struct.vmw_buffer_object*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
