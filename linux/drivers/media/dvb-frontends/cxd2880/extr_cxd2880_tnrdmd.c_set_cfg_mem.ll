; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_set_cfg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_set_cfg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_MAX_CFG_MEM_COUNT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i64, i64, i64, i64)* @set_cfg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cfg_mem(%struct.cxd2880_tnrdmd* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxd2880_tnrdmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %17 = icmp ne %struct.cxd2880_tnrdmd* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %162

21:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %22

22:                                               ; preds = %93, %21
  %23 = load i64, i64* %14, align 8
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %96

28:                                               ; preds = %22
  %29 = load i64, i64* %15, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %92

31:                                               ; preds = %28
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %92

41:                                               ; preds = %31
  %42 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %43 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %41
  %52 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %53 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %51
  %62 = load i64, i64* %13, align 8
  %63 = xor i64 %62, -1
  %64 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %65 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, %63
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = and i64 %72, %73
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %76 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = or i64 %81, %74
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %83
  store i64 %91, i64* %89, align 8
  store i64 1, i64* %15, align 8
  br label %92

92:                                               ; preds = %61, %51, %41, %31, %28
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %14, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %14, align 8
  br label %22

96:                                               ; preds = %22
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %7, align 4
  br label %162

100:                                              ; preds = %96
  %101 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %102 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CXD2880_TNRDMD_MAX_CFG_MEM_COUNT, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %158

106:                                              ; preds = %100
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %109 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %112 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %118 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %121 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  store i64 %116, i64* %124, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %127 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %130 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i64 %125, i64* %133, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = and i64 %134, %135
  %137 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %138 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %137, i32 0, i32 1
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %141 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  store i64 %136, i64* %144, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %147 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %146, i32 0, i32 1
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %150 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 4
  store i64 %145, i64* %153, align 8
  %154 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %8, align 8
  %155 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %161

158:                                              ; preds = %100
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  br label %162

161:                                              ; preds = %106
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %158, %99, %18
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
