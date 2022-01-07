; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_remove_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_remove_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpc_tree = type { i64, %struct.mpcc* }
%struct.mpcc = type { i32, i32, %struct.mpcc* }
%struct.dcn10_mpc = type { i32 }

@MUX = common dso_local global i32* null, align 8
@MPC_OUT_MUX = common dso_local global i32 0, align 4
@MPCC_BOT_SEL = common dso_local global i32* null, align 8
@MPCC_CONTROL = common dso_local global i32* null, align 8
@MPCC_MODE = common dso_local global i32 0, align 4
@MPCC_BLEND_MODE_TOP_LAYER_PASSTHROUGH = common dso_local global i32 0, align 4
@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_OPP_ID = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_remove_mpcc(%struct.mpc* %0, %struct.mpc_tree* %1, %struct.mpcc* %2) #0 {
  %4 = alloca %struct.mpc*, align 8
  %5 = alloca %struct.mpc_tree*, align 8
  %6 = alloca %struct.mpcc*, align 8
  %7 = alloca %struct.dcn10_mpc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpcc*, align 8
  store %struct.mpc* %0, %struct.mpc** %4, align 8
  store %struct.mpc_tree* %1, %struct.mpc_tree** %5, align 8
  store %struct.mpcc* %2, %struct.mpcc** %6, align 8
  %11 = load %struct.mpc*, %struct.mpc** %4, align 8
  %12 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %11)
  store %struct.dcn10_mpc* %12, %struct.dcn10_mpc** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %14 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %17 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %16, i32 0, i32 1
  %18 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %19 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %20 = icmp eq %struct.mpcc* %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %22 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %23 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %22, i32 0, i32 2
  %24 = load %struct.mpcc*, %struct.mpcc** %23, align 8
  %25 = icmp ne %struct.mpcc* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %28 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %27, i32 0, i32 2
  %29 = load %struct.mpcc*, %struct.mpcc** %28, align 8
  %30 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %31 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %30, i32 0, i32 1
  store %struct.mpcc* %29, %struct.mpcc** %31, align 8
  %32 = load i32*, i32** @MUX, align 8
  %33 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %34 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MPC_OUT_MUX, align 4
  %39 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %40 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %39, i32 0, i32 1
  %41 = load %struct.mpcc*, %struct.mpcc** %40, align 8
  %42 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %43)
  br label %56

45:                                               ; preds = %21
  %46 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %47 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %46, i32 0, i32 1
  store %struct.mpcc* null, %struct.mpcc** %47, align 8
  %48 = load i32*, i32** @MUX, align 8
  %49 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %50 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MPC_OUT_MUX, align 4
  %55 = call i32 @REG_UPDATE(i32 %53, i32 %54, i32 15)
  br label %56

56:                                               ; preds = %45, %26
  br label %132

57:                                               ; preds = %3
  %58 = load %struct.mpc_tree*, %struct.mpc_tree** %5, align 8
  %59 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %58, i32 0, i32 1
  %60 = load %struct.mpcc*, %struct.mpcc** %59, align 8
  store %struct.mpcc* %60, %struct.mpcc** %10, align 8
  br label %61

61:                                               ; preds = %72, %57
  %62 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %63 = icmp ne %struct.mpcc* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %66 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %65, i32 0, i32 2
  %67 = load %struct.mpcc*, %struct.mpcc** %66, align 8
  %68 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %69 = icmp ne %struct.mpcc* %67, %68
  br label %70

70:                                               ; preds = %64, %61
  %71 = phi i1 [ false, %61 ], [ %69, %64 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  %73 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %74 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %73, i32 0, i32 2
  %75 = load %struct.mpcc*, %struct.mpcc** %74, align 8
  store %struct.mpcc* %75, %struct.mpcc** %10, align 8
  br label %61

76:                                               ; preds = %70
  %77 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %78 = icmp ne %struct.mpcc* %77, null
  br i1 %78, label %79, label %131

79:                                               ; preds = %76
  %80 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %81 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %80, i32 0, i32 2
  %82 = load %struct.mpcc*, %struct.mpcc** %81, align 8
  %83 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %84 = icmp eq %struct.mpcc* %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %79
  store i32 1, i32* %8, align 4
  %86 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %87 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %86, i32 0, i32 2
  %88 = load %struct.mpcc*, %struct.mpcc** %87, align 8
  %89 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %90 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %89, i32 0, i32 2
  store %struct.mpcc* %88, %struct.mpcc** %90, align 8
  %91 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %92 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %91, i32 0, i32 2
  %93 = load %struct.mpcc*, %struct.mpcc** %92, align 8
  %94 = icmp ne %struct.mpcc* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %85
  %96 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %97 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %98 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %104 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %105 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %104, i32 0, i32 2
  %106 = load %struct.mpcc*, %struct.mpcc** %105, align 8
  %107 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @REG_SET(i32 %102, i32 0, i32* %103, i32 %108)
  br label %130

110:                                              ; preds = %85
  %111 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %112 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %113 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %119 = call i32 @REG_SET(i32 %117, i32 0, i32* %118, i32 15)
  %120 = load i32*, i32** @MPCC_CONTROL, align 8
  %121 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %122 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MPCC_MODE, align 4
  %128 = load i32, i32* @MPCC_BLEND_MODE_TOP_LAYER_PASSTHROUGH, align 4
  %129 = call i32 @REG_UPDATE(i32 %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %110, %95
  br label %131

131:                                              ; preds = %130, %79, %76
  br label %132

132:                                              ; preds = %131, %56
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %132
  %136 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %142 = call i32 @REG_SET(i32 %140, i32 0, i32* %141, i32 15)
  %143 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %144 = load i32, i32* %9, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %149 = call i32 @REG_SET(i32 %147, i32 0, i32* %148, i32 15)
  %150 = load i32*, i32** @MPCC_OPP_ID, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** @MPCC_OPP_ID, align 8
  %156 = call i32 @REG_SET(i32 %154, i32 0, i32* %155, i32 15)
  %157 = load i32, i32* %9, align 4
  %158 = shl i32 1, %157
  %159 = xor i32 %158, -1
  %160 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %7, align 8
  %161 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %165 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %164, i32 0, i32 1
  store i32 15, i32* %165, align 4
  %166 = load %struct.mpcc*, %struct.mpcc** %6, align 8
  %167 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %166, i32 0, i32 2
  store %struct.mpcc* null, %struct.mpcc** %167, align 8
  br label %190

168:                                              ; preds = %132
  %169 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %175 = call i32 @REG_SET(i32 %173, i32 0, i32* %174, i32 15)
  %176 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %182 = call i32 @REG_SET(i32 %180, i32 0, i32* %181, i32 15)
  %183 = load i32*, i32** @MPCC_OPP_ID, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** @MPCC_OPP_ID, align 8
  %189 = call i32 @REG_SET(i32 %187, i32 0, i32* %188, i32 15)
  br label %190

190:                                              ; preds = %168, %135
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
