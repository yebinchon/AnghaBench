; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_check_hardcoded_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_check_hardcoded_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i8*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.edid* }
%struct.edid = type { i32 }

@COMBIOS_HARDCODED_EDID_TABLE = common dso_local global i32 0, align 4
@EDID_LENGTH = common dso_local global i8 0, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_combios_check_hardcoded_edid(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i8*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @COMBIOS_HARDCODED_EDID_TABLE, align 4
  %12 = call i32 @combios_get_table_offset(i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %7, align 8
  %23 = load i8, i8* @EDID_LENGTH, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 126
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %24, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.edid* @kmalloc(i32 %31, i32 %32)
  store %struct.edid* %33, %struct.edid** %6, align 8
  %34 = load %struct.edid*, %struct.edid** %6, align 8
  %35 = icmp eq %struct.edid* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %58

37:                                               ; preds = %16
  %38 = load %struct.edid*, %struct.edid** %6, align 8
  %39 = bitcast %struct.edid* %38 to i8*
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @memcpy(i8* %39, i8* %40, i32 %41)
  %43 = load %struct.edid*, %struct.edid** %6, align 8
  %44 = call i32 @drm_edid_is_valid(%struct.edid* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load %struct.edid*, %struct.edid** %6, align 8
  %48 = call i32 @kfree(%struct.edid* %47)
  store i32 0, i32* %2, align 4
  br label %58

49:                                               ; preds = %37
  %50 = load %struct.edid*, %struct.edid** %6, align 8
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store %struct.edid* %50, %struct.edid** %53, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %49, %46, %36, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @combios_get_table_offset(i32, i32) #1

declare dso_local %struct.edid* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
