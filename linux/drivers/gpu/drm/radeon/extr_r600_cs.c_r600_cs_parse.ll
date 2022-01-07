; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_cs.c_r600_cs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.r600_cs_track*, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.r600_cs_track = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.radeon_cs_packet = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@CHIP_RV740 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_cs_parse(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_packet, align 8
  %5 = alloca %struct.r600_cs_track*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %7 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %8 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %7, i32 0, i32 0
  %9 = load %struct.r600_cs_track*, %struct.r600_cs_track** %8, align 8
  %10 = icmp eq %struct.r600_cs_track* %9, null
  br i1 %10, label %11, label %98

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.r600_cs_track* @kzalloc(i32 12, i32 %12)
  store %struct.r600_cs_track* %13, %struct.r600_cs_track** %5, align 8
  %14 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %15 = icmp eq %struct.r600_cs_track* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %175

19:                                               ; preds = %11
  %20 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %21 = call i32 @r600_cs_track_init(%struct.r600_cs_track* %20)
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHIP_RV770, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %19
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %38 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %39, i32 0, i32 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %47 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %48, i32 0, i32 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %56 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %94

57:                                               ; preds = %19
  %58 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %58, i32 0, i32 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CHIP_RV740, align 8
  %64 = icmp sle i64 %62, %63
  br i1 %64, label %65, label %93

65:                                               ; preds = %57
  %66 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %66, i32 0, i32 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %74 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %76 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %75, i32 0, i32 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %83 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %85 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %84, i32 0, i32 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %92 = getelementptr inbounds %struct.r600_cs_track, %struct.r600_cs_track* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %65, %57
  br label %94

94:                                               ; preds = %93, %29
  %95 = load %struct.r600_cs_track*, %struct.r600_cs_track** %5, align 8
  %96 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %96, i32 0, i32 0
  store %struct.r600_cs_track* %95, %struct.r600_cs_track** %97, align 8
  br label %98

98:                                               ; preds = %94, %1
  br label %99

99:                                               ; preds = %158, %98
  %100 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %101 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %100, %struct.radeon_cs_packet* %4, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %108, i32 0, i32 0
  %110 = load %struct.r600_cs_track*, %struct.r600_cs_track** %109, align 8
  %111 = call i32 @kfree(%struct.r600_cs_track* %110)
  %112 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %112, i32 0, i32 0
  store %struct.r600_cs_track* null, %struct.r600_cs_track** %113, align 8
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %175

115:                                              ; preds = %99
  %116 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 2
  %119 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %120 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %118
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 8
  %125 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %134 [
    i32 130, label %127
    i32 129, label %130
    i32 128, label %131
  ]

127:                                              ; preds = %115
  %128 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %129 = call i32 @r600_cs_parse_packet0(%struct.radeon_cs_parser* %128, %struct.radeon_cs_packet* %4)
  store i32 %129, i32* %6, align 4
  br label %146

130:                                              ; preds = %115
  br label %146

131:                                              ; preds = %115
  %132 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %133 = call i32 @r600_packet3_check(%struct.radeon_cs_parser* %132, %struct.radeon_cs_packet* %4)
  store i32 %133, i32* %6, align 4
  br label %146

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %136)
  %138 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %139 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %138, i32 0, i32 0
  %140 = load %struct.r600_cs_track*, %struct.r600_cs_track** %139, align 8
  %141 = call i32 @kfree(%struct.r600_cs_track* %140)
  %142 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %143 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %142, i32 0, i32 0
  store %struct.r600_cs_track* null, %struct.r600_cs_track** %143, align 8
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %175

146:                                              ; preds = %131, %130, %127
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %151 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %150, i32 0, i32 0
  %152 = load %struct.r600_cs_track*, %struct.r600_cs_track** %151, align 8
  %153 = call i32 @kfree(%struct.r600_cs_track* %152)
  %154 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %155 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %154, i32 0, i32 0
  store %struct.r600_cs_track* null, %struct.r600_cs_track** %155, align 8
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %175

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %163 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %162, i32 0, i32 3
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %161, %166
  br i1 %167, label %99, label %168

168:                                              ; preds = %158
  %169 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %170 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %169, i32 0, i32 0
  %171 = load %struct.r600_cs_track*, %struct.r600_cs_track** %170, align 8
  %172 = call i32 @kfree(%struct.r600_cs_track* %171)
  %173 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %173, i32 0, i32 0
  store %struct.r600_cs_track* null, %struct.r600_cs_track** %174, align 8
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %168, %149, %134, %107, %16
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.r600_cs_track* @kzalloc(i32, i32) #1

declare dso_local i32 @r600_cs_track_init(%struct.r600_cs_track*) #1

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @kfree(%struct.r600_cs_track*) #1

declare dso_local i32 @r600_cs_parse_packet0(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @r600_packet3_check(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
