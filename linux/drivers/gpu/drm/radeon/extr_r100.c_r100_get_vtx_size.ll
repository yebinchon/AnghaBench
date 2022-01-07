; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_get_vtx_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_get_vtx_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_SE_VTX_FMT_W0 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_FPCOLOR = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_FPALPHA = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_PKCOLOR = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_FPSPEC = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_FPFOG = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_PKSPEC = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_ST0 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_ST1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Q1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_ST2 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Q2 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_ST3 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Q3 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Q0 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_N0 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_XY1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Z1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_W1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_N1 = common dso_local global i32 0, align 4
@RADEON_SE_VTX_FMT_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @r100_get_vtx_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r100_get_vtx_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 2, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @RADEON_SE_VTX_FMT_W0, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @RADEON_SE_VTX_FMT_FPCOLOR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 3
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @RADEON_SE_VTX_FMT_FPALPHA, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @RADEON_SE_VTX_FMT_PKCOLOR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @RADEON_SE_VTX_FMT_FPSPEC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 3
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @RADEON_SE_VTX_FMT_FPFOG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @RADEON_SE_VTX_FMT_PKSPEC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* @RADEON_SE_VTX_FMT_ST0, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @RADEON_SE_VTX_FMT_ST1, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @RADEON_SE_VTX_FMT_Q1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @RADEON_SE_VTX_FMT_ST2, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @RADEON_SE_VTX_FMT_Q2, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @RADEON_SE_VTX_FMT_ST3, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load i32, i32* %3, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* @RADEON_SE_VTX_FMT_Q3, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %2, align 4
  %117 = load i32, i32* @RADEON_SE_VTX_FMT_Q0, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %2, align 4
  %125 = and i32 %124, 229376
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* %2, align 4
  %129 = ashr i32 %128, 15
  %130 = and i32 %129, 7
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @RADEON_SE_VTX_FMT_N0, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 3
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @RADEON_SE_VTX_FMT_XY1, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 2
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* %2, align 4
  %151 = load i32, i32* @RADEON_SE_VTX_FMT_Z1, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = load i32, i32* %2, align 4
  %159 = load i32, i32* @RADEON_SE_VTX_FMT_W1, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i32, i32* %3, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %162, %157
  %166 = load i32, i32* %2, align 4
  %167 = load i32, i32* @RADEON_SE_VTX_FMT_N1, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %2, align 4
  %175 = load i32, i32* @RADEON_SE_VTX_FMT_Z, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* %3, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %3, align 4
  br label %181

181:                                              ; preds = %178, %173
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
