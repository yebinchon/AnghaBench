; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vram_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_device.c_radeon_vram_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.radeon_mc = type { i32, i32, i32, i32, i64, i64, i64 }

@radeon_vram_limit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"limiting VRAM to PCI aperture size\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"VRAM: %lluM 0x%016llX - 0x%016llX (%lluM used)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vram_location(%struct.radeon_device* %0, %struct.radeon_mc* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_mc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* @radeon_vram_limit, align 8
  %9 = trunc i64 %8 to i32
  %10 = shl i32 %9, 20
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %13 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %15 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = add nsw i32 %22, 1
  %24 = icmp sgt i32 %16, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %3
  %26 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %31 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %34 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %36 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %39 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %25, %3
  %41 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %42 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %50, i32 0, i32 4
  store i64 %49, i64* %51, align 8
  %52 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %53 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RADEON_IS_AGP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %40
  %59 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %63 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %58
  %67 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %72 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %70, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %66
  %76 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %81 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %86 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %75, %66, %58, %40
  %91 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %92 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %95 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %101 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %100, i32 0, i32 4
  store i64 %99, i64* %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %90
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %107 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %113 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %104, %90
  %115 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %119 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 20
  %122 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %123 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %127 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.radeon_mc*, %struct.radeon_mc** %5, align 8
  %130 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = ashr i32 %131, 20
  %133 = call i32 @dev_info(i32 %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %125, i64 %128, i32 %132)
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
