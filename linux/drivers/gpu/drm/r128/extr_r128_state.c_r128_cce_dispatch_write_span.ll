; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_span.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_write_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@R128_CNTL_PAINT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_P = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @r128_cce_dispatch_write_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_write_span(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = load i32, i32* @RING_LOCALS, align 4
  %19 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 4096
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %2
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %202

31:                                               ; preds = %25
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @copy_from_user(i32* %8, i32 %34, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %202

40:                                               ; preds = %31
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @copy_from_user(i32* %9, i32 %43, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %202

49:                                               ; preds = %40
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32* @memdup_user(i64 %58, i32 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i64 @IS_ERR(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %49
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %3, align 4
  br label %202

67:                                               ; preds = %49
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %149

75:                                               ; preds = %67
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32* @memdup_user(i64 %78, i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @kfree(i32* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @PTR_ERR(i32* %87)
  store i32 %88, i32* %3, align 4
  br label %202

89:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %141, %89
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %146

94:                                               ; preds = %90
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %94
  %102 = call i32 @BEGIN_RING(i32 6)
  %103 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %104 = call i32 @CCE_PACKET3(i32 %103, i32 4)
  %105 = call i32 @OUT_RING(i32 %104)
  %106 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %107 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %108, %112
  %114 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @R128_ROP3_P, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @OUT_RING(i32 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @OUT_RING(i32 %125)
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @OUT_RING(i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = shl i32 %133, 16
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %134, %135
  %137 = call i32 @OUT_RING(i32 %136)
  %138 = call i32 @OUT_RING(i32 65537)
  %139 = call i32 (...) @ADVANCE_RING()
  br label %140

140:                                              ; preds = %101, %94
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %90

146:                                              ; preds = %90
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @kfree(i32* %147)
  br label %199

149:                                              ; preds = %67
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %193, %149
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %198

154:                                              ; preds = %150
  %155 = call i32 @BEGIN_RING(i32 6)
  %156 = load i32, i32* @R128_CNTL_PAINT_MULTI, align 4
  %157 = call i32 @CCE_PACKET3(i32 %156, i32 4)
  %158 = call i32 @OUT_RING(i32 %157)
  %159 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %160 = load i32, i32* @R128_GMC_BRUSH_SOLID_COLOR, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 8
  %166 = or i32 %161, %165
  %167 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @R128_ROP3_P, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %174 = or i32 %172, %173
  %175 = call i32 @OUT_RING(i32 %174)
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @OUT_RING(i32 %178)
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @OUT_RING(i32 %184)
  %186 = load i32, i32* %8, align 4
  %187 = shl i32 %186, 16
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @OUT_RING(i32 %189)
  %191 = call i32 @OUT_RING(i32 65537)
  %192 = call i32 (...) @ADVANCE_RING()
  br label %193

193:                                              ; preds = %154
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %150

198:                                              ; preds = %150
  br label %199

199:                                              ; preds = %198, %146
  %200 = load i32*, i32** %10, align 8
  %201 = call i32 @kfree(i32* %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %199, %84, %64, %46, %37, %28
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32* @memdup_user(i64, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
