; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv11_cursor_upload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_crtc.c_nv11_cursor_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_bo*, %struct.nouveau_bo*)* @nv11_cursor_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv11_cursor_upload(%struct.drm_device* %0, %struct.nouveau_bo* %1, %struct.nouveau_bo* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.nouveau_bo*, align 8
  %6 = alloca %struct.nouveau_bo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.nouveau_bo* %1, %struct.nouveau_bo** %5, align 8
  store %struct.nouveau_bo* %2, %struct.nouveau_bo** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %36, %3
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 4096
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load %struct.nouveau_bo*, %struct.nouveau_bo** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @nouveau_bo_rd32(%struct.nouveau_bo* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 24
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 255
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 16777215
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = shl i32 %28, 24
  %30 = or i32 %26, %29
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %24, %21, %13
  %32 = load %struct.nouveau_bo*, %struct.nouveau_bo** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @nouveau_bo_wr32(%struct.nouveau_bo* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %10

39:                                               ; preds = %10
  ret void
}

declare dso_local i32 @nouveau_bo_rd32(%struct.nouveau_bo*, i32) #1

declare dso_local i32 @nouveau_bo_wr32(%struct.nouveau_bo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
