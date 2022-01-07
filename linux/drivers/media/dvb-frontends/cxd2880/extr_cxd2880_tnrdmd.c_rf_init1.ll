; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_rf_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_rf_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.TYPE_52__*, %struct.TYPE_51__, %struct.TYPE_50__*, %struct.TYPE_48__* }
%struct.TYPE_52__ = type { i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)* }
%struct.TYPE_51__ = type { i64, i64, i64 }
%struct.TYPE_50__ = type { %struct.TYPE_49__* }
%struct.TYPE_49__ = type { i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i32, i32 }

@rf_init1.rf_init1_cdata1 = internal constant [40 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 4, i32 4, i32 4, i32 3, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 5, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 2, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 4, i32 4, i32 4], align 16
@rf_init1.rf_init1_cdata2 = internal constant [5 x i32] [i32 255, i32 0, i32 0, i32 0, i32 0], align 16
@rf_init1.rf_init1_cdata3 = internal constant [80 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 2, i32 0, i32 99, i32 0, i32 0, i32 0, i32 3, i32 0, i32 4, i32 0, i32 4, i32 0, i32 6, i32 0, i32 6, i32 0, i32 8, i32 0, i32 9, i32 0, i32 11, i32 0, i32 11, i32 0, i32 13, i32 0, i32 13, i32 0, i32 15, i32 0, i32 15, i32 0, i32 15, i32 0, i32 16, i32 0, i32 121, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3, i32 0, i32 1, i32 0, i32 3, i32 0, i32 3, i32 0, i32 3, i32 0, i32 4, i32 0, i32 4, i32 0, i32 6, i32 0, i32 5, i32 0, i32 7, i32 0, i32 7, i32 0, i32 8, i32 0, i32 10, i32 3, i32 224], align 16
@rf_init1.rf_init1_cdata4 = internal constant [8 x i32] [i32 32, i32 32, i32 48, i32 65, i32 80, i32 95, i32 111, i32 128], align 16
@rf_init1.rf_init1_cdata5 = internal constant [50 x i32] [i32 0, i32 9, i32 0, i32 8, i32 0, i32 7, i32 0, i32 6, i32 0, i32 5, i32 0, i32 3, i32 0, i32 2, i32 0, i32 0, i32 0, i32 120, i32 0, i32 0, i32 0, i32 6, i32 0, i32 8, i32 0, i32 8, i32 0, i32 12, i32 0, i32 12, i32 0, i32 13, i32 0, i32 15, i32 0, i32 14, i32 0, i32 14, i32 0, i32 16, i32 0, i32 15, i32 0, i32 14, i32 0, i32 16, i32 0, i32 15, i32 0, i32 14], align 16
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@rf_init1_seq1 = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_XTAL_SHARE_SLAVE = common dso_local global i64 0, align 8
@rf_init1_seq2 = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X = common dso_local global i64 0, align 8
@rf_init1_seq3 = common dso_local global i32 0, align 4
@rf_init1_seq4 = common dso_local global i32 0, align 4
@rf_init1_seq5 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@rf_init1_seq6 = common dso_local global i32 0, align 4
@rf_init1_seq7 = common dso_local global i32 0, align 4
@rf_init1_seq8 = common dso_local global i32 0, align 4
@rf_init1_seq9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*)* @rf_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rf_init1(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %9 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 32, i1 false)
  store i32 0, i32* %5, align 4
  %10 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %11 = icmp ne %struct.cxd2880_tnrdmd* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %970

15:                                               ; preds = %1
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %17 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_52__*, %struct.TYPE_52__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %19, align 8
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %21, i32 0, i32 1
  %23 = load %struct.TYPE_52__*, %struct.TYPE_52__** %22, align 8
  %24 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %25 = call i32 %20(%struct.TYPE_52__* %23, i32 %24, i32 0, i32 0)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %970

30:                                               ; preds = %15
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %31, align 16
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 1, i32* %33, align 8
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_52__*, %struct.TYPE_52__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %37, align 8
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_52__*, %struct.TYPE_52__** %40, align 8
  %42 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %44 = call i32 %38(%struct.TYPE_52__* %41, i32 %42, i32 33, i32* %43, i32 3)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %970

49:                                               ; preds = %30
  %50 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_52__*, %struct.TYPE_52__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %53, align 8
  %55 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %55, i32 0, i32 1
  %57 = load %struct.TYPE_52__*, %struct.TYPE_52__** %56, align 8
  %58 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %59 = call i32 %54(%struct.TYPE_52__* %57, i32 %58, i32 0, i32 16)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %970

64:                                               ; preds = %49
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %65, align 16
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 1
  %69 = load %struct.TYPE_52__*, %struct.TYPE_52__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %69, i32 0, i32 1
  %71 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %70, align 8
  %72 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %73 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %72, i32 0, i32 1
  %74 = load %struct.TYPE_52__*, %struct.TYPE_52__** %73, align 8
  %75 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %77 = call i32 %71(%struct.TYPE_52__* %74, i32 %75, i32 23, i32* %76, i32 2)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %64
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %970

82:                                               ; preds = %64
  %83 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %84 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %90 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_52__*, %struct.TYPE_52__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %92, align 8
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 1
  %96 = load %struct.TYPE_52__*, %struct.TYPE_52__** %95, align 8
  %97 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %98 = call i32 %93(%struct.TYPE_52__* %96, i32 %97, i32 26, i32 6)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %970

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103, %82
  %105 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %106 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %105, i32 0, i32 1
  %107 = load %struct.TYPE_52__*, %struct.TYPE_52__** %106, align 8
  %108 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %109 = load i32, i32* @rf_init1_seq1, align 4
  %110 = load i32, i32* @rf_init1_seq1, align 4
  %111 = call i32 @ARRAY_SIZE(i32 %110)
  %112 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %107, i32 %108, i32 %109, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %970

117:                                              ; preds = %104
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %118, align 16
  %119 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %120 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %126 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CXD2880_TNRDMD_XTAL_SHARE_SLAVE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %132, align 4
  br label %135

133:                                              ; preds = %124, %117
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 31, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 10, i32* %136, align 8
  %137 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %137, i32 0, i32 1
  %139 = load %struct.TYPE_52__*, %struct.TYPE_52__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %139, i32 0, i32 1
  %141 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %140, align 8
  %142 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %143 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %142, i32 0, i32 1
  %144 = load %struct.TYPE_52__*, %struct.TYPE_52__** %143, align 8
  %145 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %147 = call i32 %141(%struct.TYPE_52__* %144, i32 %145, i32 181, i32* %146, i32 3)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %135
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %970

152:                                              ; preds = %135
  %153 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %154 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %153, i32 0, i32 1
  %155 = load %struct.TYPE_52__*, %struct.TYPE_52__** %154, align 8
  %156 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %157 = load i32, i32* @rf_init1_seq2, align 4
  %158 = load i32, i32* @rf_init1_seq2, align 4
  %159 = call i32 @ARRAY_SIZE(i32 %158)
  %160 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %155, i32 %156, i32 %157, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %970

165:                                              ; preds = %152
  %166 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %167 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 52, i32* %172, align 16
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 44, i32* %173, align 4
  br label %177

174:                                              ; preds = %165
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 47, i32* %175, align 16
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 37, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 21, i32* %178, align 8
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 25, i32* %179, align 4
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 27, i32* %180, align 16
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 21, i32* %181, align 4
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  store i32 25, i32* %182, align 8
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 7
  store i32 27, i32* %183, align 4
  %184 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %185 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %184, i32 0, i32 1
  %186 = load %struct.TYPE_52__*, %struct.TYPE_52__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %186, i32 0, i32 1
  %188 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %187, align 8
  %189 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %190 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %189, i32 0, i32 1
  %191 = load %struct.TYPE_52__*, %struct.TYPE_52__** %190, align 8
  %192 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %193 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %194 = call i32 %188(%struct.TYPE_52__* %191, i32 %192, i32 217, i32* %193, i32 8)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %177
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %2, align 4
  br label %970

199:                                              ; preds = %177
  %200 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %201 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %200, i32 0, i32 1
  %202 = load %struct.TYPE_52__*, %struct.TYPE_52__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %203, align 8
  %205 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %206 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %205, i32 0, i32 1
  %207 = load %struct.TYPE_52__*, %struct.TYPE_52__** %206, align 8
  %208 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %209 = call i32 %204(%struct.TYPE_52__* %207, i32 %208, i32 0, i32 17)
  store i32 %209, i32* %6, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %199
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %2, align 4
  br label %970

214:                                              ; preds = %199
  %215 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 108, i32* %215, align 16
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 16, i32* %216, align 4
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 166, i32* %217, align 8
  %218 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %219 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %218, i32 0, i32 1
  %220 = load %struct.TYPE_52__*, %struct.TYPE_52__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %220, i32 0, i32 1
  %222 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %221, align 8
  %223 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %224 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %223, i32 0, i32 1
  %225 = load %struct.TYPE_52__*, %struct.TYPE_52__** %224, align 8
  %226 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %227 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %228 = call i32 %222(%struct.TYPE_52__* %225, i32 %226, i32 68, i32* %227, i32 3)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %214
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %2, align 4
  br label %970

233:                                              ; preds = %214
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 22, i32* %234, align 16
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 168, i32* %235, align 4
  %236 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %237 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %236, i32 0, i32 1
  %238 = load %struct.TYPE_52__*, %struct.TYPE_52__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %238, i32 0, i32 1
  %240 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %239, align 8
  %241 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %242 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %241, i32 0, i32 1
  %243 = load %struct.TYPE_52__*, %struct.TYPE_52__** %242, align 8
  %244 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %246 = call i32 %240(%struct.TYPE_52__* %243, i32 %244, i32 80, i32* %245, i32 2)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %233
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %2, align 4
  br label %970

251:                                              ; preds = %233
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %252, align 16
  %253 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 34, i32* %253, align 4
  %254 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %254, align 8
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 136, i32* %255, align 4
  %256 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %257 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %256, i32 0, i32 1
  %258 = load %struct.TYPE_52__*, %struct.TYPE_52__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %258, i32 0, i32 1
  %260 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %259, align 8
  %261 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %262 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %261, i32 0, i32 1
  %263 = load %struct.TYPE_52__*, %struct.TYPE_52__** %262, align 8
  %264 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %265 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %266 = call i32 %260(%struct.TYPE_52__* %263, i32 %264, i32 98, i32* %265, i32 4)
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %251
  %270 = load i32, i32* %6, align 4
  store i32 %270, i32* %2, align 4
  br label %970

271:                                              ; preds = %251
  %272 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %273 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %272, i32 0, i32 1
  %274 = load %struct.TYPE_52__*, %struct.TYPE_52__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %274, i32 0, i32 0
  %276 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %275, align 8
  %277 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %278 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %277, i32 0, i32 1
  %279 = load %struct.TYPE_52__*, %struct.TYPE_52__** %278, align 8
  %280 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %281 = call i32 %276(%struct.TYPE_52__* %279, i32 %280, i32 116, i32 117)
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %271
  %285 = load i32, i32* %6, align 4
  store i32 %285, i32* %2, align 4
  br label %970

286:                                              ; preds = %271
  %287 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %288 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %287, i32 0, i32 1
  %289 = load %struct.TYPE_52__*, %struct.TYPE_52__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %289, i32 0, i32 1
  %291 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %290, align 8
  %292 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %293 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %292, i32 0, i32 1
  %294 = load %struct.TYPE_52__*, %struct.TYPE_52__** %293, align 8
  %295 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %296 = call i32 %291(%struct.TYPE_52__* %294, i32 %295, i32 127, i32* getelementptr inbounds ([40 x i32], [40 x i32]* @rf_init1.rf_init1_cdata1, i64 0, i64 0), i32 40)
  store i32 %296, i32* %6, align 4
  %297 = load i32, i32* %6, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %301

299:                                              ; preds = %286
  %300 = load i32, i32* %6, align 4
  store i32 %300, i32* %2, align 4
  br label %970

301:                                              ; preds = %286
  %302 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %303 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %302, i32 0, i32 1
  %304 = load %struct.TYPE_52__*, %struct.TYPE_52__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %304, i32 0, i32 0
  %306 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %305, align 8
  %307 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %308 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %307, i32 0, i32 1
  %309 = load %struct.TYPE_52__*, %struct.TYPE_52__** %308, align 8
  %310 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %311 = call i32 %306(%struct.TYPE_52__* %309, i32 %310, i32 0, i32 22)
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* %6, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %301
  %315 = load i32, i32* %6, align 4
  store i32 %315, i32* %2, align 4
  br label %970

316:                                              ; preds = %301
  %317 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %317, align 16
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 113, i32* %318, align 4
  %319 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %320 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %319, i32 0, i32 1
  %321 = load %struct.TYPE_52__*, %struct.TYPE_52__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %321, i32 0, i32 1
  %323 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %322, align 8
  %324 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %325 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %324, i32 0, i32 1
  %326 = load %struct.TYPE_52__*, %struct.TYPE_52__** %325, align 8
  %327 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %328 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %329 = call i32 %323(%struct.TYPE_52__* %326, i32 %327, i32 16, i32* %328, i32 2)
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %316
  %333 = load i32, i32* %6, align 4
  store i32 %333, i32* %2, align 4
  br label %970

334:                                              ; preds = %316
  %335 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %336 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %335, i32 0, i32 1
  %337 = load %struct.TYPE_52__*, %struct.TYPE_52__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %337, i32 0, i32 0
  %339 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %338, align 8
  %340 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %341 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %340, i32 0, i32 1
  %342 = load %struct.TYPE_52__*, %struct.TYPE_52__** %341, align 8
  %343 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %344 = call i32 %339(%struct.TYPE_52__* %342, i32 %343, i32 35, i32 137)
  store i32 %344, i32* %6, align 4
  %345 = load i32, i32* %6, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %334
  %348 = load i32, i32* %6, align 4
  store i32 %348, i32* %2, align 4
  br label %970

349:                                              ; preds = %334
  %350 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %351 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %350, i32 0, i32 1
  %352 = load %struct.TYPE_52__*, %struct.TYPE_52__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %352, i32 0, i32 1
  %354 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %353, align 8
  %355 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %356 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %355, i32 0, i32 1
  %357 = load %struct.TYPE_52__*, %struct.TYPE_52__** %356, align 8
  %358 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %359 = call i32 %354(%struct.TYPE_52__* %357, i32 %358, i32 39, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @rf_init1.rf_init1_cdata2, i64 0, i64 0), i32 5)
  store i32 %359, i32* %6, align 4
  %360 = load i32, i32* %6, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %349
  %363 = load i32, i32* %6, align 4
  store i32 %363, i32* %2, align 4
  br label %970

364:                                              ; preds = %349
  %365 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %366 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %365, i32 0, i32 1
  %367 = load %struct.TYPE_52__*, %struct.TYPE_52__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %367, i32 0, i32 1
  %369 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %368, align 8
  %370 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %371 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %370, i32 0, i32 1
  %372 = load %struct.TYPE_52__*, %struct.TYPE_52__** %371, align 8
  %373 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %374 = call i32 %369(%struct.TYPE_52__* %372, i32 %373, i32 58, i32* getelementptr inbounds ([80 x i32], [80 x i32]* @rf_init1.rf_init1_cdata3, i64 0, i64 0), i32 80)
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %6, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %364
  %378 = load i32, i32* %6, align 4
  store i32 %378, i32* %2, align 4
  br label %970

379:                                              ; preds = %364
  %380 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 3, i32* %380, align 16
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 224, i32* %381, align 4
  %382 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %383 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %382, i32 0, i32 1
  %384 = load %struct.TYPE_52__*, %struct.TYPE_52__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %384, i32 0, i32 1
  %386 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %385, align 8
  %387 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %388 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %387, i32 0, i32 1
  %389 = load %struct.TYPE_52__*, %struct.TYPE_52__** %388, align 8
  %390 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %391 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %392 = call i32 %386(%struct.TYPE_52__* %389, i32 %390, i32 188, i32* %391, i32 2)
  store i32 %392, i32* %6, align 4
  %393 = load i32, i32* %6, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %379
  %396 = load i32, i32* %6, align 4
  store i32 %396, i32* %2, align 4
  br label %970

397:                                              ; preds = %379
  %398 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %399 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %398, i32 0, i32 1
  %400 = load %struct.TYPE_52__*, %struct.TYPE_52__** %399, align 8
  %401 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %402 = load i32, i32* @rf_init1_seq3, align 4
  %403 = load i32, i32* @rf_init1_seq3, align 4
  %404 = call i32 @ARRAY_SIZE(i32 %403)
  %405 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %400, i32 %401, i32 %402, i32 %404)
  store i32 %405, i32* %6, align 4
  %406 = load i32, i32* %6, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %410

408:                                              ; preds = %397
  %409 = load i32, i32* %6, align 4
  store i32 %409, i32* %2, align 4
  br label %970

410:                                              ; preds = %397
  %411 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %412 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %411, i32 0, i32 2
  %413 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %410
  %417 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 6, i32* %417, align 16
  %418 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 7, i32* %418, align 4
  %419 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 26, i32* %419, align 8
  br label %424

420:                                              ; preds = %410
  %421 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %421, align 16
  %422 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 8, i32* %422, align 4
  %423 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 25, i32* %423, align 8
  br label %424

424:                                              ; preds = %420, %416
  %425 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 14, i32* %425, align 4
  %426 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 9, i32* %426, align 16
  %427 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 14, i32* %427, align 4
  %428 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %429 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %428, i32 0, i32 1
  %430 = load %struct.TYPE_52__*, %struct.TYPE_52__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %430, i32 0, i32 0
  %432 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %431, align 8
  %433 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %434 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %433, i32 0, i32 1
  %435 = load %struct.TYPE_52__*, %struct.TYPE_52__** %434, align 8
  %436 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %437 = call i32 %432(%struct.TYPE_52__* %435, i32 %436, i32 0, i32 18)
  store i32 %437, i32* %6, align 4
  %438 = load i32, i32* %6, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %424
  %441 = load i32, i32* %6, align 4
  store i32 %441, i32* %2, align 4
  br label %970

442:                                              ; preds = %424
  store i32 16, i32* %5, align 4
  br label %443

443:                                              ; preds = %495, %442
  %444 = load i32, i32* %5, align 4
  %445 = icmp slt i32 %444, 159
  br i1 %445, label %446, label %498

446:                                              ; preds = %443
  %447 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %448 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %447, i32 0, i32 4
  %449 = load %struct.TYPE_48__*, %struct.TYPE_48__** %448, align 8
  %450 = icmp ne %struct.TYPE_48__* %449, null
  br i1 %450, label %451, label %477

451:                                              ; preds = %446
  store i32 0, i32* %7, align 4
  %452 = load i32, i32* %5, align 4
  %453 = sub nsw i32 %452, 16
  %454 = sdiv i32 %453, 6
  store i32 %454, i32* %7, align 4
  %455 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %456 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %455, i32 0, i32 4
  %457 = load %struct.TYPE_48__*, %struct.TYPE_48__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %457, i32 0, i32 0
  %459 = load %struct.TYPE_47__*, %struct.TYPE_47__** %458, align 8
  %460 = load i32, i32* %7, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 %464, i32* %465, align 16
  %466 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %467 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %466, i32 0, i32 4
  %468 = load %struct.TYPE_48__*, %struct.TYPE_48__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %468, i32 0, i32 0
  %470 = load %struct.TYPE_47__*, %struct.TYPE_47__** %469, align 8
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %470, i64 %472
  %474 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %475, i32* %476, align 4
  br label %477

477:                                              ; preds = %451, %446
  %478 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %479 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %478, i32 0, i32 1
  %480 = load %struct.TYPE_52__*, %struct.TYPE_52__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %480, i32 0, i32 1
  %482 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %481, align 8
  %483 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %484 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %483, i32 0, i32 1
  %485 = load %struct.TYPE_52__*, %struct.TYPE_52__** %484, align 8
  %486 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %487 = load i32, i32* %5, align 4
  %488 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %489 = call i32 %482(%struct.TYPE_52__* %485, i32 %486, i32 %487, i32* %488, i32 6)
  store i32 %489, i32* %6, align 4
  %490 = load i32, i32* %6, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %477
  %493 = load i32, i32* %6, align 4
  store i32 %493, i32* %2, align 4
  br label %970

494:                                              ; preds = %477
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %5, align 4
  %497 = add nsw i32 %496, 6
  store i32 %497, i32* %5, align 4
  br label %443

498:                                              ; preds = %443
  %499 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %499, align 16
  %500 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 8, i32* %500, align 4
  %501 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %502 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %502, i32 0, i32 1
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %498
  %507 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 26, i32* %507, align 8
  br label %510

508:                                              ; preds = %498
  %509 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 25, i32* %509, align 8
  br label %510

510:                                              ; preds = %508, %506
  %511 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 14, i32* %511, align 4
  %512 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 9, i32* %512, align 16
  %513 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 5
  store i32 14, i32* %513, align 4
  %514 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %515 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %514, i32 0, i32 1
  %516 = load %struct.TYPE_52__*, %struct.TYPE_52__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %516, i32 0, i32 0
  %518 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %517, align 8
  %519 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %520 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %519, i32 0, i32 1
  %521 = load %struct.TYPE_52__*, %struct.TYPE_52__** %520, align 8
  %522 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %523 = call i32 %518(%struct.TYPE_52__* %521, i32 %522, i32 0, i32 19)
  store i32 %523, i32* %6, align 4
  %524 = load i32, i32* %6, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %510
  %527 = load i32, i32* %6, align 4
  store i32 %527, i32* %2, align 4
  br label %970

528:                                              ; preds = %510
  store i32 16, i32* %5, align 4
  br label %529

529:                                              ; preds = %581, %528
  %530 = load i32, i32* %5, align 4
  %531 = icmp slt i32 %530, 207
  br i1 %531, label %532, label %584

532:                                              ; preds = %529
  %533 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %534 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %533, i32 0, i32 3
  %535 = load %struct.TYPE_50__*, %struct.TYPE_50__** %534, align 8
  %536 = icmp ne %struct.TYPE_50__* %535, null
  br i1 %536, label %537, label %563

537:                                              ; preds = %532
  store i32 0, i32* %8, align 4
  %538 = load i32, i32* %5, align 4
  %539 = sub nsw i32 %538, 16
  %540 = sdiv i32 %539, 6
  store i32 %540, i32* %8, align 4
  %541 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %542 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %541, i32 0, i32 3
  %543 = load %struct.TYPE_50__*, %struct.TYPE_50__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_49__*, %struct.TYPE_49__** %544, align 8
  %546 = load i32, i32* %8, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %545, i64 %547
  %549 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 4
  %551 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 %550, i32* %551, align 16
  %552 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %553 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %552, i32 0, i32 3
  %554 = load %struct.TYPE_50__*, %struct.TYPE_50__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %554, i32 0, i32 0
  %556 = load %struct.TYPE_49__*, %struct.TYPE_49__** %555, align 8
  %557 = load i32, i32* %8, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %556, i64 %558
  %560 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %559, i32 0, i32 1
  %561 = load i32, i32* %560, align 4
  %562 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 %561, i32* %562, align 4
  br label %563

563:                                              ; preds = %537, %532
  %564 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %565 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %564, i32 0, i32 1
  %566 = load %struct.TYPE_52__*, %struct.TYPE_52__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %566, i32 0, i32 1
  %568 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %567, align 8
  %569 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %570 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %569, i32 0, i32 1
  %571 = load %struct.TYPE_52__*, %struct.TYPE_52__** %570, align 8
  %572 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %573 = load i32, i32* %5, align 4
  %574 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %575 = call i32 %568(%struct.TYPE_52__* %571, i32 %572, i32 %573, i32* %574, i32 6)
  store i32 %575, i32* %6, align 4
  %576 = load i32, i32* %6, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %580

578:                                              ; preds = %563
  %579 = load i32, i32* %6, align 4
  store i32 %579, i32* %2, align 4
  br label %970

580:                                              ; preds = %563
  br label %581

581:                                              ; preds = %580
  %582 = load i32, i32* %5, align 4
  %583 = add nsw i32 %582, 6
  store i32 %583, i32* %5, align 4
  br label %529

584:                                              ; preds = %529
  %585 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %586 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %585, i32 0, i32 1
  %587 = load %struct.TYPE_52__*, %struct.TYPE_52__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %587, i32 0, i32 0
  %589 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %588, align 8
  %590 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %591 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %590, i32 0, i32 1
  %592 = load %struct.TYPE_52__*, %struct.TYPE_52__** %591, align 8
  %593 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %594 = call i32 %589(%struct.TYPE_52__* %592, i32 %593, i32 0, i32 17)
  store i32 %594, i32* %6, align 4
  %595 = load i32, i32* %6, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %599

597:                                              ; preds = %584
  %598 = load i32, i32* %6, align 4
  store i32 %598, i32* %2, align 4
  br label %970

599:                                              ; preds = %584
  %600 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 8, i32* %600, align 16
  %601 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 9, i32* %601, align 4
  %602 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %603 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %602, i32 0, i32 1
  %604 = load %struct.TYPE_52__*, %struct.TYPE_52__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %604, i32 0, i32 1
  %606 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %605, align 8
  %607 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %608 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %607, i32 0, i32 1
  %609 = load %struct.TYPE_52__*, %struct.TYPE_52__** %608, align 8
  %610 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %611 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %612 = call i32 %606(%struct.TYPE_52__* %609, i32 %610, i32 189, i32* %611, i32 2)
  store i32 %612, i32* %6, align 4
  %613 = load i32, i32* %6, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %599
  %616 = load i32, i32* %6, align 4
  store i32 %616, i32* %2, align 4
  br label %970

617:                                              ; preds = %599
  %618 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 8, i32* %618, align 16
  %619 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 9, i32* %619, align 4
  %620 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %621 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %620, i32 0, i32 1
  %622 = load %struct.TYPE_52__*, %struct.TYPE_52__** %621, align 8
  %623 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %622, i32 0, i32 1
  %624 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %623, align 8
  %625 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %626 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %625, i32 0, i32 1
  %627 = load %struct.TYPE_52__*, %struct.TYPE_52__** %626, align 8
  %628 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %629 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %630 = call i32 %624(%struct.TYPE_52__* %627, i32 %628, i32 196, i32* %629, i32 2)
  store i32 %630, i32* %6, align 4
  %631 = load i32, i32* %6, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %617
  %634 = load i32, i32* %6, align 4
  store i32 %634, i32* %2, align 4
  br label %970

635:                                              ; preds = %617
  %636 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %637 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %636, i32 0, i32 1
  %638 = load %struct.TYPE_52__*, %struct.TYPE_52__** %637, align 8
  %639 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %638, i32 0, i32 1
  %640 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %639, align 8
  %641 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %642 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %641, i32 0, i32 1
  %643 = load %struct.TYPE_52__*, %struct.TYPE_52__** %642, align 8
  %644 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %645 = call i32 %640(%struct.TYPE_52__* %643, i32 %644, i32 201, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @rf_init1.rf_init1_cdata4, i64 0, i64 0), i32 8)
  store i32 %645, i32* %6, align 4
  %646 = load i32, i32* %6, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %650

648:                                              ; preds = %635
  %649 = load i32, i32* %6, align 4
  store i32 %649, i32* %2, align 4
  br label %970

650:                                              ; preds = %635
  %651 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %652 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %651, i32 0, i32 1
  %653 = load %struct.TYPE_52__*, %struct.TYPE_52__** %652, align 8
  %654 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %653, i32 0, i32 0
  %655 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %654, align 8
  %656 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %657 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %656, i32 0, i32 1
  %658 = load %struct.TYPE_52__*, %struct.TYPE_52__** %657, align 8
  %659 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %660 = call i32 %655(%struct.TYPE_52__* %658, i32 %659, i32 0, i32 20)
  store i32 %660, i32* %6, align 4
  %661 = load i32, i32* %6, align 4
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %650
  %664 = load i32, i32* %6, align 4
  store i32 %664, i32* %2, align 4
  br label %970

665:                                              ; preds = %650
  %666 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 21, i32* %666, align 16
  %667 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 24, i32* %667, align 4
  %668 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 0, i32* %668, align 8
  %669 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %670 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %669, i32 0, i32 1
  %671 = load %struct.TYPE_52__*, %struct.TYPE_52__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %671, i32 0, i32 1
  %673 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %672, align 8
  %674 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %675 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %674, i32 0, i32 1
  %676 = load %struct.TYPE_52__*, %struct.TYPE_52__** %675, align 8
  %677 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %678 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %679 = call i32 %673(%struct.TYPE_52__* %676, i32 %677, i32 16, i32* %678, i32 3)
  store i32 %679, i32* %6, align 4
  %680 = load i32, i32* %6, align 4
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %684

682:                                              ; preds = %665
  %683 = load i32, i32* %6, align 4
  store i32 %683, i32* %2, align 4
  br label %970

684:                                              ; preds = %665
  %685 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %686 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %685, i32 0, i32 1
  %687 = load %struct.TYPE_52__*, %struct.TYPE_52__** %686, align 8
  %688 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %689 = load i32, i32* @rf_init1_seq4, align 4
  %690 = load i32, i32* @rf_init1_seq4, align 4
  %691 = call i32 @ARRAY_SIZE(i32 %690)
  %692 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %687, i32 %688, i32 %689, i32 %691)
  store i32 %692, i32* %6, align 4
  %693 = load i32, i32* %6, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %697

695:                                              ; preds = %684
  %696 = load i32, i32* %6, align 4
  store i32 %696, i32* %2, align 4
  br label %970

697:                                              ; preds = %684
  %698 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %699 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %698, i32 0, i32 1
  %700 = load %struct.TYPE_52__*, %struct.TYPE_52__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %700, i32 0, i32 1
  %702 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %701, align 8
  %703 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %704 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %703, i32 0, i32 1
  %705 = load %struct.TYPE_52__*, %struct.TYPE_52__** %704, align 8
  %706 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %707 = call i32 %702(%struct.TYPE_52__* %705, i32 %706, i32 18, i32* getelementptr inbounds ([50 x i32], [50 x i32]* @rf_init1.rf_init1_cdata5, i64 0, i64 0), i32 50)
  store i32 %707, i32* %6, align 4
  %708 = load i32, i32* %6, align 4
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %712

710:                                              ; preds = %697
  %711 = load i32, i32* %6, align 4
  store i32 %711, i32* %2, align 4
  br label %970

712:                                              ; preds = %697
  %713 = call i32 @usleep_range(i32 1000, i32 2000)
  %714 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %715 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %714, i32 0, i32 1
  %716 = load %struct.TYPE_52__*, %struct.TYPE_52__** %715, align 8
  %717 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %716, i32 0, i32 0
  %718 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %717, align 8
  %719 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %720 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %719, i32 0, i32 1
  %721 = load %struct.TYPE_52__*, %struct.TYPE_52__** %720, align 8
  %722 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %723 = call i32 %718(%struct.TYPE_52__* %721, i32 %722, i32 0, i32 10)
  store i32 %723, i32* %6, align 4
  %724 = load i32, i32* %6, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %728

726:                                              ; preds = %712
  %727 = load i32, i32* %6, align 4
  store i32 %727, i32* %2, align 4
  br label %970

728:                                              ; preds = %712
  %729 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %730 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %729, i32 0, i32 1
  %731 = load %struct.TYPE_52__*, %struct.TYPE_52__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %731, i32 0, i32 2
  %733 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %732, align 8
  %734 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %735 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %734, i32 0, i32 1
  %736 = load %struct.TYPE_52__*, %struct.TYPE_52__** %735, align 8
  %737 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %738 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %739 = call i32 %733(%struct.TYPE_52__* %736, i32 %737, i32 16, i32* %738, i32 1)
  store i32 %739, i32* %6, align 4
  %740 = load i32, i32* %6, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %744

742:                                              ; preds = %728
  %743 = load i32, i32* %6, align 4
  store i32 %743, i32* %2, align 4
  br label %970

744:                                              ; preds = %728
  %745 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %746 = load i32, i32* %745, align 16
  %747 = and i32 %746, 1
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %752

749:                                              ; preds = %744
  %750 = load i32, i32* @EINVAL, align 4
  %751 = sub nsw i32 0, %750
  store i32 %751, i32* %2, align 4
  br label %970

752:                                              ; preds = %744
  %753 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %754 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %753, i32 0, i32 1
  %755 = load %struct.TYPE_52__*, %struct.TYPE_52__** %754, align 8
  %756 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %757 = load i32, i32* @rf_init1_seq5, align 4
  %758 = load i32, i32* @rf_init1_seq5, align 4
  %759 = call i32 @ARRAY_SIZE(i32 %758)
  %760 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %755, i32 %756, i32 %757, i32 %759)
  store i32 %760, i32* %6, align 4
  %761 = load i32, i32* %6, align 4
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %765

763:                                              ; preds = %752
  %764 = load i32, i32* %6, align 4
  store i32 %764, i32* %2, align 4
  br label %970

765:                                              ; preds = %752
  %766 = call i32 @usleep_range(i32 1000, i32 2000)
  %767 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %768 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %767, i32 0, i32 1
  %769 = load %struct.TYPE_52__*, %struct.TYPE_52__** %768, align 8
  %770 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %769, i32 0, i32 0
  %771 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %770, align 8
  %772 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %773 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %772, i32 0, i32 1
  %774 = load %struct.TYPE_52__*, %struct.TYPE_52__** %773, align 8
  %775 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %776 = call i32 %771(%struct.TYPE_52__* %774, i32 %775, i32 0, i32 10)
  store i32 %776, i32* %6, align 4
  %777 = load i32, i32* %6, align 4
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %781

779:                                              ; preds = %765
  %780 = load i32, i32* %6, align 4
  store i32 %780, i32* %2, align 4
  br label %970

781:                                              ; preds = %765
  %782 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %783 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %782, i32 0, i32 1
  %784 = load %struct.TYPE_52__*, %struct.TYPE_52__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %784, i32 0, i32 2
  %786 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %785, align 8
  %787 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %788 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %787, i32 0, i32 1
  %789 = load %struct.TYPE_52__*, %struct.TYPE_52__** %788, align 8
  %790 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %791 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %792 = call i32 %786(%struct.TYPE_52__* %789, i32 %790, i32 17, i32* %791, i32 1)
  store i32 %792, i32* %6, align 4
  %793 = load i32, i32* %6, align 4
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %797

795:                                              ; preds = %781
  %796 = load i32, i32* %6, align 4
  store i32 %796, i32* %2, align 4
  br label %970

797:                                              ; preds = %781
  %798 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %799 = load i32, i32* %798, align 16
  %800 = and i32 %799, 1
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %805

802:                                              ; preds = %797
  %803 = load i32, i32* @EINVAL, align 4
  %804 = sub nsw i32 0, %803
  store i32 %804, i32* %2, align 4
  br label %970

805:                                              ; preds = %797
  %806 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %807 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %806, i32 0, i32 1
  %808 = load %struct.TYPE_52__*, %struct.TYPE_52__** %807, align 8
  %809 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %810 = load i32, i32* @rf_init1_seq6, align 4
  %811 = load i32, i32* @rf_init1_seq6, align 4
  %812 = call i32 @ARRAY_SIZE(i32 %811)
  %813 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %808, i32 %809, i32 %810, i32 %812)
  store i32 %813, i32* %6, align 4
  %814 = load i32, i32* %6, align 4
  %815 = icmp ne i32 %814, 0
  br i1 %815, label %816, label %818

816:                                              ; preds = %805
  %817 = load i32, i32* %6, align 4
  store i32 %817, i32* %2, align 4
  br label %970

818:                                              ; preds = %805
  %819 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %819, align 16
  %820 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 254, i32* %820, align 4
  %821 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 2
  store i32 238, i32* %821, align 8
  %822 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %823 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %822, i32 0, i32 1
  %824 = load %struct.TYPE_52__*, %struct.TYPE_52__** %823, align 8
  %825 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %824, i32 0, i32 1
  %826 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %825, align 8
  %827 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %828 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %827, i32 0, i32 1
  %829 = load %struct.TYPE_52__*, %struct.TYPE_52__** %828, align 8
  %830 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %831 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %832 = call i32 %826(%struct.TYPE_52__* %829, i32 %830, i32 110, i32* %831, i32 3)
  store i32 %832, i32* %6, align 4
  %833 = load i32, i32* %6, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %837

835:                                              ; preds = %818
  %836 = load i32, i32* %6, align 4
  store i32 %836, i32* %2, align 4
  br label %970

837:                                              ; preds = %818
  %838 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 161, i32* %838, align 16
  %839 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 139, i32* %839, align 4
  %840 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %841 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %840, i32 0, i32 1
  %842 = load %struct.TYPE_52__*, %struct.TYPE_52__** %841, align 8
  %843 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %842, i32 0, i32 1
  %844 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %843, align 8
  %845 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %846 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %845, i32 0, i32 1
  %847 = load %struct.TYPE_52__*, %struct.TYPE_52__** %846, align 8
  %848 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %849 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %850 = call i32 %844(%struct.TYPE_52__* %847, i32 %848, i32 141, i32* %849, i32 2)
  store i32 %850, i32* %6, align 4
  %851 = load i32, i32* %6, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %855

853:                                              ; preds = %837
  %854 = load i32, i32* %6, align 4
  store i32 %854, i32* %2, align 4
  br label %970

855:                                              ; preds = %837
  %856 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  store i32 8, i32* %856, align 16
  %857 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 1
  store i32 9, i32* %857, align 4
  %858 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %859 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %858, i32 0, i32 1
  %860 = load %struct.TYPE_52__*, %struct.TYPE_52__** %859, align 8
  %861 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %860, i32 0, i32 1
  %862 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %861, align 8
  %863 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %864 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %863, i32 0, i32 1
  %865 = load %struct.TYPE_52__*, %struct.TYPE_52__** %864, align 8
  %866 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %867 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %868 = call i32 %862(%struct.TYPE_52__* %865, i32 %866, i32 119, i32* %867, i32 2)
  store i32 %868, i32* %6, align 4
  %869 = load i32, i32* %6, align 4
  %870 = icmp ne i32 %869, 0
  br i1 %870, label %871, label %873

871:                                              ; preds = %855
  %872 = load i32, i32* %6, align 4
  store i32 %872, i32* %2, align 4
  br label %970

873:                                              ; preds = %855
  %874 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %875 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %874, i32 0, i32 2
  %876 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %875, i32 0, i32 1
  %877 = load i64, i64* %876, align 8
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %895

879:                                              ; preds = %873
  %880 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %881 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %880, i32 0, i32 1
  %882 = load %struct.TYPE_52__*, %struct.TYPE_52__** %881, align 8
  %883 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %882, i32 0, i32 0
  %884 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %883, align 8
  %885 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %886 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %885, i32 0, i32 1
  %887 = load %struct.TYPE_52__*, %struct.TYPE_52__** %886, align 8
  %888 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %889 = call i32 %884(%struct.TYPE_52__* %887, i32 %888, i32 128, i32 170)
  store i32 %889, i32* %6, align 4
  %890 = load i32, i32* %6, align 4
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %894

892:                                              ; preds = %879
  %893 = load i32, i32* %6, align 4
  store i32 %893, i32* %2, align 4
  br label %970

894:                                              ; preds = %879
  br label %895

895:                                              ; preds = %894, %873
  %896 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %897 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %896, i32 0, i32 1
  %898 = load %struct.TYPE_52__*, %struct.TYPE_52__** %897, align 8
  %899 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %900 = load i32, i32* @rf_init1_seq7, align 4
  %901 = load i32, i32* @rf_init1_seq7, align 4
  %902 = call i32 @ARRAY_SIZE(i32 %901)
  %903 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %898, i32 %899, i32 %900, i32 %902)
  store i32 %903, i32* %6, align 4
  %904 = load i32, i32* %6, align 4
  %905 = icmp ne i32 %904, 0
  br i1 %905, label %906, label %908

906:                                              ; preds = %895
  %907 = load i32, i32* %6, align 4
  store i32 %907, i32* %2, align 4
  br label %970

908:                                              ; preds = %895
  %909 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %910 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %909, i32 0, i32 1
  %911 = load %struct.TYPE_52__*, %struct.TYPE_52__** %910, align 8
  %912 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %913 = load i32, i32* @rf_init1_seq8, align 4
  %914 = load i32, i32* @rf_init1_seq8, align 4
  %915 = call i32 @ARRAY_SIZE(i32 %914)
  %916 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %911, i32 %912, i32 %913, i32 %915)
  store i32 %916, i32* %6, align 4
  %917 = load i32, i32* %6, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %919, label %921

919:                                              ; preds = %908
  %920 = load i32, i32* %6, align 4
  store i32 %920, i32* %2, align 4
  br label %970

921:                                              ; preds = %908
  %922 = call i32 @usleep_range(i32 1000, i32 2000)
  %923 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %924 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %923, i32 0, i32 1
  %925 = load %struct.TYPE_52__*, %struct.TYPE_52__** %924, align 8
  %926 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %925, i32 0, i32 0
  %927 = load i32 (%struct.TYPE_52__*, i32, i32, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32)** %926, align 8
  %928 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %929 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %928, i32 0, i32 1
  %930 = load %struct.TYPE_52__*, %struct.TYPE_52__** %929, align 8
  %931 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %932 = call i32 %927(%struct.TYPE_52__* %930, i32 %931, i32 0, i32 26)
  store i32 %932, i32* %6, align 4
  %933 = load i32, i32* %6, align 4
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %935, label %937

935:                                              ; preds = %921
  %936 = load i32, i32* %6, align 4
  store i32 %936, i32* %2, align 4
  br label %970

937:                                              ; preds = %921
  %938 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %939 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %938, i32 0, i32 1
  %940 = load %struct.TYPE_52__*, %struct.TYPE_52__** %939, align 8
  %941 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %940, i32 0, i32 2
  %942 = load i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_52__*, i32, i32, i32*, i32)** %941, align 8
  %943 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %944 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %943, i32 0, i32 1
  %945 = load %struct.TYPE_52__*, %struct.TYPE_52__** %944, align 8
  %946 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %947 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %948 = call i32 %942(%struct.TYPE_52__* %945, i32 %946, i32 16, i32* %947, i32 1)
  store i32 %948, i32* %6, align 4
  %949 = load i32, i32* %6, align 4
  %950 = icmp ne i32 %949, 0
  br i1 %950, label %951, label %953

951:                                              ; preds = %937
  %952 = load i32, i32* %6, align 4
  store i32 %952, i32* %2, align 4
  br label %970

953:                                              ; preds = %937
  %954 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %955 = load i32, i32* %954, align 16
  %956 = and i32 %955, 1
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %958, label %961

958:                                              ; preds = %953
  %959 = load i32, i32* @EINVAL, align 4
  %960 = sub nsw i32 0, %959
  store i32 %960, i32* %2, align 4
  br label %970

961:                                              ; preds = %953
  %962 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %963 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %962, i32 0, i32 1
  %964 = load %struct.TYPE_52__*, %struct.TYPE_52__** %963, align 8
  %965 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %966 = load i32, i32* @rf_init1_seq9, align 4
  %967 = load i32, i32* @rf_init1_seq9, align 4
  %968 = call i32 @ARRAY_SIZE(i32 %967)
  %969 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__* %964, i32 %965, i32 %966, i32 %968)
  store i32 %969, i32* %2, align 4
  br label %970

970:                                              ; preds = %961, %958, %951, %935, %919, %906, %892, %871, %853, %835, %816, %802, %795, %779, %763, %749, %742, %726, %710, %695, %682, %663, %648, %633, %615, %597, %578, %526, %492, %440, %408, %395, %377, %362, %347, %332, %314, %299, %284, %269, %249, %231, %212, %197, %163, %150, %115, %101, %80, %62, %47, %28, %12
  %971 = load i32, i32* %2, align 4
  ret i32 %971
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_52__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
