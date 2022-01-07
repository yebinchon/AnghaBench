; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_display_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bios.c_parse_bit_display_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nvbios = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bit_entry = type { i32, i32 }
%struct.nouveau_drm = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Do not understand BIT display table\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.nvbios*, %struct.bit_entry*)* @parse_bit_display_tbl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_bit_display_tbl_entry(%struct.drm_device* %0, %struct.nvbios* %1, %struct.bit_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.nvbios*, align 8
  %7 = alloca %struct.bit_entry*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.nvbios* %1, %struct.nvbios** %6, align 8
  store %struct.bit_entry* %2, %struct.bit_entry** %7, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %10 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %9)
  store %struct.nouveau_drm* %10, %struct.nouveau_drm** %8, align 8
  %11 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %12 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %17 = call i32 @NV_ERROR(%struct.nouveau_drm* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %22 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.bit_entry*, %struct.bit_entry** %7, align 8
  %25 = getelementptr inbounds %struct.bit_entry, %struct.bit_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ROM16(i32 %30)
  %32 = load %struct.nvbios*, %struct.nvbios** %6, align 8
  %33 = getelementptr inbounds %struct.nvbios, %struct.nvbios* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %20, %15
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @ROM16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
