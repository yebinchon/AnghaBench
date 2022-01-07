; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@x_tune4_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*)* @x_tune4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_tune4(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %212

12:                                               ; preds = %1
  %13 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %14 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %212

21:                                               ; preds = %12
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %27, align 8
  %29 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %30 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %35 = call i32 %28(%struct.TYPE_13__* %33, i32 %34, i32 0, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %212

40:                                               ; preds = %21
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 20, i32* %41, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)** %48, align 8
  %50 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %57 = call i32 %49(%struct.TYPE_13__* %54, i32 %55, i32 85, i32* %56, i32 2)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %212

62:                                               ; preds = %40
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %64 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %66, align 8
  %68 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %72 = call i32 %67(%struct.TYPE_13__* %70, i32 %71, i32 0, i32 0)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %212

77:                                               ; preds = %62
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 11, i32* %78, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 255, i32* %79, align 4
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)** %83, align 8
  %85 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %90 = call i32 %84(%struct.TYPE_13__* %87, i32 %88, i32 83, i32* %89, i32 2)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %5, align 4
  store i32 %94, i32* %2, align 4
  br label %212

95:                                               ; preds = %77
  %96 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %97 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %96, i32 0, i32 2
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %99, align 8
  %101 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %102 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %101, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %105 = call i32 %100(%struct.TYPE_13__* %103, i32 %104, i32 87, i32 1)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %95
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %212

110:                                              ; preds = %95
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 11, i32* %111, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 255, i32* %112, align 4
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)** %116, align 8
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %119 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %118, i32 0, i32 2
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %123 = call i32 %117(%struct.TYPE_13__* %120, i32 %121, i32 85, i32* %122, i32 2)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %212

128:                                              ; preds = %110
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %134, align 8
  %136 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %137 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %136, i32 0, i32 1
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %142 = call i32 %135(%struct.TYPE_13__* %140, i32 %141, i32 0, i32 0)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %128
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %212

147:                                              ; preds = %128
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 20, i32* %148, align 4
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %151 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32*, i32)** %155, align 8
  %157 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %158 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  %162 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %164 = call i32 %156(%struct.TYPE_13__* %161, i32 %162, i32 83, i32* %163, i32 2)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %147
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %212

169:                                              ; preds = %147
  %170 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %171 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %175, align 8
  %177 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %178 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %177, i32 0, i32 1
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %183 = call i32 %176(%struct.TYPE_13__* %181, i32 %182, i32 87, i32 2)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %169
  %187 = load i32, i32* %5, align 4
  store i32 %187, i32* %2, align 4
  br label %212

188:                                              ; preds = %169
  %189 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %190 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %189, i32 0, i32 2
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %193 = load i32, i32* @x_tune4_seq, align 4
  %194 = load i32, i32* @x_tune4_seq, align 4
  %195 = call i32 @ARRAY_SIZE(i32 %194)
  %196 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_13__* %191, i32 %192, i32 %193, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %188
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %212

201:                                              ; preds = %188
  %202 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %203 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %202, i32 0, i32 1
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %205, align 8
  %207 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %208 = load i32, i32* @x_tune4_seq, align 4
  %209 = load i32, i32* @x_tune4_seq, align 4
  %210 = call i32 @ARRAY_SIZE(i32 %209)
  %211 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_13__* %206, i32 %207, i32 %208, i32 %210)
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %201, %199, %186, %167, %145, %126, %108, %93, %75, %60, %38, %18, %9
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_13__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
