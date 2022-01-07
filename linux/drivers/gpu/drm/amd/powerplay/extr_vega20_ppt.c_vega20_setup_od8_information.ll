; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_setup_od8_information.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_setup_od8_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i64, %struct.smu_table_context }
%struct.smu_table_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.vega20_od8_settings = type { i32*, i32*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODFEATURE_COUNT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATOM_VEGA20_ODSETTING_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*)* @vega20_setup_od8_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_setup_od8_information(%struct.smu_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smu_context*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.smu_table_context*, align 8
  %6 = alloca %struct.vega20_od8_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %12 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %11, i32 0, i32 1
  store %struct.smu_table_context* %12, %struct.smu_table_context** %5, align 8
  %13 = load %struct.smu_context*, %struct.smu_context** %3, align 8
  %14 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vega20_od8_settings*
  store %struct.vega20_od8_settings* %16, %struct.vega20_od8_settings** %6, align 8
  %17 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %18 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %171

24:                                               ; preds = %1
  %25 = load %struct.smu_table_context*, %struct.smu_table_context** %5, align 8
  %26 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %170

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = load i64, i64* @ATOM_VEGA20_ODFEATURE_COUNT, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @ATOM_VEGA20_ODFEATURE_COUNT, align 8
  br label %49

43:                                               ; preds = %33
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @le32_to_cpu(i32 %47)
  br label %49

49:                                               ; preds = %43, %41
  %50 = phi i64 [ %42, %41 ], [ %48, %43 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 4, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %57 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %171

63:                                               ; preds = %49
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kmemdup(i32* %66, i32 %67, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %72 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %74 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %63
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %171

80:                                               ; preds = %63
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32_to_cpu(i32 %84)
  %86 = load i64, i64* @ATOM_VEGA20_ODSETTING_COUNT, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i64, i64* @ATOM_VEGA20_ODSETTING_COUNT, align 8
  br label %96

90:                                               ; preds = %80
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @le32_to_cpu(i32 %94)
  br label %96

96:                                               ; preds = %90, %88
  %97 = phi i64 [ %89, %88 ], [ %95, %90 ]
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %104 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %96
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %171

110:                                              ; preds = %96
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i8* @kmemdup(i32* %113, i32 %114, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %119 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %118, i32 0, i32 0
  store i32* %117, i32** %119, align 8
  %120 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %121 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %110
  %125 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %126 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  %129 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %130 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %129, i32 0, i32 1
  store i32* null, i32** %130, align 8
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %171

133:                                              ; preds = %110
  %134 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %135 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %171

141:                                              ; preds = %133
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = call i8* @kmemdup(i32* %144, i32 %145, i32 %146)
  %148 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %149 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %148, i32 0, i32 2
  store i8* %147, i8** %149, align 8
  %150 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %151 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %169, label %154

154:                                              ; preds = %141
  %155 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %156 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @kfree(i32* %157)
  %159 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %160 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %159, i32 0, i32 1
  store i32* null, i32** %160, align 8
  %161 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %162 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @kfree(i32* %163)
  %165 = load %struct.vega20_od8_settings*, %struct.vega20_od8_settings** %6, align 8
  %166 = getelementptr inbounds %struct.vega20_od8_settings, %struct.vega20_od8_settings* %165, i32 0, i32 0
  store i32* null, i32** %166, align 8
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %171

169:                                              ; preds = %141
  br label %170

170:                                              ; preds = %169, %24
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %154, %138, %124, %107, %77, %60, %21
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
