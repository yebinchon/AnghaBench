; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_bo_prio_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.h_vmw_bo_prio_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_buffer_object = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_buffer_object*)* @vmw_bo_prio_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_bo_prio_adjust(%struct.vmw_buffer_object* %0) #0 {
  %2 = alloca %struct.vmw_buffer_object*, align 8
  %3 = alloca i32, align 4
  store %struct.vmw_buffer_object* %0, %struct.vmw_buffer_object** %2, align 8
  %4 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %4, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8
  %7 = call i32 @ARRAY_SIZE(i64* %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %2, align 8
  %14 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %2, align 8
  %24 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  br label %31

26:                                               ; preds = %12
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.vmw_buffer_object*, %struct.vmw_buffer_object** %2, align 8
  %29 = getelementptr inbounds %struct.vmw_buffer_object, %struct.vmw_buffer_object* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 3, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %21
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
