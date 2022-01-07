; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calc_pll_max_vco_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_calc_pll_max_vco_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.calc_pll_clock_source = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.calc_pll_clock_source_init_data = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.dc_firmware_info, i32 }
%struct.dc_firmware_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"The dec point num or precision is incorrect!\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Incorrect fract feedback divider precision num!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.calc_pll_clock_source*, %struct.calc_pll_clock_source_init_data*)* @calc_pll_max_vco_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll_max_vco_construct(%struct.calc_pll_clock_source* %0, %struct.calc_pll_clock_source_init_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.calc_pll_clock_source*, align 8
  %5 = alloca %struct.calc_pll_clock_source_init_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dc_firmware_info*, align 8
  store %struct.calc_pll_clock_source* %0, %struct.calc_pll_clock_source** %4, align 8
  store %struct.calc_pll_clock_source_init_data* %1, %struct.calc_pll_clock_source_init_data** %5, align 8
  %8 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %9 = icmp eq %struct.calc_pll_clock_source* %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %12 = icmp eq %struct.calc_pll_clock_source_init_data* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %15 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %14, i32 0, i32 9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %10, %2
  store i32 0, i32* %3, align 4
  br label %181

19:                                               ; preds = %13
  %20 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %21 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %20, i32 0, i32 9
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %181

27:                                               ; preds = %19
  %28 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %29 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %28, i32 0, i32 9
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.dc_firmware_info* %31, %struct.dc_firmware_info** %7, align 8
  %32 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %33 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %36 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %35, i32 0, i32 13
  store i32 %34, i32* %36, align 4
  %37 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %7, align 8
  %38 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %42 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %7, align 8
  %44 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %48 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 4
  %49 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %7, align 8
  %50 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %54 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 8
  %55 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %56 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %27
  %60 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %61 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %64 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %72

65:                                               ; preds = %27
  %66 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %7, align 8
  %67 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %71 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %65, %59
  %73 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %74 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %79 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %82 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %90

83:                                               ; preds = %72
  %84 = load %struct.dc_firmware_info*, %struct.dc_firmware_info** %7, align 8
  %85 = getelementptr inbounds %struct.dc_firmware_info, %struct.dc_firmware_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %89 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %92 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %95 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 4
  %96 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %97 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %100 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %99, i32 0, i32 8
  store i32 %98, i32* %100, align 8
  %101 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %102 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %105 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %107 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %110 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %109, i32 0, i32 6
  store i32 %108, i32* %110, align 8
  %111 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %112 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %90
  %116 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %117 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %120 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %115, %90
  %124 = call i32 @DC_LOG_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

125:                                              ; preds = %115
  %126 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %127 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 @DC_LOG_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %181

132:                                              ; preds = %125
  %133 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %134 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %137 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.calc_pll_clock_source_init_data*, %struct.calc_pll_clock_source_init_data** %5, align 8
  %139 = getelementptr inbounds %struct.calc_pll_clock_source_init_data, %struct.calc_pll_clock_source_init_data* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %142 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %141, i32 0, i32 3
  store i64 %140, i64* %142, align 8
  %143 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %144 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %143, i32 0, i32 4
  store i32 1, i32* %144, align 8
  store i64 0, i64* %6, align 8
  br label %145

145:                                              ; preds = %156, %132
  %146 = load i64, i64* %6, align 8
  %147 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %148 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp slt i64 %146, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %153 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %154, 10
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151
  %157 = load i64, i64* %6, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %6, align 8
  br label %145

159:                                              ; preds = %145
  %160 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %161 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %160, i32 0, i32 5
  store i32 1, i32* %161, align 4
  store i64 0, i64* %6, align 8
  br label %162

162:                                              ; preds = %177, %159
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %165 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %168 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = sub nsw i64 %166, %169
  %171 = icmp slt i64 %163, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %162
  %173 = load %struct.calc_pll_clock_source*, %struct.calc_pll_clock_source** %4, align 8
  %174 = getelementptr inbounds %struct.calc_pll_clock_source, %struct.calc_pll_clock_source* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 10
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %172
  %178 = load i64, i64* %6, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %6, align 8
  br label %162

180:                                              ; preds = %162
  store i32 1, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %130, %123, %26, %18
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @DC_LOG_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
