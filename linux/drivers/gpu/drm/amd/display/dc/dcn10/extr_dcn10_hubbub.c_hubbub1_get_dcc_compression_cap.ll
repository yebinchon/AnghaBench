; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_get_dcc_compression_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_get_dcc_compression_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dc_dcc_surface_param = type { i64, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.dc_surface_dcc_cap = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.dcn10_hubbub = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 (i32, i32, i32*, i32*)*, i32 (i32, i32*)* }
%struct.TYPE_8__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@DCC_DISABLE = common dso_local global i64 0, align 8
@SCAN_DIRECTION_HORIZONTAL = common dso_local global i64 0, align 8
@segment_order__contiguous = common dso_local global i32 0, align 4
@SCAN_DIRECTION_VERTICAL = common dso_local global i64 0, align 8
@segment_order__non_contiguous = common dso_local global i32 0, align 4
@DCC_HALF_REQ_DISALBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hubbub*, %struct.dc_dcc_surface_param*, %struct.dc_surface_dcc_cap*)* @hubbub1_get_dcc_compression_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hubbub1_get_dcc_compression_cap(%struct.hubbub* %0, %struct.dc_dcc_surface_param* %1, %struct.dc_surface_dcc_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dc_dcc_surface_param*, align 8
  %7 = alloca %struct.dc_surface_dcc_cap*, align 8
  %8 = alloca %struct.dcn10_hubbub*, align 8
  %9 = alloca %struct.dc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dc_dcc_surface_param* %1, %struct.dc_dcc_surface_param** %6, align 8
  store %struct.dc_surface_dcc_cap* %2, %struct.dc_surface_dcc_cap** %7, align 8
  %16 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %17 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %16)
  store %struct.dcn10_hubbub* %17, %struct.dcn10_hubbub** %8, align 8
  %18 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %8, align 8
  %19 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.dc*, %struct.dc** %22, align 8
  store %struct.dc* %23, %struct.dc** %9, align 8
  %24 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %25 = call i32 @memset(%struct.dc_surface_dcc_cap* %24, i32 0, i32 20)
  %26 = load %struct.dc*, %struct.dc** %9, align 8
  %27 = getelementptr inbounds %struct.dc, %struct.dc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DCC_DISABLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %189

33:                                               ; preds = %3
  %34 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %8, align 8
  %35 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32 (i32, i32*)*, i32 (i32, i32*)** %38, align 8
  %40 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %41 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %39(i32 %42, i32* %11)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %189

46:                                               ; preds = %33
  %47 = load %struct.dcn10_hubbub*, %struct.dcn10_hubbub** %8, align 8
  %48 = getelementptr inbounds %struct.dcn10_hubbub, %struct.dcn10_hubbub* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %51, align 8
  %53 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %54 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 %52(i32 %55, i32 %56, i32* %12, i32* %13)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %189

60:                                               ; preds = %46
  %61 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %62 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %66 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @hubbub1_det_request_size(i32 %64, i32 %68, i32 %69, i32* %14, i32* %15)
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  store i32 129, i32* %10, align 4
  br label %132

77:                                               ; preds = %73, %60
  %78 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %79 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SCAN_DIRECTION_HORIZONTAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 129, i32* %10, align 4
  br label %94

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @segment_order__contiguous, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i32 130, i32* %10, align 4
  br label %93

92:                                               ; preds = %87
  store i32 128, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %91
  br label %94

94:                                               ; preds = %93, %86
  br label %131

95:                                               ; preds = %77
  %96 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %97 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SCAN_DIRECTION_VERTICAL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 129, i32* %10, align 4
  br label %112

105:                                              ; preds = %101
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @segment_order__contiguous, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 130, i32* %10, align 4
  br label %111

110:                                              ; preds = %105
  store i32 128, i32* %10, align 4
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111, %104
  br label %130

113:                                              ; preds = %95
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @segment_order__non_contiguous, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %127, label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @segment_order__non_contiguous, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %116
  store i32 128, i32* %10, align 4
  br label %129

128:                                              ; preds = %123, %120
  store i32 130, i32* %10, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %129, %112
  br label %131

131:                                              ; preds = %130, %94
  br label %132

132:                                              ; preds = %131, %76
  %133 = load %struct.dc*, %struct.dc** %9, align 8
  %134 = getelementptr inbounds %struct.dc, %struct.dc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @DCC_HALF_REQ_DISALBE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 129
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 0, i32* %4, align 4
  br label %189

143:                                              ; preds = %139, %132
  %144 = load i32, i32* %10, align 4
  switch i32 %144, label %184 [
    i32 129, label %145
    i32 130, label %158
    i32 128, label %171
  ]

145:                                              ; preds = %143
  %146 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %147 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 256, i32* %149, align 4
  %150 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %151 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i32 256, i32* %153, align 4
  %154 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %155 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  store i32 0, i32* %157, align 4
  br label %184

158:                                              ; preds = %143
  %159 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %160 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i32 128, i32* %162, align 4
  %163 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %164 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 128, i32* %166, align 4
  %167 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %168 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  store i32 0, i32* %170, align 4
  br label %184

171:                                              ; preds = %143
  %172 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %173 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  store i32 256, i32* %175, align 4
  %176 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %177 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  store i32 64, i32* %179, align 4
  %180 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %181 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %143, %171, %158, %145
  %185 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %186 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %185, i32 0, i32 0
  store i32 1, i32* %186, align 4
  %187 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %188 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  store i32 1, i32* %4, align 4
  br label %189

189:                                              ; preds = %184, %142, %59, %45, %32
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @memset(%struct.dc_surface_dcc_cap*, i32, i32) #1

declare dso_local i32 @hubbub1_det_request_size(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
