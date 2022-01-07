; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_cs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r300.c_r300_cs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.TYPE_8__*, i32, %struct.TYPE_5__*, %struct.r100_cs_track* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.r100_cs_track = type { i32 }
%struct.radeon_cs_packet = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@r300_packet0_check = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r300_cs_parse(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_packet, align 8
  %5 = alloca %struct.r100_cs_track*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.r100_cs_track* @kzalloc(i32 4, i32 %7)
  store %struct.r100_cs_track* %8, %struct.r100_cs_track** %5, align 8
  %9 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %10 = icmp eq %struct.r100_cs_track* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %89

14:                                               ; preds = %1
  %15 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %19 = call i32 @r100_cs_track_clear(%struct.TYPE_8__* %17, %struct.r100_cs_track* %18)
  %20 = load %struct.r100_cs_track*, %struct.r100_cs_track** %5, align 8
  %21 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %21, i32 0, i32 3
  store %struct.r100_cs_track* %20, %struct.r100_cs_track** %22, align 8
  br label %23

23:                                               ; preds = %78, %14
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %25 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %24, %struct.radeon_cs_packet* %4, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %89

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 2
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %66 [
    i32 130, label %45
    i32 129, label %62
    i32 128, label %63
  ]

45:                                               ; preds = %33
  %46 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %47 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @r100_cs_parse_packet0(%struct.radeon_cs_parser* %46, %struct.radeon_cs_packet* %4, i32 %53, i32 %60, i32* @r300_packet0_check)
  store i32 %61, i32* %6, align 4
  br label %72

62:                                               ; preds = %33
  br label %72

63:                                               ; preds = %33
  %64 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %65 = call i32 @r300_packet3_check(%struct.radeon_cs_parser* %64, %struct.radeon_cs_packet* %4)
  store i32 %65, i32* %6, align 4
  br label %72

66:                                               ; preds = %33
  %67 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %89

72:                                               ; preds = %63, %62, %45
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %89

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %80 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %23, label %88

88:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %75, %66, %31, %11
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.r100_cs_track* @kzalloc(i32, i32) #1

declare dso_local i32 @r100_cs_track_clear(%struct.TYPE_8__*, %struct.r100_cs_track*) #1

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @r100_cs_parse_packet0(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32, i32, i32*) #1

declare dso_local i32 @r300_packet3_check(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
