; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_hide_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_cursor.c_mga_hide_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@MGA_CURPOSXL = common dso_local global i32 0, align 4
@MGA_CURPOSXH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mga_device*)* @mga_hide_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_hide_cursor(%struct.mga_device* %0) #0 {
  %2 = alloca %struct.mga_device*, align 8
  store %struct.mga_device* %0, %struct.mga_device** %2, align 8
  %3 = load i32, i32* @MGA_CURPOSXL, align 4
  %4 = call i32 @WREG8(i32 %3, i32 0)
  %5 = load i32, i32* @MGA_CURPOSXH, align 4
  %6 = call i32 @WREG8(i32 %5, i32 0)
  %7 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %8 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %14 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @drm_gem_vram_unpin(i32* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.mga_device*, %struct.mga_device** %2, align 8
  %20 = getelementptr inbounds %struct.mga_device, %struct.mga_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @drm_gem_vram_unpin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
