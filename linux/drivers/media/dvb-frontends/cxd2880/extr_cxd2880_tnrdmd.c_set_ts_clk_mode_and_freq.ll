; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_set_ts_clk_mode_and_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_set_ts_clk_mode_and_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd_ts_clk_cfg = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.cxd2880_tnrdmd = type { i32, i64, i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32, i32)* }

@set_ts_clk_mode_and_freq.srl_ts_clk_stgs = internal constant [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]] [[2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i32 3, i32 1, i32 8, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i32 0, i32 2, i32 16, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }], [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg] [%struct.cxd2880_tnrdmd_ts_clk_cfg { i32 1, i32 1, i32 8, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }, %struct.cxd2880_tnrdmd_ts_clk_cfg { i32 2, i32 2, i32 16, %struct.TYPE_8__ zeroinitializer, %struct.TYPE_7__ zeroinitializer }]], align 16
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_DTV_SYS_DVBT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32)* @set_ts_clk_mode_and_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ts_clk_mode_and_freq(%struct.cxd2880_tnrdmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_tnrdmd_ts_clk_cfg, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %14 = icmp ne %struct.cxd2880_tnrdmd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %172

18:                                               ; preds = %2
  %19 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %20 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %22, align 8
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 3
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %28 = call i32 %23(%struct.TYPE_9__* %26, i32 %27, i32 0, i32 0)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %172

33:                                               ; preds = %18
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %42 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %47, i32 0, i32 3
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %49, i32 %50, i32 211, i32 %51, i32 1)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %172

57:                                               ; preds = %46
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %60, i32 %61, i32 222, i32 %62, i32 1)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %172

68:                                               ; preds = %57
  %69 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %70 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %71, i32 %72, i32 218, i32 %73, i32 1)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %172

79:                                               ; preds = %68
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]], [2 x [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]]* @set_ts_clk_mode_and_freq.srl_ts_clk_stgs, i64 0, i64 %82
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg], [2 x %struct.cxd2880_tnrdmd_ts_clk_cfg]* %83, i64 0, i64 %86
  %88 = bitcast %struct.cxd2880_tnrdmd_ts_clk_cfg* %8 to i8*
  %89 = bitcast %struct.cxd2880_tnrdmd_ts_clk_cfg* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 36, i1 false)
  %90 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %91 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %96 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd_ts_clk_cfg, %struct.cxd2880_tnrdmd_ts_clk_cfg* %8, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %79
  %100 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %101 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %100, i32 0, i32 3
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %104 = getelementptr inbounds %struct.cxd2880_tnrdmd_ts_clk_cfg, %struct.cxd2880_tnrdmd_ts_clk_cfg* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %102, i32 %103, i32 196, i32 %105, i32 3)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %172

111:                                              ; preds = %99
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %113 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %112, i32 0, i32 3
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %116 = getelementptr inbounds %struct.cxd2880_tnrdmd_ts_clk_cfg, %struct.cxd2880_tnrdmd_ts_clk_cfg* %8, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %114, i32 %115, i32 209, i32 %117, i32 3)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %172

123:                                              ; preds = %111
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 3
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %127, align 8
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 3
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %133 = getelementptr inbounds %struct.cxd2880_tnrdmd_ts_clk_cfg, %struct.cxd2880_tnrdmd_ts_clk_cfg* %8, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 %128(%struct.TYPE_9__* %131, i32 %132, i32 217, i32 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %123
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %172

140:                                              ; preds = %123
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 0, i32 1
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @CXD2880_DTV_SYS_DVBT, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %140
  %149 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %150 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %149, i32 0, i32 3
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %152, align 8
  %154 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %155 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %154, i32 0, i32 3
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %158 = call i32 %153(%struct.TYPE_9__* %156, i32 %157, i32 0, i32 16)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %148
  %162 = load i32, i32* %6, align 4
  store i32 %162, i32* %3, align 4
  br label %172

163:                                              ; preds = %148
  %164 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %165 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %164, i32 0, i32 3
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__* %166, i32 %167, i32 102, i32 %168, i32 1)
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %163, %140
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %161, %138, %121, %109, %77, %66, %55, %31, %15
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @cxd2880_io_set_reg_bits(%struct.TYPE_9__*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
