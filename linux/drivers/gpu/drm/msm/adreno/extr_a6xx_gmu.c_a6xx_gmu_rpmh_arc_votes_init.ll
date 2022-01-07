; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_rpmh_arc_votes_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_rpmh_arc_votes_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mx.lvl\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Level %u not found in in the RPMh list\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Available levels:\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"  %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i64*, i32, i8*)* @a6xx_gmu_rpmh_arc_votes_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_gmu_rpmh_arc_votes_init(%struct.device* %0, i32* %1, i64* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32* @cmd_db_read_aux_data(i8* %21, i64* %16)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32*, i32** %14, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  store i32 %28, i32* %6, align 4
  br label %170

29:                                               ; preds = %5
  %30 = load i64, i64* %16, align 8
  %31 = lshr i64 %30, 1
  store i64 %31, i64* %16, align 8
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %170

37:                                               ; preds = %29
  %38 = call i32* @cmd_db_read_aux_data(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %17)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @PTR_ERR(i32* %43)
  store i32 %44, i32* %6, align 4
  br label %170

45:                                               ; preds = %37
  %46 = load i64, i64* %17, align 8
  %47 = lshr i64 %46, 1
  store i64 %47, i64* %17, align 8
  %48 = load i64, i64* %17, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %170

53:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %166, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %169

58:                                               ; preds = %54
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %59 = load %struct.device*, %struct.device** %7, align 8
  %60 = load i64*, i64** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @a6xx_gmu_get_arc_level(%struct.device* %59, i64 %64)
  store i32 %65, i32* %20, align 4
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %83, %58
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %16, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp uge i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %18, align 8
  br label %86

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %66

86:                                               ; preds = %79, %66
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %16, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %7, align 8
  %93 = load i32, i32* %20, align 4
  %94 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load %struct.device*, %struct.device** %7, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %97

97:                                               ; preds = %110, %91
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %16, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %102
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %13, align 4
  br label %97

113:                                              ; preds = %97
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  br label %170

116:                                              ; preds = %86
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %145, %116
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %17, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %148

122:                                              ; preds = %117
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %20, align 4
  %129 = icmp uge i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %122
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %19, align 8
  br label %148

133:                                              ; preds = %122
  %134 = load i32*, i32** %15, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %19, align 8
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %117

148:                                              ; preds = %130, %117
  %149 = load i32*, i32** %14, align 8
  %150 = load i64, i64* %18, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 65535
  %154 = shl i32 %153, 16
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %19, align 8
  %157 = shl i64 %156, 8
  %158 = or i64 %155, %157
  %159 = load i64, i64* %18, align 8
  %160 = or i64 %158, %159
  %161 = trunc i64 %160 to i32
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %148
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %54

169:                                              ; preds = %54
  store i32 0, i32* %6, align 4
  br label %170

170:                                              ; preds = %169, %113, %50, %42, %34, %26
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32* @cmd_db_read_aux_data(i8*, i64*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @a6xx_gmu_get_arc_level(%struct.device*, i64) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
