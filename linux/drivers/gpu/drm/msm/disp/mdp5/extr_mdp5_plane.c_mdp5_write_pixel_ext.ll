; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_write_pixel_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_mdp5_write_pixel_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32 }
%struct.mdp_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_format_info = type { i32, i32 }

@COMP_MAX = common dso_local global i32 0, align 4
@COMP_1_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"comp-%d (L/R): rpt=%d/%d, ovf=%d/%d, req=%d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"comp-%d (T/B): rpt=%d/%d, ovf=%d/%d, req=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_kms*, i32, %struct.mdp_format*, i32, i32*, i32*, i32, i32*, i32*)* @mdp5_write_pixel_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdp5_write_pixel_ext(%struct.mdp5_kms* %0, i32 %1, %struct.mdp_format* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.mdp5_kms*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mdp_format*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.drm_format_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.mdp_format* %2, %struct.mdp_format** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %26 = load i32, i32* @COMP_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = load i32, i32* @COMP_MAX, align 4
  %29 = zext i32 %28 to i64
  %30 = load i32, i32* @COMP_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = load i32, i32* @COMP_MAX, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.mdp_format*, %struct.mdp_format** %12, align 8
  %35 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.drm_format_info* @drm_format_info(i32 %37)
  store %struct.drm_format_info* %38, %struct.drm_format_info** %19, align 8
  store i32 0, i32* %23, align 4
  br label %39

39:                                               ; preds = %230, %9
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* @COMP_MAX, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %233

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %24, align 4
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %25, align 4
  %46 = load %struct.mdp_format*, %struct.mdp_format** %12, align 8
  %47 = getelementptr inbounds %struct.mdp_format, %struct.mdp_format* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* @COMP_1_2, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.drm_format_info*, %struct.drm_format_info** %19, align 8
  %56 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %24, align 4
  %59 = sdiv i32 %58, %57
  store i32 %59, i32* %24, align 4
  %60 = load %struct.drm_format_info*, %struct.drm_format_info** %19, align 8
  %61 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %25, align 4
  %64 = sdiv i32 %63, %62
  store i32 %64, i32* %25, align 4
  br label %65

65:                                               ; preds = %54, %50, %43
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %23, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_RPT(i32 %77)
  br label %86

79:                                               ; preds = %65
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %23, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_OVF(i32 %84)
  br label %86

86:                                               ; preds = %79, %72
  %87 = phi i32 [ %78, %72 ], [ %85, %79 ]
  store i32 %87, i32* %20, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %23, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %23, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_RPT(i32 %99)
  br label %108

101:                                              ; preds = %86
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_OVF(i32 %106)
  br label %108

108:                                              ; preds = %101, %94
  %109 = phi i32 [ %100, %94 ], [ %107, %101 ]
  %110 = load i32, i32* %20, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %20, align 4
  %112 = load i32*, i32** %17, align 8
  %113 = load i32, i32* %23, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %108
  %119 = load i32*, i32** %17, align 8
  %120 = load i32, i32* %23, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @MDP5_PIPE_SW_PIX_EXT_TB_TOP_RPT(i32 %123)
  br label %132

125:                                              ; preds = %108
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %23, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @MDP5_PIPE_SW_PIX_EXT_TB_TOP_OVF(i32 %130)
  br label %132

132:                                              ; preds = %125, %118
  %133 = phi i32 [ %124, %118 ], [ %131, %125 ]
  store i32 %133, i32* %21, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = load i32, i32* %23, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %132
  %141 = load i32*, i32** %18, align 8
  %142 = load i32, i32* %23, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_RPT(i32 %145)
  br label %154

147:                                              ; preds = %132
  %148 = load i32*, i32** %18, align 8
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_OVF(i32 %152)
  br label %154

154:                                              ; preds = %147, %140
  %155 = phi i32 [ %146, %140 ], [ %153, %147 ]
  %156 = load i32, i32* %21, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %24, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %23, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %158, %163
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %164, %169
  %171 = call i32 @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_LEFT_RIGHT(i32 %170)
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %25, align 4
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* %23, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %172, %177
  %179 = load i32*, i32** %18, align 8
  %180 = load i32, i32* %23, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %178, %183
  %185 = call i32 @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_TOP_BOTTOM(i32 %184)
  %186 = load i32, i32* %22, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %22, align 4
  %188 = load %struct.mdp5_kms*, %struct.mdp5_kms** %10, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %23, align 4
  %191 = call i32 @REG_MDP5_PIPE_SW_PIX_EXT_LR(i32 %189, i32 %190)
  %192 = load i32, i32* %20, align 4
  %193 = call i32 @mdp5_write(%struct.mdp5_kms* %188, i32 %191, i32 %192)
  %194 = load %struct.mdp5_kms*, %struct.mdp5_kms** %10, align 8
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @REG_MDP5_PIPE_SW_PIX_EXT_TB(i32 %195, i32 %196)
  %198 = load i32, i32* %21, align 4
  %199 = call i32 @mdp5_write(%struct.mdp5_kms* %194, i32 %197, i32 %198)
  %200 = load %struct.mdp5_kms*, %struct.mdp5_kms** %10, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %23, align 4
  %203 = call i32 @REG_MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS(i32 %201, i32 %202)
  %204 = load i32, i32* %22, align 4
  %205 = call i32 @mdp5_write(%struct.mdp5_kms* %200, i32 %203, i32 %204)
  %206 = load i32, i32* %23, align 4
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @FIELD(i32 %207, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_RPT)
  %209 = load i32, i32* %20, align 4
  %210 = call i32 @FIELD(i32 %209, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_RPT)
  %211 = load i32, i32* %20, align 4
  %212 = call i32 @FIELD(i32 %211, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_OVF)
  %213 = load i32, i32* %20, align 4
  %214 = call i32 @FIELD(i32 %213, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_OVF)
  %215 = load i32, i32* %22, align 4
  %216 = call i32 @FIELD(i32 %215, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_LEFT_RIGHT)
  %217 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %206, i32 %208, i32 %210, i32 %212, i32 %214, i32 %216)
  %218 = load i32, i32* %23, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i32 @FIELD(i32 %219, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_TB_TOP_RPT)
  %221 = load i32, i32* %21, align 4
  %222 = call i32 @FIELD(i32 %221, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_RPT)
  %223 = load i32, i32* %21, align 4
  %224 = call i32 @FIELD(i32 %223, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_TB_TOP_OVF)
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @FIELD(i32 %225, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_OVF)
  %227 = load i32, i32* %22, align 4
  %228 = call i32 @FIELD(i32 %227, i32 (i32)* @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_TOP_BOTTOM)
  %229 = call i32 @DBG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %218, i32 %220, i32 %222, i32 %224, i32 %226, i32 %228)
  br label %230

230:                                              ; preds = %154
  %231 = load i32, i32* %23, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %23, align 4
  br label %39

233:                                              ; preds = %39
  ret void
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_RPT(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_LR_LEFT_OVF(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_RPT(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_LR_RIGHT_OVF(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_TB_TOP_RPT(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_TB_TOP_OVF(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_RPT(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_TB_BOTTOM_OVF(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_LEFT_RIGHT(i32) #1

declare dso_local i32 @MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS_TOP_BOTTOM(i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SW_PIX_EXT_LR(i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SW_PIX_EXT_TB(i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_SW_PIX_EXT_REQ_PIXELS(i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD(i32, i32 (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
