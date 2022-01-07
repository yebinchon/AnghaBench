; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_reloc_pitch_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_reloc_pitch_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.radeon_cs_packet = type { i32 }
%struct.radeon_bo_list = type { i32, i64 }

@.str = private unnamed_addr constant [28 x i8] c"No reloc for ib[%d]=0x%04X\0A\00", align 1
@RADEON_CS_KEEP_TILING_FLAGS = common dso_local global i32 0, align 4
@RADEON_TILING_MACRO = common dso_local global i32 0, align 4
@RADEON_DST_TILE_MACRO = common dso_local global i32 0, align 4
@RADEON_TILING_MICRO = common dso_local global i32 0, align 4
@RADEON_SRC_PITCH_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot src blit from microtiled surface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_DST_TILE_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r100_reloc_pitch_offset(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_cs_parser*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.radeon_bo_list*, align 8
  %14 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %6, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %16 = call i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser* %15, %struct.radeon_bo_list** %13, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %24 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %25 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %23, %struct.radeon_cs_packet* %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %107

27:                                               ; preds = %4
  %28 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @radeon_get_ib_value(%struct.radeon_cs_parser* %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = and i32 %31, 4194303
  store i32 %32, i32* %12, align 4
  %33 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %34 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = ashr i32 %36, 10
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %41 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RADEON_CS_KEEP_TILING_FLAGS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %94, label %46

46:                                               ; preds = %27
  %47 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %48 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RADEON_TILING_MACRO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @RADEON_DST_TILE_MACRO, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.radeon_bo_list*, %struct.radeon_bo_list** %13, align 8
  %59 = getelementptr inbounds %struct.radeon_bo_list, %struct.radeon_bo_list* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RADEON_TILING_MICRO, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @RADEON_SRC_PITCH_OFFSET, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %71 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %72 = call i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser* %70, %struct.radeon_cs_packet* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %107

75:                                               ; preds = %64
  %76 = load i32, i32* @RADEON_DST_TILE_MICRO, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %75, %57
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 1069547520
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %88 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %86, i32* %93, align 4
  br label %106

94:                                               ; preds = %27
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, -4194304
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %96, %97
  %99 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %6, align 8
  %100 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %94, %79
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %68, %19
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @radeon_cs_packet_next_reloc(%struct.radeon_cs_parser*, %struct.radeon_bo_list**, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_dump_packet(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @radeon_get_ib_value(%struct.radeon_cs_parser*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
