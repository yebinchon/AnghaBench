; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_vram_gtt_location.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_vram_gtt_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.radeon_mc = type { i32, i32, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"limiting VRAM\0A\00", align 1
@RADEON_IS_AGP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"VRAM: %lluM 0x%08llX - 0x%08llX (%lluM used)\0A\00", align 1
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@MC_VM_FB_LOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_mc*)* @r600_vram_gtt_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r600_vram_gtt_location(%struct.radeon_device* %0, %struct.radeon_mc* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_mc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_mc* %1, %struct.radeon_mc** %4, align 8
  %8 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %9 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ugt i32 %10, -536870912
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_warn(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %18 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %17, i32 0, i32 1
  store i32 -536870912, i32* %18, align 4
  %19 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %20 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %19, i32 0, i32 0
  store i32 -536870912, i32* %20, align 8
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RADEON_IS_AGP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %130

28:                                               ; preds = %21
  %29 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %5, align 8
  %32 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %28
  %43 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %5, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* %5, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %57 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i64, i64* %5, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %49, %42
  %63 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %64 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %67 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %65, %69
  %71 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %72 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %71, i32 0, i32 5
  store i64 %70, i64* %72, align 8
  br label %100

73:                                               ; preds = %28
  %74 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %75 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %6, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %88 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i64, i64* %6, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %92 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %80, %73
  %94 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %95 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %99 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %93, %62
  %101 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %102 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %105 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %103, %107
  %109 = sub nsw i64 %108, 1
  %110 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %111 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %110, i32 0, i32 6
  store i64 %109, i64* %111, align 8
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %116 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = ashr i32 %117, 20
  %119 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %123 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %126 = getelementptr inbounds %struct.radeon_mc, %struct.radeon_mc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 20
  %129 = call i32 @dev_info(i32 %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64 %121, i64 %124, i32 %128)
  br label %156

130:                                              ; preds = %21
  store i64 0, i64* %7, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @RADEON_IS_IGP, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load i32, i32* @MC_VM_FB_LOCATION, align 4
  %139 = call i32 @RREG32(i32 %138)
  %140 = and i32 %139, 65535
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %7, align 8
  %142 = load i64, i64* %7, align 8
  %143 = shl i64 %142, 24
  store i64 %143, i64* %7, align 8
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 1
  %148 = load i64, i64* %7, align 8
  %149 = call i32 @radeon_vram_location(%struct.radeon_device* %145, %struct.TYPE_2__* %147, i64 %148)
  %150 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = load %struct.radeon_mc*, %struct.radeon_mc** %4, align 8
  %155 = call i32 @radeon_gtt_location(%struct.radeon_device* %153, %struct.radeon_mc* %154)
  br label %156

156:                                              ; preds = %144, %100
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_vram_location(%struct.radeon_device*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @radeon_gtt_location(%struct.radeon_device*, %struct.radeon_mc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
