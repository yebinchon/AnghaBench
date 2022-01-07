; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_pre_bit_err_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_pre_bit_err_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_DVBT2_FEC_LDPC_16K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32*, i32*)* @cxd2880_pre_bit_err_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_pre_bit_err_t2(%struct.cxd2880_tnrdmd* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %13 = icmp ne %struct.cxd2880_tnrdmd* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %186

23:                                               ; preds = %17
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %186

32:                                               ; preds = %23
  %33 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %34 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %186

41:                                               ; preds = %32
  %42 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %186

50:                                               ; preds = %41
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %52 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %186

57:                                               ; preds = %50
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 3
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %61, align 8
  %63 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %64 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %63, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %67 = call i32 %62(%struct.TYPE_6__* %65, i32 %66, i32 0, i32 11)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %72 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %71)
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %186

74:                                               ; preds = %57
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 3
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %78, align 8
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %85 = call i32 %79(%struct.TYPE_6__* %82, i32 %83, i32 60, i32* %84, i32 20)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %90 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %89)
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %186

92:                                               ; preds = %74
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %94 = load i32, i32* %93, align 16
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %99 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %98)
  %100 = load i32, i32* @EAGAIN, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %186

102:                                              ; preds = %92
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 15
  %106 = shl i32 %105, 24
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 16
  %110 = or i32 %106, %109
  %111 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %110, %113
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 4
  %116 = load i32, i32* %115, align 16
  %117 = or i32 %114, %116
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %120 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %122, align 8
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %128 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %129 = call i32 %123(%struct.TYPE_6__* %126, i32 %127, i32 160, i32* %128, i32 1)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %102
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %134 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %133)
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %4, align 4
  br label %186

136:                                              ; preds = %102
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %138 = load i32, i32* %137, align 16
  %139 = and i32 %138, 3
  %140 = load i32, i32* @CXD2880_DVBT2_FEC_LDPC_16K, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 16200, i32* %9, align 4
  br label %144

143:                                              ; preds = %136
  store i32 64800, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %142
  %145 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %146 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %145)
  %147 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %148 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %147, i32 0, i32 3
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32 (%struct.TYPE_6__*, i32, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32)** %150, align 8
  %152 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %153 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %152, i32 0, i32 3
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %156 = call i32 %151(%struct.TYPE_6__* %154, i32 %155, i32 0, i32 32)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %144
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %4, align 4
  br label %186

161:                                              ; preds = %144
  %162 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %163 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %162, i32 0, i32 3
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_6__*, i32, i32, i32*, i32)** %165, align 8
  %167 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %168 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %167, i32 0, i32 3
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %172 = call i32 %166(%struct.TYPE_6__* %169, i32 %170, i32 111, i32* %171, i32 1)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %161
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %4, align 4
  br label %186

177:                                              ; preds = %161
  %178 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %179 = load i32, i32* %178, align 16
  %180 = and i32 %179, 15
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = shl i32 1, %181
  %183 = load i32, i32* %9, align 4
  %184 = mul i32 %182, %183
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %177, %175, %159, %132, %97, %88, %70, %55, %47, %38, %29, %20
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
