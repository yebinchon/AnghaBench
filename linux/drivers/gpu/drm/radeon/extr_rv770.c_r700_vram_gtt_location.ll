; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_r700_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_r700_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_mc = type { i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"limiting VRAM\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r700_vram_gtt_location(%struct.radeon_device* %0, %struct.radeon_mc* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %4, align 8
  %7 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ugt i32 %9, -536870912
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %16, i32 0, i32 1
  store i32 -536870912, i32* %17, align 4
  %18 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %18, i32 0, i32 0
  store i32 -536870912, i32* %19, align 8
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RADEON_IS_AGP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %129

27:                                               ; preds = %20
  %28 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %29 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  %31 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %27
  %42 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %43 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %5, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %41
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_warn(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %48, %41
  %62 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %63 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sub nsw i64 %64, %68
  %70 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %70, i32 0, i32 5
  store i64 %69, i64* %71, align 8
  br label %99

72:                                               ; preds = %27
  %73 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %74 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %6, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @dev_warn(i32 %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %84 = load i64, i64* %6, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %87 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* %6, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %91 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %79, %72
  %93 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %94 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 1
  %97 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %98 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %92, %61
  %100 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %101 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %104 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = sub nsw i64 %107, 1
  %109 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %110 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %109, i32 0, i32 6
  store i64 %108, i64* %110, align 8
  %111 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %112 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %115 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, 20
  %118 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %119 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %122 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %125 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 20
  %128 = call i32 @dev_info(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %120, i64 %123, i32 %127)
  br label %140

129:                                              ; preds = %20
  %130 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = call i32 @radeon_vram_location(%struct.radeon_device* %130, %struct.TYPE_2__* %132, i32 0)
  %134 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %135 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %138 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %139 = call i32 @radeon_gtt_location(%struct.radeon_device* %137, %struct.radeon_mc* %138)
  br label %140

140:                                              ; preds = %129, %99
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.radeon_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
