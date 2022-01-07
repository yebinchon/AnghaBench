; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@x_tune1_seq1 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@x_tune1_seq2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32)* @x_tune1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_tune1(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_tnrdmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [11 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = bitcast [11 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 44, i1 false)
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %18 = icmp ne %struct.cxd2880_tnrdmd* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %219

22:                                               ; preds = %6
  %23 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %24 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %27 = load i32, i32* @x_tune1_seq1, align 4
  %28 = load i32, i32* @x_tune1_seq1, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_9__* %25, i32 %26, i32 %27, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %219

35:                                               ; preds = %22
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %39, align 8
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %42 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %45 = call i32 %40(%struct.TYPE_9__* %43, i32 %44, i32 0, i32 16)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %7, align 4
  br label %219

50:                                               ; preds = %35
  %51 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 14, i32* %51, align 8
  %52 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 3, i32* %52, align 16
  %53 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)** %56, align 8
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %63 = call i32 %57(%struct.TYPE_9__* %60, i32 %61, i32 231, i32* %62, i32 5)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %7, align 4
  br label %219

68:                                               ; preds = %50
  %69 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 31, i32* %69, align 16
  %70 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 128, i32* %70, align 4
  %71 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 24, i32* %71, align 8
  %72 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 3
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 7, i32* %73, align 16
  %74 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %75 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)** %77, align 8
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %83 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %84 = call i32 %78(%struct.TYPE_9__* %81, i32 %82, i32 231, i32* %83, i32 5)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %68
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %7, align 4
  br label %219

89:                                               ; preds = %68
  %90 = call i32 @usleep_range(i32 1000, i32 2000)
  %91 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 114, i32* %91, align 16
  %92 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 129, i32* %92, align 4
  %93 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 3
  store i32 29, i32* %93, align 4
  %94 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 111, i32* %94, align 16
  %95 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 5
  store i32 126, i32* %95, align 4
  %96 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 7
  store i32 28, i32* %96, align 4
  %97 = load i32, i32* %9, align 4
  switch i32 %97, label %104 [
    i32 129, label %98
    i32 128, label %101
  ]

98:                                               ; preds = %89
  %99 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 148, i32* %99, align 8
  %100 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 6
  store i32 145, i32* %100, align 8
  br label %107

101:                                              ; preds = %89
  %102 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 150, i32* %102, align 8
  %103 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 6
  store i32 147, i32* %103, align 8
  br label %107

104:                                              ; preds = %89
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %7, align 4
  br label %219

107:                                              ; preds = %101, %98
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %109 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)** %111, align 8
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %117 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %118 = call i32 %112(%struct.TYPE_9__* %115, i32 %116, i32 68, i32* %117, i32 8)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %107
  %122 = load i32, i32* %15, align 4
  store i32 %122, i32* %7, align 4
  br label %219

123:                                              ; preds = %107
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 0
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %128 = load i32, i32* @x_tune1_seq2, align 4
  %129 = load i32, i32* @x_tune1_seq2, align 4
  %130 = call i32 @ARRAY_SIZE(i32 %129)
  %131 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_9__* %126, i32 %127, i32 %128, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %7, align 4
  br label %219

136:                                              ; preds = %123
  %137 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 3, i32* %137, align 16
  %138 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 226, i32* %138, align 4
  %139 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %140 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)** %142, align 8
  %144 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %145 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %144, i32 0, i32 0
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %148 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %149 = call i32 %143(%struct.TYPE_9__* %146, i32 %147, i32 30, i32* %148, i32 2)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %136
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %7, align 4
  br label %219

154:                                              ; preds = %136
  %155 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %156 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %158, align 8
  %160 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %161 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %160, i32 0, i32 0
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %164 = call i32 %159(%struct.TYPE_9__* %162, i32 %163, i32 0, i32 16)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %154
  %168 = load i32, i32* %15, align 4
  store i32 %168, i32* %7, align 4
  br label %219

169:                                              ; preds = %154
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 0
  %174 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 %173, i32* %174, align 16
  %175 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 0, i32* %175, align 4
  %176 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 107, i32* %176, align 8
  %177 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 3
  store i32 77, i32* %177, align 4
  %178 = load i32, i32* %11, align 4
  switch i32 %178, label %187 [
    i32 134, label %179
    i32 133, label %181
    i32 132, label %181
    i32 131, label %183
    i32 130, label %185
  ]

179:                                              ; preds = %169
  %180 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 3, i32* %180, align 16
  br label %190

181:                                              ; preds = %169, %169
  %182 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 0, i32* %182, align 16
  br label %190

183:                                              ; preds = %169
  %184 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 1, i32* %184, align 16
  br label %190

185:                                              ; preds = %169
  %186 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 2, i32* %186, align 16
  br label %190

187:                                              ; preds = %169
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %7, align 4
  br label %219

190:                                              ; preds = %185, %183, %181, %179
  %191 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 5
  store i32 0, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load i32, i32* %10, align 4
  %196 = ashr i32 %195, 16
  %197 = and i32 %196, 15
  %198 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 6
  store i32 %197, i32* %198, align 8
  %199 = load i32, i32* %10, align 4
  %200 = ashr i32 %199, 8
  %201 = and i32 %200, 255
  %202 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 7
  store i32 %201, i32* %202, align 4
  %203 = load i32, i32* %10, align 4
  %204 = and i32 %203, 255
  %205 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 8
  store i32 %204, i32* %205, align 16
  %206 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 9
  store i32 255, i32* %206, align 4
  %207 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 10
  store i32 254, i32* %207, align 8
  %208 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %209 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %208, i32 0, i32 0
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32*, i32)** %211, align 8
  %213 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %214 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %213, i32 0, i32 0
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %217 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %218 = call i32 %212(%struct.TYPE_9__* %215, i32 %216, i32 82, i32* %217, i32 11)
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %190, %187, %167, %152, %134, %121, %104, %87, %66, %48, %33, %19
  %220 = load i32, i32* %7, align 4
  ret i32 %220
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
