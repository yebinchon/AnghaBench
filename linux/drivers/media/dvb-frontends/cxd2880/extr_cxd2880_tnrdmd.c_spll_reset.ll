; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_spll_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_spll_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@spll_reset_seq1 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@spll_reset_seq2 = common dso_local global i32 0, align 4
@spll_reset_seq3 = common dso_local global i32 0, align 4
@spll_reset_seq4 = common dso_local global i32 0, align 4
@spll_reset_seq5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32)* @spll_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spll_reset(%struct.cxd2880_tnrdmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxd2880_tnrdmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 16, i1 false)
  %9 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %10 = icmp ne %struct.cxd2880_tnrdmd* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %192

14:                                               ; preds = %2
  %15 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %19 = load i32, i32* @spll_reset_seq1, align 4
  %20 = load i32, i32* @spll_reset_seq1, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__* %17, i32 %18, i32 %19, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %192

27:                                               ; preds = %14
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %32 = load i32, i32* @spll_reset_seq2, align 4
  %33 = load i32, i32* @spll_reset_seq2, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__* %30, i32 %31, i32 %32, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %192

40:                                               ; preds = %27
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %42 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %45 = load i32, i32* @spll_reset_seq3, align 4
  %46 = load i32, i32* @spll_reset_seq3, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__* %43, i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %192

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  switch i32 %54, label %61 [
    i32 130, label %55
    i32 129, label %57
    i32 128, label %59
  ]

55:                                               ; preds = %53
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %56, align 16
  br label %64

57:                                               ; preds = %53
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 1, i32* %58, align 16
  br label %64

59:                                               ; preds = %53
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 2, i32* %60, align 16
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %192

64:                                               ; preds = %59, %57, %55
  %65 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %66 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %68, align 8
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %71 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %75 = load i32, i32* %74, align 16
  %76 = call i32 %69(%struct.TYPE_8__* %72, i32 %73, i32 48, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %3, align 4
  br label %192

81:                                               ; preds = %64
  %82 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %83 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %85, align 8
  %87 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %88 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %91 = call i32 %86(%struct.TYPE_8__* %89, i32 %90, i32 34, i32 0)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %3, align 4
  br label %192

96:                                               ; preds = %81
  %97 = call i32 @usleep_range(i32 2000, i32 3000)
  %98 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %99 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %101, align 8
  %103 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %104 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %107 = call i32 %102(%struct.TYPE_8__* %105, i32 %106, i32 0, i32 10)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %3, align 4
  br label %192

112:                                              ; preds = %96
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 0
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)** %116, align 8
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %119 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %123 = call i32 %117(%struct.TYPE_8__* %120, i32 %121, i32 16, i32* %122, i32 1)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %3, align 4
  br label %192

128:                                              ; preds = %112
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %130 = load i32, i32* %129, align 16
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %192

136:                                              ; preds = %128
  %137 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %137, i32 0, i32 0
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %141 = load i32, i32* @spll_reset_seq4, align 4
  %142 = load i32, i32* @spll_reset_seq4, align 4
  %143 = call i32 @ARRAY_SIZE(i32 %142)
  %144 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__* %139, i32 %140, i32 %141, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %3, align 4
  br label %192

149:                                              ; preds = %136
  %150 = call i32 @usleep_range(i32 1000, i32 2000)
  %151 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %152 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %151, i32 0, i32 0
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %155 = load i32, i32* @spll_reset_seq5, align 4
  %156 = load i32, i32* @spll_reset_seq5, align 4
  %157 = call i32 @ARRAY_SIZE(i32 %156)
  %158 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__* %153, i32 %154, i32 %155, i32 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %3, align 4
  br label %192

163:                                              ; preds = %149
  %164 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %165 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %164, i32 0, i32 0
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32 (%struct.TYPE_8__*, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32)** %167, align 8
  %169 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %170 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %173 = call i32 %168(%struct.TYPE_8__* %171, i32 %172, i32 0, i32 16)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %163
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %3, align 4
  br label %192

178:                                              ; preds = %163
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %180 = call i32 @memset(i32* %179, i32 0, i32 16)
  %181 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %182 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %181, i32 0, i32 0
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = load i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32*, i32)** %184, align 8
  %186 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %4, align 8
  %187 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %190 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %191 = call i32 %185(%struct.TYPE_8__* %188, i32 %189, i32 38, i32* %190, i32 4)
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %178, %176, %161, %147, %133, %126, %110, %94, %79, %61, %51, %38, %25, %11
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_8__*, i32, i32, i32) #2

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
