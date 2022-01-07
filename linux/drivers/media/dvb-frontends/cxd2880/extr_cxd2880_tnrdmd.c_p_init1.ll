; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_p_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_p_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32)* }
%struct.TYPE_12__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SINGLE = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@p_init1_seq = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*)* @p_init1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_init1(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %7 = icmp ne %struct.cxd2880_tnrdmd* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %211

11:                                               ; preds = %1
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %15, align 8
  %17 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %18 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %17, i32 0, i32 2
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %21 = call i32 %16(%struct.TYPE_13__* %19, i32 %20, i32 0, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %211

26:                                               ; preds = %11
  %27 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SINGLE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %32, %26
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %46 [
    i32 128, label %43
    i32 129, label %44
    i32 130, label %45
  ]

43:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %49

44:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %49

45:                                               ; preds = %38
  store i32 2, i32* %4, align 4
  br label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %211

49:                                               ; preds = %45, %44, %43
  %50 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %51 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %50, i32 0, i32 2
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %53, align 8
  %55 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 %54(%struct.TYPE_13__* %57, i32 %58, i32 16, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %211

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %32
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 2
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %71 = load i32, i32* @p_init1_seq, align 4
  %72 = load i32, i32* @p_init1_seq, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_13__* %69, i32 %70, i32 %71, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %211

79:                                               ; preds = %66
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %85 [
    i32 132, label %83
    i32 131, label %84
  ]

83:                                               ; preds = %79
  store i32 26, i32* %4, align 4
  br label %88

84:                                               ; preds = %79
  store i32 22, i32* %4, align 4
  br label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @ENOTTY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %211

88:                                               ; preds = %84, %83
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %90 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %89, i32 0, i32 2
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %92, align 8
  %94 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %94, i32 0, i32 2
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 %93(%struct.TYPE_13__* %96, i32 %97, i32 16, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %211

104:                                              ; preds = %88
  %105 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %106 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %112

111:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %110
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 2
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %116, align 8
  %118 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %119 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %118, i32 0, i32 2
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 %117(%struct.TYPE_13__* %120, i32 %121, i32 17, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %112
  %127 = load i32, i32* %5, align 4
  store i32 %127, i32* %2, align 4
  br label %211

128:                                              ; preds = %112
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 2
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %132, align 8
  %134 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %135 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %134, i32 0, i32 2
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 %133(%struct.TYPE_13__* %136, i32 %137, i32 19, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %211

144:                                              ; preds = %128
  %145 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %146 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %145, i32 0, i32 2
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %148, align 8
  %150 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %151 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %150, i32 0, i32 2
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %151, align 8
  %153 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %154 = call i32 %149(%struct.TYPE_13__* %152, i32 %153, i32 0, i32 0)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %144
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %211

159:                                              ; preds = %144
  %160 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %161 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %160, i32 0, i32 2
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %163, align 8
  %165 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %166 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %165, i32 0, i32 2
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %169 = load i32, i32* %4, align 4
  %170 = call i32 %164(%struct.TYPE_13__* %167, i32 %168, i32 18, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %159
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %211

175:                                              ; preds = %159
  %176 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %177 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %176, i32 0, i32 2
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %179, align 8
  %181 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %182 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %181, i32 0, i32 2
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %185 = call i32 %180(%struct.TYPE_13__* %183, i32 %184, i32 0, i32 16)
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i32, i32* %5, align 4
  store i32 %189, i32* %2, align 4
  br label %211

190:                                              ; preds = %175
  %191 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %192 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %196 [
    i32 132, label %194
    i32 131, label %195
  ]

194:                                              ; preds = %190
  store i32 1, i32* %4, align 4
  br label %199

195:                                              ; preds = %190
  store i32 0, i32* %4, align 4
  br label %199

196:                                              ; preds = %190
  %197 = load i32, i32* @ENOTTY, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %2, align 4
  br label %211

199:                                              ; preds = %195, %194
  %200 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %201 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %200, i32 0, i32 2
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32 (%struct.TYPE_13__*, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32, i32, i32)** %203, align 8
  %205 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %206 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %205, i32 0, i32 2
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %206, align 8
  %208 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %209 = load i32, i32* %4, align 4
  %210 = call i32 %204(%struct.TYPE_13__* %207, i32 %208, i32 105, i32 %209)
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %199, %196, %188, %173, %157, %142, %126, %102, %85, %77, %63, %46, %24, %8
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
