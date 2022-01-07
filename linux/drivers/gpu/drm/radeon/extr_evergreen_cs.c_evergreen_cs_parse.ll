; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_cs.c_evergreen_cs_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { %struct.evergreen_cs_track*, %struct.TYPE_12__, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.evergreen_cs_track = type { i32, i32, i32, i32, i8* }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.radeon_cs_packet = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@cayman_reg_safe_bm = common dso_local global i8* null, align 8
@evergreen_reg_safe_bm = common dso_local global i8* null, align 8
@REG_SAFE_BM_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unknown packet type %d !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_cs_parse(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_cs_parser*, align 8
  %4 = alloca %struct.radeon_cs_packet, align 8
  %5 = alloca %struct.evergreen_cs_track*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %3, align 8
  %8 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %8, i32 0, i32 0
  %10 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %9, align 8
  %11 = icmp eq %struct.evergreen_cs_track* %10, null
  br i1 %11, label %12, label %123

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.evergreen_cs_track* @kzalloc(i32 24, i32 %13)
  store %struct.evergreen_cs_track* %14, %struct.evergreen_cs_track** %5, align 8
  %15 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %16 = icmp eq %struct.evergreen_cs_track* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %200

20:                                               ; preds = %12
  %21 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %22 = call i32 @evergreen_cs_track_init(%struct.evergreen_cs_track* %21)
  %23 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %23, i32 0, i32 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHIP_CAYMAN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %31, i32 0, i32 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** @cayman_reg_safe_bm, align 8
  %39 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %40 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %52

41:                                               ; preds = %20
  %42 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %43 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %42, i32 0, i32 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %6, align 4
  %49 = load i8*, i8** @evergreen_reg_safe_bm, align 8
  %50 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %51 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %41, %30
  %53 = load i8*, i8** @cayman_reg_safe_bm, align 8
  %54 = call i64 @ARRAY_SIZE(i8* %53)
  %55 = load i64, i64* @REG_SAFE_BM_SIZE, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUILD_BUG_ON(i32 %57)
  %59 = load i8*, i8** @evergreen_reg_safe_bm, align 8
  %60 = call i64 @ARRAY_SIZE(i8* %59)
  %61 = load i64, i64* @REG_SAFE_BM_SIZE, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUILD_BUG_ON(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 15
  switch i32 %66, label %71 [
    i32 0, label %67
    i32 1, label %70
    i32 2, label %74
    i32 3, label %77
  ]

67:                                               ; preds = %52
  %68 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %69 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %80

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %52, %70
  %72 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %73 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %72, i32 0, i32 0
  store i32 2, i32* %73, align 8
  br label %80

74:                                               ; preds = %52
  %75 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %76 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %75, i32 0, i32 0
  store i32 4, i32* %76, align 8
  br label %80

77:                                               ; preds = %52
  %78 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %79 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %78, i32 0, i32 0
  store i32 8, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %74, %71, %67
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, 240
  %83 = ashr i32 %82, 4
  switch i32 %83, label %88 [
    i32 0, label %84
    i32 1, label %87
    i32 2, label %91
  ]

84:                                               ; preds = %80
  %85 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %86 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %85, i32 0, i32 1
  store i32 4, i32* %86, align 4
  br label %94

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %80, %87
  %89 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %90 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %89, i32 0, i32 1
  store i32 8, i32* %90, align 4
  br label %94

91:                                               ; preds = %80
  %92 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %93 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %92, i32 0, i32 1
  store i32 16, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %88, %84
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, 3840
  %97 = ashr i32 %96, 8
  switch i32 %97, label %102 [
    i32 0, label %98
    i32 1, label %101
  ]

98:                                               ; preds = %94
  %99 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %100 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %99, i32 0, i32 2
  store i32 256, i32* %100, align 8
  br label %105

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %94, %101
  %103 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %104 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %103, i32 0, i32 2
  store i32 512, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %98
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, 61440
  %108 = ashr i32 %107, 12
  switch i32 %108, label %113 [
    i32 0, label %109
    i32 1, label %112
    i32 2, label %116
  ]

109:                                              ; preds = %105
  %110 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %111 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %110, i32 0, i32 3
  store i32 1, i32* %111, align 4
  br label %119

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %105, %112
  %114 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %115 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %114, i32 0, i32 3
  store i32 2, i32* %115, align 4
  br label %119

116:                                              ; preds = %105
  %117 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %118 = getelementptr inbounds %struct.evergreen_cs_track, %struct.evergreen_cs_track* %117, i32 0, i32 3
  store i32 4, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %113, %109
  %120 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %5, align 8
  %121 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %121, i32 0, i32 0
  store %struct.evergreen_cs_track* %120, %struct.evergreen_cs_track** %122, align 8
  br label %123

123:                                              ; preds = %119, %1
  br label %124

124:                                              ; preds = %183, %123
  %125 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %126 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %127 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser* %125, %struct.radeon_cs_packet* %4, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %133, i32 0, i32 0
  %135 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %134, align 8
  %136 = call i32 @kfree(%struct.evergreen_cs_track* %135)
  %137 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %138 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %137, i32 0, i32 0
  store %struct.evergreen_cs_track* null, %struct.evergreen_cs_track** %138, align 8
  %139 = load i32, i32* %7, align 4
  store i32 %139, i32* %2, align 4
  br label %200

140:                                              ; preds = %124
  %141 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 2
  %144 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %145 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %143
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  %150 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  switch i32 %151, label %159 [
    i32 130, label %152
    i32 129, label %155
    i32 128, label %156
  ]

152:                                              ; preds = %140
  %153 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %154 = call i32 @evergreen_cs_parse_packet0(%struct.radeon_cs_parser* %153, %struct.radeon_cs_packet* %4)
  store i32 %154, i32* %7, align 4
  br label %171

155:                                              ; preds = %140
  br label %171

156:                                              ; preds = %140
  %157 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %158 = call i32 @evergreen_packet3_check(%struct.radeon_cs_parser* %157, %struct.radeon_cs_packet* %4)
  store i32 %158, i32* %7, align 4
  br label %171

159:                                              ; preds = %140
  %160 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %4, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %161)
  %163 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %164 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %163, i32 0, i32 0
  %165 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %164, align 8
  %166 = call i32 @kfree(%struct.evergreen_cs_track* %165)
  %167 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %168 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %167, i32 0, i32 0
  store %struct.evergreen_cs_track* null, %struct.evergreen_cs_track** %168, align 8
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %200

171:                                              ; preds = %156, %155, %152
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %176 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %175, i32 0, i32 0
  %177 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %176, align 8
  %178 = call i32 @kfree(%struct.evergreen_cs_track* %177)
  %179 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %180 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %179, i32 0, i32 0
  store %struct.evergreen_cs_track* null, %struct.evergreen_cs_track** %180, align 8
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %200

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %185 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %187, i32 0, i32 3
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %186, %191
  br i1 %192, label %124, label %193

193:                                              ; preds = %183
  %194 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %195 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %194, i32 0, i32 0
  %196 = load %struct.evergreen_cs_track*, %struct.evergreen_cs_track** %195, align 8
  %197 = call i32 @kfree(%struct.evergreen_cs_track* %196)
  %198 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %3, align 8
  %199 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %198, i32 0, i32 0
  store %struct.evergreen_cs_track* null, %struct.evergreen_cs_track** %199, align 8
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %193, %174, %159, %132, %17
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.evergreen_cs_track* @kzalloc(i32, i32) #1

declare dso_local i32 @evergreen_cs_track_init(%struct.evergreen_cs_track*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @radeon_cs_packet_parse(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32) #1

declare dso_local i32 @kfree(%struct.evergreen_cs_track*) #1

declare dso_local i32 @evergreen_cs_parse_packet0(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @evergreen_packet3_check(%struct.radeon_cs_parser*, %struct.radeon_cs_packet*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
