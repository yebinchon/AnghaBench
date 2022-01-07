; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_crtc_select_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_crtc.c_armada_crtc_select_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.armada_clk_result = type { i64, i64, %struct.clk* }
%struct.clk = type { i32 }
%struct.armada_clocking_params = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [34 x i8] c"[CRTC:%u:%s] desired clock=%luHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"[CRTC:%u:%s] clk=%u %luHz div=%u real=%luHz\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"[CRTC:%u:%s] selected clk=%u %luHz div=%u real=%luHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_crtc_select_clock(%struct.armada_crtc* %0, %struct.armada_clk_result* %1, %struct.armada_clocking_params* %2, %struct.clk** %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.armada_crtc*, align 8
  %9 = alloca %struct.armada_clk_result*, align 8
  %10 = alloca %struct.armada_clocking_params*, align 8
  %11 = alloca %struct.clk**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.clk*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.armada_crtc* %0, %struct.armada_crtc** %8, align 8
  store %struct.armada_clk_result* %1, %struct.armada_clk_result** %9, align 8
  store %struct.armada_clocking_params* %2, %struct.armada_clocking_params** %10, align 8
  store %struct.clk** %3, %struct.clk*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = mul i64 %22, 1000
  store i64 %23, i64* %14, align 8
  %24 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %25 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %30 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %14, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i8*, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %32, i32 %34)
  store i32 0, i32* %21, align 4
  br label %36

36:                                               ; preds = %130, %6
  %37 = load i32, i32* %21, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %12, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %133

41:                                               ; preds = %36
  %42 = load %struct.clk**, %struct.clk*** %11, align 8
  %43 = load i32, i32* %21, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.clk*, %struct.clk** %42, i64 %44
  %46 = load %struct.clk*, %struct.clk** %45, align 8
  store %struct.clk* %46, %struct.clk** %19, align 8
  %47 = load %struct.clk*, %struct.clk** %19, align 8
  %48 = icmp ne %struct.clk* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %130

50:                                               ; preds = %41
  %51 = load %struct.armada_clocking_params*, %struct.armada_clocking_params** %10, align 8
  %52 = getelementptr inbounds %struct.armada_clocking_params, %struct.armada_clocking_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.clk*, %struct.clk** %19, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @clk_round_rate(%struct.clk* %59, i64 %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %15, align 8
  br label %67

63:                                               ; preds = %50
  %64 = load %struct.clk*, %struct.clk** %19, align 8
  %65 = call i64 @clk_get_rate(%struct.clk* %64)
  store i64 %65, i64* %16, align 8
  %66 = load i64, i64* %16, align 8
  store i64 %66, i64* %15, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i64, i64* %16, align 8
  store i64 %72, i64* %17, align 8
  store i64 1, i64* %20, align 8
  br label %136

73:                                               ; preds = %67
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i64 @DIV_ROUND_CLOSEST(i64 %74, i64 %75)
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %20, align 8
  %81 = load %struct.armada_clocking_params*, %struct.armada_clocking_params** %10, align 8
  %82 = getelementptr inbounds %struct.armada_clocking_params, %struct.armada_clocking_params* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73
  br label %130

86:                                               ; preds = %79
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %20, align 8
  %89 = call i64 @DIV_ROUND_CLOSEST(i64 %87, i64 %88)
  store i64 %89, i64* %17, align 8
  %90 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %91 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %96 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* %17, align 8
  %103 = call i32 (i8*, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %98, i32 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %86
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %13, align 8
  %110 = udiv i64 %108, %109
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load %struct.armada_clocking_params*, %struct.armada_clocking_params** %10, align 8
  %113 = getelementptr inbounds %struct.armada_clocking_params, %struct.armada_clocking_params* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %130

117:                                              ; preds = %107
  br label %129

118:                                              ; preds = %86
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %13, align 8
  %121 = call i64 @DIV_ROUND_UP(i64 %119, i64 %120)
  store i64 %121, i64* %18, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load %struct.armada_clocking_params*, %struct.armada_clocking_params** %10, align 8
  %124 = getelementptr inbounds %struct.armada_clocking_params, %struct.armada_clocking_params* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %130

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %117
  br label %136

130:                                              ; preds = %127, %116, %85, %49
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %21, align 4
  br label %36

133:                                              ; preds = %36
  %134 = load i32, i32* @ERANGE, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %161

136:                                              ; preds = %129, %71
  %137 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %138 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.armada_crtc*, %struct.armada_crtc** %8, align 8
  %143 = getelementptr inbounds %struct.armada_crtc, %struct.armada_crtc* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i64, i64* %16, align 8
  %148 = load i64, i64* %20, align 8
  %149 = load i64, i64* %17, align 8
  %150 = call i32 (i8*, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %141, i32 %145, i32 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %15, align 8
  %152 = load %struct.armada_clk_result*, %struct.armada_clk_result** %9, align 8
  %153 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load %struct.clk*, %struct.clk** %19, align 8
  %155 = load %struct.armada_clk_result*, %struct.armada_clk_result** %9, align 8
  %156 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %155, i32 0, i32 2
  store %struct.clk* %154, %struct.clk** %156, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load %struct.armada_clk_result*, %struct.armada_clk_result** %9, align 8
  %159 = getelementptr inbounds %struct.armada_clk_result, %struct.armada_clk_result* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* %21, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %136, %133
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
