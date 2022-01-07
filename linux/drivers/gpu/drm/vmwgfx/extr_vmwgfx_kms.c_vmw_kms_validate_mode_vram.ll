; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_validate_mode_vram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_kms_validate_mode_vram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i64, i64, i64 }

@vmw_du_screen_target = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_validate_mode_vram(%struct.vmw_private* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i32
  %9 = load i64, i64* %6, align 8
  %10 = trunc i64 %9 to i32
  %11 = mul nsw i32 %8, %10
  %12 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %13 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @vmw_du_screen_target, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %19 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %23 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i64 [ %20, %17 ], [ %24, %21 ]
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %11, %27
  %29 = zext i1 %28 to i32
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
