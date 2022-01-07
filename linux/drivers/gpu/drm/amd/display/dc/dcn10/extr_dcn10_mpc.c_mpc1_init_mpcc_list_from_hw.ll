; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_init_mpcc_list_from_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_init_mpcc_list_from_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { i32 }
%struct.mpc_tree = type { i64, %struct.mpcc* }
%struct.mpcc = type { i32, %struct.mpcc* }
%struct.dcn10_mpc = type { i32, i32 }

@MUX = common dso_local global i32* null, align 8
@MPC_OUT_MUX = common dso_local global i32* null, align 8
@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_BOT_SEL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpc1_init_mpcc_list_from_hw(%struct.mpc* %0, %struct.mpc_tree* %1) #0 {
  %3 = alloca %struct.mpc*, align 8
  %4 = alloca %struct.mpc_tree*, align 8
  %5 = alloca %struct.dcn10_mpc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mpcc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mpcc*, align 8
  store %struct.mpc* %0, %struct.mpc** %3, align 8
  store %struct.mpc_tree* %1, %struct.mpc_tree** %4, align 8
  %14 = load %struct.mpc*, %struct.mpc** %3, align 8
  %15 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %14)
  store %struct.dcn10_mpc* %15, %struct.dcn10_mpc** %5, align 8
  %16 = load i32*, i32** @MUX, align 8
  %17 = load %struct.mpc_tree*, %struct.mpc_tree** %4, align 8
  %18 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** @MPC_OUT_MUX, align 8
  %23 = call i32 @REG_GET(i32 %21, i32* %22, i32* %9)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 15
  br i1 %25, label %26, label %137

26:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %133, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %5, align 8
  %30 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %136

33:                                               ; preds = %27
  %34 = load i32*, i32** @MPCC_OPP_ID, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @MPCC_OPP_ID, align 8
  %40 = call i32 @REG_GET(i32 %38, i32* %39, i32* %6)
  %41 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %47 = call i32 @REG_GET(i32 %45, i32* %46, i32* %7)
  %48 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %54 = call i32 @REG_GET(i32 %52, i32* %53, i32* %8)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %33
  store i32 15, i32* %8, align 4
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.mpc_tree*, %struct.mpc_tree** %4, align 8
  %63 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %132

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 15
  br i1 %68, label %69, label %132

69:                                               ; preds = %66
  %70 = load %struct.mpc*, %struct.mpc** %3, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call %struct.mpcc* @mpc1_get_mpcc(%struct.mpc* %70, i32 %71)
  store %struct.mpcc* %72, %struct.mpcc** %10, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %75 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %5, align 8
  %79 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %69
  %86 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %87 = load %struct.mpc_tree*, %struct.mpc_tree** %4, align 8
  %88 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %87, i32 0, i32 1
  store %struct.mpcc* %86, %struct.mpcc** %88, align 8
  br label %89

89:                                               ; preds = %85, %69
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 15
  br i1 %91, label %92, label %131

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %5, align 8
  %95 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %131

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** @MPCC_OPP_ID, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @MPCC_OPP_ID, align 8
  %106 = call i32 @REG_GET(i32 %104, i32* %105, i32* %6)
  %107 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %113 = call i32 @REG_GET(i32 %111, i32* %112, i32* %7)
  %114 = load i32, i32* %6, align 4
  %115 = zext i32 %114 to i64
  %116 = load %struct.mpc_tree*, %struct.mpc_tree** %4, align 8
  %117 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %98
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 15
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load %struct.mpc*, %struct.mpc** %3, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call %struct.mpcc* @mpc1_get_mpcc(%struct.mpc* %124, i32 %125)
  store %struct.mpcc* %126, %struct.mpcc** %13, align 8
  %127 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %128 = load %struct.mpcc*, %struct.mpcc** %10, align 8
  %129 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %128, i32 0, i32 1
  store %struct.mpcc* %127, %struct.mpcc** %129, align 8
  br label %130

130:                                              ; preds = %123, %120, %98
  br label %131

131:                                              ; preds = %130, %92, %89
  br label %132

132:                                              ; preds = %131, %66, %59
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %27

136:                                              ; preds = %27
  br label %137

137:                                              ; preds = %136, %2
  ret void
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @REG_GET(i32, i32*, i32*) #1

declare dso_local %struct.mpcc* @mpc1_get_mpcc(%struct.mpc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
