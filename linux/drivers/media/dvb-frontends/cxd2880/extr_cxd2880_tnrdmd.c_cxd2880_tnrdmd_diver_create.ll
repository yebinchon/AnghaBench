; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_diver_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_diver_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i32, i32, i32, i32*, i32*, i32*, %struct.cxd2880_tnrdmd*, i32, %struct.cxd2880_io*, %struct.cxd2880_tnrdmd_create_param }
%struct.cxd2880_tnrdmd_create_param = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.cxd2880_io = type { i32 }
%struct.cxd2880_tnrdmd_diver_create_param = type { i32, i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_XTAL_SHARE_MASTER = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_XTAL_SHARE_SLAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_diver_create(%struct.cxd2880_tnrdmd* %0, %struct.cxd2880_io* %1, %struct.cxd2880_tnrdmd* %2, %struct.cxd2880_io* %3, %struct.cxd2880_tnrdmd_diver_create_param* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_tnrdmd*, align 8
  %8 = alloca %struct.cxd2880_io*, align 8
  %9 = alloca %struct.cxd2880_tnrdmd*, align 8
  %10 = alloca %struct.cxd2880_io*, align 8
  %11 = alloca %struct.cxd2880_tnrdmd_diver_create_param*, align 8
  %12 = alloca %struct.cxd2880_tnrdmd_create_param*, align 8
  %13 = alloca %struct.cxd2880_tnrdmd_create_param*, align 8
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %7, align 8
  store %struct.cxd2880_io* %1, %struct.cxd2880_io** %8, align 8
  store %struct.cxd2880_tnrdmd* %2, %struct.cxd2880_tnrdmd** %9, align 8
  store %struct.cxd2880_io* %3, %struct.cxd2880_io** %10, align 8
  store %struct.cxd2880_tnrdmd_diver_create_param* %4, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %14 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %15 = icmp ne %struct.cxd2880_tnrdmd* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %5
  %17 = load %struct.cxd2880_io*, %struct.cxd2880_io** %8, align 8
  %18 = icmp ne %struct.cxd2880_io* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %21 = icmp ne %struct.cxd2880_tnrdmd* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.cxd2880_io*, %struct.cxd2880_io** %10, align 8
  %24 = icmp ne %struct.cxd2880_io* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %27 = icmp ne %struct.cxd2880_tnrdmd_diver_create_param* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %19, %16, %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %145

31:                                               ; preds = %25
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %33 = call i32 @memset(%struct.cxd2880_tnrdmd* %32, i32 0, i32 104)
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %35 = call i32 @memset(%struct.cxd2880_tnrdmd* %34, i32 0, i32 104)
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %36, i32 0, i32 9
  store %struct.cxd2880_tnrdmd_create_param* %37, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %38 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %38, i32 0, i32 9
  store %struct.cxd2880_tnrdmd_create_param* %39, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %40 = load %struct.cxd2880_io*, %struct.cxd2880_io** %8, align 8
  %41 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %42 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %41, i32 0, i32 8
  store %struct.cxd2880_io* %40, %struct.cxd2880_io** %42, align 8
  %43 = load i32, i32* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 4
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %45 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %47 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %47, i32 0, i32 6
  store %struct.cxd2880_tnrdmd* %46, %struct.cxd2880_tnrdmd** %48, align 8
  %49 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %50 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %53 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 8
  %55 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %56 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @CXD2880_TNRDMD_XTAL_SHARE_MASTER, align 4
  %61 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %62 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %64 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %67 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  %68 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %69 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %72 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %74 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %77 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %12, align 8
  %82 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cxd2880_io*, %struct.cxd2880_io** %10, align 8
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 8
  store %struct.cxd2880_io* %83, %struct.cxd2880_io** %85, align 8
  %86 = load i32, i32* @CXD2880_TNRDMD_DIVERMODE_SUB, align 4
  %87 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %88 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %90 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %89, i32 0, i32 6
  store %struct.cxd2880_tnrdmd* null, %struct.cxd2880_tnrdmd** %90, align 8
  %91 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %92 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %97 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %100 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @CXD2880_TNRDMD_XTAL_SHARE_SLAVE, align 4
  %102 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %103 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %105 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %107 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %110 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %112 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %115 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.cxd2880_tnrdmd_diver_create_param*, %struct.cxd2880_tnrdmd_diver_create_param** %11, align 8
  %117 = getelementptr inbounds %struct.cxd2880_tnrdmd_diver_create_param, %struct.cxd2880_tnrdmd_diver_create_param* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.cxd2880_tnrdmd_create_param*, %struct.cxd2880_tnrdmd_create_param** %13, align 8
  %120 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, %struct.cxd2880_tnrdmd_create_param* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %122 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %124 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %126 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %125, i32 0, i32 2
  store i32 1, i32* %126, align 8
  %127 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %128 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %127, i32 0, i32 5
  store i32* null, i32** %128, align 8
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 4
  store i32* null, i32** %130, align 8
  %131 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %7, align 8
  %132 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %131, i32 0, i32 3
  store i32* null, i32** %132, align 8
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %134 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %136 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  %139 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %140 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %139, i32 0, i32 5
  store i32* null, i32** %140, align 8
  %141 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %142 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %141, i32 0, i32 4
  store i32* null, i32** %142, align 8
  %143 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %9, align 8
  %144 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %143, i32 0, i32 3
  store i32* null, i32** %144, align 8
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %31, %28
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @memset(%struct.cxd2880_tnrdmd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
