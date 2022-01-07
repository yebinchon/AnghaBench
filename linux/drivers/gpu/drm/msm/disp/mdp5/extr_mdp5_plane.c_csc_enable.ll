; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_csc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_plane.c_csc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32 }
%struct.csc_cfg = type { i64, i32*, i32*, i32*, i32*, i32* }

@CSC_YUV2RGB = common dso_local global i64 0, align 8
@CSC_YUV2YUV = common dso_local global i64 0, align 8
@DATA_FORMAT_YUV = common dso_local global i32 0, align 4
@CSC_RGB2YUV = common dso_local global i64 0, align 8
@MDP5_PIPE_OP_MODE_CSC_1_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdp5_kms*, i32, %struct.csc_cfg*)* @csc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csc_enable(%struct.mdp5_kms* %0, i32 %1, %struct.csc_cfg* %2) #0 {
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csc_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.csc_cfg* %2, %struct.csc_cfg** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %13 = icmp ne %struct.csc_cfg* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %210

19:                                               ; preds = %3
  %20 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %21 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CSC_YUV2RGB, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @CSC_YUV2YUV, align 8
  %27 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %28 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %19
  %32 = load i32, i32* @DATA_FORMAT_YUV, align 4
  %33 = call i32 @MDP5_PIPE_OP_MODE_CSC_SRC_DATA_FORMAT(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CSC_RGB2YUV, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @CSC_YUV2YUV, align 8
  %44 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %45 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @DATA_FORMAT_YUV, align 4
  %50 = call i32 @MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* @MDP5_PIPE_OP_MODE_CSC_1_EN, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @REG_MDP5_PIPE_OP_MODE(i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @mdp5_write(%struct.mdp5_kms* %57, i32 %59, i32 %60)
  %62 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %9, align 8
  %65 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0(i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_0_COEFF_11(i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_0_COEFF_12(i32 %74)
  %76 = or i32 %71, %75
  %77 = call i32 @mdp5_write(%struct.mdp5_kms* %65, i32 %67, i32 %76)
  %78 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1(i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_1_COEFF_13(i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_1_COEFF_21(i32 %87)
  %89 = or i32 %84, %88
  %90 = call i32 @mdp5_write(%struct.mdp5_kms* %78, i32 %80, i32 %89)
  %91 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2(i32 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_2_COEFF_22(i32 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_2_COEFF_23(i32 %100)
  %102 = or i32 %97, %101
  %103 = call i32 @mdp5_write(%struct.mdp5_kms* %91, i32 %93, i32 %102)
  %104 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3(i32 %105)
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_3_COEFF_31(i32 %109)
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_3_COEFF_32(i32 %113)
  %115 = or i32 %110, %114
  %116 = call i32 @mdp5_write(%struct.mdp5_kms* %104, i32 %106, i32 %115)
  %117 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4(i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_4_COEFF_33(i32 %122)
  %124 = call i32 @mdp5_write(%struct.mdp5_kms* %117, i32 %119, i32 %123)
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %207, %53
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %128 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @ARRAY_SIZE(i32* %129)
  %131 = icmp slt i32 %126, %130
  br i1 %131, label %132, label %210

132:                                              ; preds = %125
  %133 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %134 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  store i32* %135, i32** %10, align 8
  %136 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %137 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %11, align 8
  %139 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @REG_MDP5_PIPE_CSC_1_PRE_CLAMP(i32 %140, i32 %141)
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 2, %144
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @MDP5_PIPE_CSC_1_PRE_CLAMP_REG_HIGH(i32 %149)
  %151 = load i32*, i32** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = mul nsw i32 2, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @MDP5_PIPE_CSC_1_PRE_CLAMP_REG_LOW(i32 %156)
  %158 = or i32 %150, %157
  %159 = call i32 @mdp5_write(%struct.mdp5_kms* %139, i32 %142, i32 %158)
  %160 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @REG_MDP5_PIPE_CSC_1_POST_CLAMP(i32 %161, i32 %162)
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 2, %165
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @MDP5_PIPE_CSC_1_POST_CLAMP_REG_HIGH(i32 %170)
  %172 = load i32*, i32** %11, align 8
  %173 = load i32, i32* %7, align 4
  %174 = mul nsw i32 2, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @MDP5_PIPE_CSC_1_POST_CLAMP_REG_LOW(i32 %177)
  %179 = or i32 %171, %178
  %180 = call i32 @mdp5_write(%struct.mdp5_kms* %160, i32 %163, i32 %179)
  %181 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @REG_MDP5_PIPE_CSC_1_PRE_BIAS(i32 %182, i32 %183)
  %185 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %186 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @MDP5_PIPE_CSC_1_PRE_BIAS_REG_VALUE(i32 %191)
  %193 = call i32 @mdp5_write(%struct.mdp5_kms* %181, i32 %184, i32 %192)
  %194 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @REG_MDP5_PIPE_CSC_1_POST_BIAS(i32 %195, i32 %196)
  %198 = load %struct.csc_cfg*, %struct.csc_cfg** %6, align 8
  %199 = getelementptr inbounds %struct.csc_cfg, %struct.csc_cfg* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @MDP5_PIPE_CSC_1_POST_BIAS_REG_VALUE(i32 %204)
  %206 = call i32 @mdp5_write(%struct.mdp5_kms* %194, i32 %197, i32 %205)
  br label %207

207:                                              ; preds = %132
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %7, align 4
  br label %125

210:                                              ; preds = %18, %125
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @MDP5_PIPE_OP_MODE_CSC_SRC_DATA_FORMAT(i32) #1

declare dso_local i32 @MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT(i32) #1

declare dso_local i32 @mdp5_write(%struct.mdp5_kms*, i32, i32) #1

declare dso_local i32 @REG_MDP5_PIPE_OP_MODE(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_0(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_0_COEFF_11(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_0_COEFF_12(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_1(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_1_COEFF_13(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_1_COEFF_21(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_2(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_2_COEFF_22(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_2_COEFF_23(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_3(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_3_COEFF_31(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_3_COEFF_32(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_MATRIX_COEFF_4(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_MATRIX_COEFF_4_COEFF_33(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_PRE_CLAMP(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_PRE_CLAMP_REG_HIGH(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_PRE_CLAMP_REG_LOW(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_POST_CLAMP(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_POST_CLAMP_REG_HIGH(i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_POST_CLAMP_REG_LOW(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_PRE_BIAS(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_PRE_BIAS_REG_VALUE(i32) #1

declare dso_local i32 @REG_MDP5_PIPE_CSC_1_POST_BIAS(i32, i32) #1

declare dso_local i32 @MDP5_PIPE_CSC_1_POST_BIAS_REG_VALUE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
