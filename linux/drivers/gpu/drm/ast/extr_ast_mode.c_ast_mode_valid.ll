; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i64, i64 }
%struct.drm_display_mode = type { i32, i32 }

@MODE_NOMODE = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@AST2100 = common dso_local global i64 0, align 8
@AST2200 = common dso_local global i64 0, align 8
@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST2500 = common dso_local global i64 0, align 8
@AST1180 = common dso_local global i64 0, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @ast_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  store %struct.ast_private* %13, %struct.ast_private** %6, align 8
  %14 = load i32, i32* @MODE_NOMODE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %16 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %150

19:                                               ; preds = %2
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1680
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1050
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MODE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %198

31:                                               ; preds = %24, %19
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 1280
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 800
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @MODE_OK, align 4
  store i32 %42, i32* %3, align 4
  br label %198

43:                                               ; preds = %36, %31
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1440
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 900
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @MODE_OK, align 4
  store i32 %54, i32* %3, align 4
  br label %198

55:                                               ; preds = %48, %43
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1360
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 768
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @MODE_OK, align 4
  store i32 %66, i32* %3, align 4
  br label %198

67:                                               ; preds = %60, %55
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1600
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 900
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @MODE_OK, align 4
  store i32 %78, i32* %3, align 4
  br label %198

79:                                               ; preds = %72, %67
  %80 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %81 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AST2100, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %115, label %85

85:                                               ; preds = %79
  %86 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %87 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AST2200, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %115, label %91

91:                                               ; preds = %85
  %92 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %93 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AST2300, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %99 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @AST2400, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %105 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AST2500, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %111 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AST1180, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %109, %103, %97, %91, %85, %79
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 1920
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1080
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @MODE_OK, align 4
  store i32 %126, i32* %3, align 4
  br label %198

127:                                              ; preds = %120, %115
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1920
  br i1 %131, label %132, label %148

132:                                              ; preds = %127
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1200
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  %139 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %140 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %138, i32 %139, i32 209, i32 255)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 1
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @MODE_NOMODE, align 4
  store i32 %145, i32* %3, align 4
  br label %198

146:                                              ; preds = %137
  %147 = load i32, i32* @MODE_OK, align 4
  store i32 %147, i32* %3, align 4
  br label %198

148:                                              ; preds = %132, %127
  br label %149

149:                                              ; preds = %148, %109
  br label %150

150:                                              ; preds = %149, %2
  %151 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %152 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  switch i32 %153, label %194 [
    i32 640, label %154
    i32 800, label %162
    i32 1024, label %170
    i32 1280, label %178
    i32 1600, label %186
  ]

154:                                              ; preds = %150
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 480
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @MODE_OK, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %159, %154
  br label %196

162:                                              ; preds = %150
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 600
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* @MODE_OK, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %162
  br label %196

170:                                              ; preds = %150
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, 768
  br i1 %174, label %175, label %177

175:                                              ; preds = %170
  %176 = load i32, i32* @MODE_OK, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %175, %170
  br label %196

178:                                              ; preds = %150
  %179 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %180 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 1024
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* @MODE_OK, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %178
  br label %196

186:                                              ; preds = %150
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %189, 1200
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @MODE_OK, align 4
  store i32 %192, i32* %7, align 4
  br label %193

193:                                              ; preds = %191, %186
  br label %196

194:                                              ; preds = %150
  %195 = load i32, i32* %7, align 4
  store i32 %195, i32* %3, align 4
  br label %198

196:                                              ; preds = %193, %185, %177, %169, %161
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %194, %146, %144, %125, %77, %65, %53, %41, %29
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
