; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_sleep1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_sleep1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_10__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@x_sleep1_seq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*)* @x_sleep1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_sleep1(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca [3 x i32], align 4
  %5 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = bitcast [3 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %8 = icmp ne %struct.cxd2880_tnrdmd* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %145

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
  br label %145

21:                                               ; preds = %12
  %22 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %23 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %26 = load i32, i32* @x_sleep1_seq, align 4
  %27 = load i32, i32* @x_sleep1_seq, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_10__* %24, i32 %25, i32 %26, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %145

34:                                               ; preds = %21
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %36, align 4
  %37 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_10__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32*, i32)** %40, align 8
  %42 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %47 = call i32 %41(%struct.TYPE_10__* %44, i32 %45, i32 83, i32* %46, i32 2)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %145

52:                                               ; preds = %34
  %53 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_11__*, i32, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32)** %58, align 8
  %60 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %61 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %60, i32 0, i32 2
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %66 = call i32 %59(%struct.TYPE_11__* %64, i32 %65, i32 0, i32 0)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %145

71:                                               ; preds = %52
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 31, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 255, i32* %73, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  store i32 3, i32* %74, align 4
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load i32 (%struct.TYPE_11__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32*, i32)** %80, align 8
  %82 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %83 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %89 = call i32 %81(%struct.TYPE_11__* %86, i32 %87, i32 85, i32* %88, i32 3)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %71
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %145

94:                                               ; preds = %71
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 0, i32* %96, align 4
  %97 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %98 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %97, i32 0, i32 2
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32 (%struct.TYPE_11__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_11__*, i32, i32, i32*, i32)** %102, align 8
  %104 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %105 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %104, i32 0, i32 2
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %111 = call i32 %103(%struct.TYPE_11__* %108, i32 %109, i32 83, i32* %110, i32 2)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %94
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %145

116:                                              ; preds = %94
  %117 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %118 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %117, i32 0, i32 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32 (%struct.TYPE_10__*, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)** %120, align 8
  %122 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %123 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %122, i32 0, i32 1
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %126 = call i32 %121(%struct.TYPE_10__* %124, i32 %125, i32 0, i32 0)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %145

131:                                              ; preds = %116
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  store i32 31, i32* %132, align 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  store i32 255, i32* %133, align 4
  %134 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %135 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %134, i32 0, i32 1
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32 (%struct.TYPE_10__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32*, i32)** %137, align 8
  %139 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %140 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %144 = call i32 %138(%struct.TYPE_10__* %141, i32 %142, i32 85, i32* %143, i32 2)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %131, %129, %114, %92, %69, %50, %32, %18, %9
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_10__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
