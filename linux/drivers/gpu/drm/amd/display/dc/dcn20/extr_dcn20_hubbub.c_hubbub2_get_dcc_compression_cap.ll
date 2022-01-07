; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_get_dcc_compression_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_get_dcc_compression_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (i64, i32, i32*, i32*)*, i32 (i32, i32*)* }
%struct.TYPE_7__ = type { %struct.dc* }
%struct.dc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.dc_dcc_surface_param = type { i64, i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.dc_surface_dcc_cap = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@DCC_DISABLE = common dso_local global i64 0, align 8
@SCAN_DIRECTION_HORIZONTAL = common dso_local global i64 0, align 8
@segment_order__contiguous = common dso_local global i32 0, align 4
@SCAN_DIRECTION_VERTICAL = common dso_local global i64 0, align 8
@segment_order__non_contiguous = common dso_local global i32 0, align 4
@DC_SW_64KB_R_X = common dso_local global i64 0, align 8
@DCC_HALF_REQ_DISALBE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubbub2_get_dcc_compression_cap(%struct.hubbub* %0, %struct.dc_dcc_surface_param* %1, %struct.dc_surface_dcc_cap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hubbub*, align 8
  %6 = alloca %struct.dc_dcc_surface_param*, align 8
  %7 = alloca %struct.dc_surface_dcc_cap*, align 8
  %8 = alloca %struct.dc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hubbub* %0, %struct.hubbub** %5, align 8
  store %struct.dc_dcc_surface_param* %1, %struct.dc_dcc_surface_param** %6, align 8
  store %struct.dc_surface_dcc_cap* %2, %struct.dc_surface_dcc_cap** %7, align 8
  %15 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %16 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.dc*, %struct.dc** %18, align 8
  store %struct.dc* %19, %struct.dc** %8, align 8
  %20 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %21 = call i32 @memset(%struct.dc_surface_dcc_cap* %20, i32 0, i32 20)
  %22 = load %struct.dc*, %struct.dc** %8, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DCC_DISABLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %193

29:                                               ; preds = %3
  %30 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %31 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32 (i32, i32*)*, i32 (i32, i32*)** %33, align 8
  %35 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %36 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37, i32* %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %193

41:                                               ; preds = %29
  %42 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %43 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (i64, i32, i32*, i32*)*, i32 (i64, i32, i32*, i32*)** %45, align 8
  %47 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %48 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 %46(i64 %49, i32 %50, i32* %11, i32* %12)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %193

54:                                               ; preds = %41
  %55 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %56 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %60 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @hubbub2_det_request_size(i32 %58, i32 %62, i32 %63, i32* %13, i32* %14)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32 129, i32* %9, align 4
  br label %126

71:                                               ; preds = %67, %54
  %72 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %73 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SCAN_DIRECTION_HORIZONTAL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  store i32 129, i32* %9, align 4
  br label %88

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @segment_order__contiguous, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 130, i32* %9, align 4
  br label %87

86:                                               ; preds = %81
  store i32 128, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %80
  br label %125

89:                                               ; preds = %71
  %90 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %91 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SCAN_DIRECTION_VERTICAL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 129, i32* %9, align 4
  br label %106

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @segment_order__contiguous, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 130, i32* %9, align 4
  br label %105

104:                                              ; preds = %99
  store i32 128, i32* %9, align 4
  br label %105

105:                                              ; preds = %104, %103
  br label %106

106:                                              ; preds = %105, %98
  br label %124

107:                                              ; preds = %89
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @segment_order__non_contiguous, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @segment_order__non_contiguous, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117, %110
  store i32 128, i32* %9, align 4
  br label %123

122:                                              ; preds = %117, %114
  store i32 130, i32* %9, align 4
  br label %123

123:                                              ; preds = %122, %121
  br label %124

124:                                              ; preds = %123, %106
  br label %125

125:                                              ; preds = %124, %88
  br label %126

126:                                              ; preds = %125, %70
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = load %struct.dc_dcc_surface_param*, %struct.dc_dcc_surface_param** %6, align 8
  %131 = getelementptr inbounds %struct.dc_dcc_surface_param, %struct.dc_dcc_surface_param* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @DC_SW_64KB_R_X, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 130, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %129, %126
  %137 = load %struct.dc*, %struct.dc** %8, align 8
  %138 = getelementptr inbounds %struct.dc, %struct.dc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DCC_HALF_REQ_DISALBE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %136
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 129
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %193

147:                                              ; preds = %143, %136
  %148 = load i32, i32* %9, align 4
  switch i32 %148, label %188 [
    i32 129, label %149
    i32 130, label %162
    i32 128, label %175
  ]

149:                                              ; preds = %147
  %150 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %151 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 256, i32* %153, align 4
  %154 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %155 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  store i32 256, i32* %157, align 4
  %158 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %159 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 0, i32* %161, align 4
  br label %188

162:                                              ; preds = %147
  %163 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %164 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i32 128, i32* %166, align 4
  %167 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %168 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i32 128, i32* %170, align 4
  %171 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %172 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  store i32 0, i32* %174, align 4
  br label %188

175:                                              ; preds = %147
  %176 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %177 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  store i32 256, i32* %179, align 4
  %180 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %181 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 1
  store i32 64, i32* %183, align 4
  %184 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %185 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %147, %175, %162, %149
  %189 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %190 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %189, i32 0, i32 0
  store i32 1, i32* %190, align 4
  %191 = load %struct.dc_surface_dcc_cap*, %struct.dc_surface_dcc_cap** %7, align 8
  %192 = getelementptr inbounds %struct.dc_surface_dcc_cap, %struct.dc_surface_dcc_cap* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  store i32 1, i32* %4, align 4
  br label %193

193:                                              ; preds = %188, %146, %53, %40, %28
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @memset(%struct.dc_surface_dcc_cap*, i32, i32) #1

declare dso_local i32 @hubbub2_det_request_size(i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
