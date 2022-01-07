; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_t_power_x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_t_power_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@t_power_x_seq1 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@t_power_x_seq2 = common dso_local global i32 0, align 4
@t_power_x_seq3 = common dso_local global i32 0, align 4
@t_power_x_seq4 = common dso_local global i32 0, align 4
@t_power_x_seq5 = common dso_local global i32 0, align 4
@t_power_x_seq6 = common dso_local global i32 0, align 4
@t_power_x_seq7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32)* @t_power_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_power_x(%struct.cxd2880_tnrdmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %10 = icmp ne %struct.cxd2880_tnrdmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %293

14:                                               ; preds = %2
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %19 = load i32, i32* @t_power_x_seq1, align 4
  %20 = load i32, i32* @t_power_x_seq1, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %17, i32 %18, i32 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %293

27:                                               ; preds = %14
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %32 = load i32, i32* @t_power_x_seq2, align 4
  %33 = load i32, i32* @t_power_x_seq2, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %30, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %293

40:                                               ; preds = %27
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %42 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %45 = load i32, i32* @t_power_x_seq3, align 4
  %46 = load i32, i32* @t_power_x_seq3, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %43, i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %293

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %53
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %60, align 8
  %62 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %66 = call i32 %61(%struct.TYPE_12__* %64, i32 %65, i32 43, i32 1)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %293

71:                                               ; preds = %56
  %72 = call i32 @usleep_range(i32 1000, i32 2000)
  %73 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %73, i32 0, i32 0
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %76, align 8
  %78 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %82 = call i32 %77(%struct.TYPE_12__* %80, i32 %81, i32 0, i32 10)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %3, align 4
  br label %293

87:                                               ; preds = %71
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %89 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)** %91, align 8
  %93 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %94 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %93, i32 0, i32 0
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %94, align 8
  %96 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %98 = call i32 %92(%struct.TYPE_12__* %95, i32 %96, i32 18, i32* %97, i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %87
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %3, align 4
  br label %293

103:                                              ; preds = %87
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %293

111:                                              ; preds = %103
  %112 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %113 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %116 = load i32, i32* @t_power_x_seq4, align 4
  %117 = load i32, i32* @t_power_x_seq4, align 4
  %118 = call i32 @ARRAY_SIZE(i32 %117)
  %119 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %114, i32 %115, i32 %116, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %293

124:                                              ; preds = %111
  br label %184

125:                                              ; preds = %53
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 3, i32* %126, align 4
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %127, align 4
  %128 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %129 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %128, i32 0, i32 0
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)** %131, align 8
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %134 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %133, i32 0, i32 0
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %138 = call i32 %132(%struct.TYPE_12__* %135, i32 %136, i32 42, i32* %137, i32 2)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %125
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %293

143:                                              ; preds = %125
  %144 = call i32 @usleep_range(i32 1000, i32 2000)
  %145 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %146 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %148, align 8
  %150 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %151 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %154 = call i32 %149(%struct.TYPE_12__* %152, i32 %153, i32 0, i32 10)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %143
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %3, align 4
  br label %293

159:                                              ; preds = %143
  %160 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %161 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)** %163, align 8
  %165 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %166 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %165, i32 0, i32 0
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %170 = call i32 %164(%struct.TYPE_12__* %167, i32 %168, i32 19, i32* %169, i32 1)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %159
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %3, align 4
  br label %293

175:                                              ; preds = %159
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %3, align 4
  br label %293

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %124
  %185 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %186 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %185, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %189 = load i32, i32* @t_power_x_seq5, align 4
  %190 = load i32, i32* @t_power_x_seq5, align 4
  %191 = call i32 @ARRAY_SIZE(i32 %190)
  %192 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %187, i32 %188, i32 %189, i32 %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %293

197:                                              ; preds = %184
  %198 = call i32 @usleep_range(i32 1000, i32 2000)
  %199 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %200 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %199, i32 0, i32 0
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %202, align 8
  %204 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %205 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %208 = call i32 %203(%struct.TYPE_12__* %206, i32 %207, i32 0, i32 10)
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %197
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %3, align 4
  br label %293

213:                                              ; preds = %197
  %214 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %215 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %214, i32 0, i32 0
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)** %217, align 8
  %219 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %220 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %219, i32 0, i32 0
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %220, align 8
  %222 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %224 = call i32 %218(%struct.TYPE_12__* %221, i32 %222, i32 17, i32* %223, i32 1)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %213
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %3, align 4
  br label %293

229:                                              ; preds = %213
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 1
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %293

237:                                              ; preds = %229
  %238 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %239 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %238, i32 0, i32 0
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %242 = load i32, i32* @t_power_x_seq6, align 4
  %243 = load i32, i32* @t_power_x_seq6, align 4
  %244 = call i32 @ARRAY_SIZE(i32 %243)
  %245 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %240, i32 %241, i32 %242, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %237
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %3, align 4
  br label %293

250:                                              ; preds = %237
  %251 = call i32 @usleep_range(i32 1000, i32 2000)
  %252 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %253 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %252, i32 0, i32 0
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %256 = load i32, i32* @t_power_x_seq7, align 4
  %257 = load i32, i32* @t_power_x_seq7, align 4
  %258 = call i32 @ARRAY_SIZE(i32 %257)
  %259 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__* %254, i32 %255, i32 %256, i32 %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %250
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %3, align 4
  br label %293

264:                                              ; preds = %250
  %265 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %266 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %265, i32 0, i32 0
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i32 (%struct.TYPE_12__*, i32, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32)** %268, align 8
  %270 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %271 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %274 = call i32 %269(%struct.TYPE_12__* %272, i32 %273, i32 0, i32 16)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %264
  %278 = load i32, i32* %7, align 4
  store i32 %278, i32* %3, align 4
  br label %293

279:                                              ; preds = %264
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %281 = call i32 @memset(i32* %280, i32 0, i32 12)
  %282 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %283 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %282, i32 0, i32 0
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 2
  %286 = load i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_12__*, i32, i32, i32*, i32)** %285, align 8
  %287 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %288 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %287, i32 0, i32 0
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %288, align 8
  %290 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %291 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %292 = call i32 %286(%struct.TYPE_12__* %289, i32 %290, i32 39, i32* %291, i32 3)
  store i32 %292, i32* %3, align 4
  br label %293

293:                                              ; preds = %279, %277, %262, %248, %234, %227, %211, %195, %180, %173, %157, %141, %122, %108, %101, %85, %69, %51, %38, %25, %11
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
