; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_update_specified_od8_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_update_specified_od8_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64, %struct.smu_table_context }
%struct.smu_table_context = type { i64 }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.vega20_od8_settings = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32, i32)* @vega20_update_specified_od8_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_update_specified_od8_value(%struct.smu_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smu_table_context*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.vega20_od8_settings*, align 8
  store %struct.smu_context* %0, %struct.smu_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 1
  store %struct.smu_table_context* %12, %struct.smu_table_context** %8, align 8
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %8, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %9, align 8
  %17 = load %struct.smu_context*, %struct.smu_context** %5, align 8
  %18 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vega20_od8_settings*
  store %struct.vega20_od8_settings* %20, %struct.vega20_od8_settings** %10, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %146 [
    i32 137, label %22
    i32 138, label %28
    i32 136, label %55
    i32 133, label %61
    i32 135, label %67
    i32 132, label %73
    i32 134, label %79
    i32 131, label %85
    i32 128, label %91
    i32 129, label %118
    i32 141, label %122
    i32 140, label %128
    i32 139, label %134
    i32 130, label %140
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  br label %146

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %10, align 8
  %31 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 138
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %29, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %10, align 8
  %40 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 138
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %147

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 12
  store i8* %52, i8** %54, align 8
  br label %146

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 11
  store i8* %58, i8** %60, align 8
  br label %146

61:                                               ; preds = %3
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 10
  store i8* %64, i8** %66, align 8
  br label %146

67:                                               ; preds = %3
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 9
  store i8* %70, i8** %72, align 8
  br label %146

73:                                               ; preds = %3
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  br label %146

79:                                               ; preds = %3
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  store i8* %82, i8** %84, align 8
  br label %146

85:                                               ; preds = %3
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  store i8* %88, i8** %90, align 8
  br label %146

91:                                               ; preds = %3
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %10, align 8
  %94 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 128
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %92, %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %10, align 8
  %103 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 128
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %101, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %100, %91
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %147

112:                                              ; preds = %100
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  br label %146

118:                                              ; preds = %3
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  br label %146

122:                                              ; preds = %3
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  br label %146

128:                                              ; preds = %3
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  br label %146

134:                                              ; preds = %3
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  br label %146

140:                                              ; preds = %3
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %3, %140, %134, %128, %122, %118, %112, %85, %79, %73, %67, %61, %55, %49, %22
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %109, %46
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
