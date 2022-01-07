; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_process_idrs_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_ioctl.c_uverbs_process_idrs_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle_priv = type { i32, i32 }
%struct.uverbs_api_attr = type { %struct.uverbs_attr_spec }
%struct.uverbs_attr_spec = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32, i32 }
%struct.uverbs_objs_arr_attr = type { i64, i32** }
%struct.ib_uverbs_attr = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bundle_priv*, %struct.uverbs_api_attr*, %struct.uverbs_objs_arr_attr*, %struct.ib_uverbs_attr*, i32)* @uverbs_process_idrs_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uverbs_process_idrs_array(%struct.bundle_priv* %0, %struct.uverbs_api_attr* %1, %struct.uverbs_objs_arr_attr* %2, %struct.ib_uverbs_attr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bundle_priv*, align 8
  %8 = alloca %struct.uverbs_api_attr*, align 8
  %9 = alloca %struct.uverbs_objs_arr_attr*, align 8
  %10 = alloca %struct.ib_uverbs_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.uverbs_attr_spec*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.bundle_priv* %0, %struct.bundle_priv** %7, align 8
  store %struct.uverbs_api_attr* %1, %struct.uverbs_api_attr** %8, align 8
  store %struct.uverbs_objs_arr_attr* %2, %struct.uverbs_objs_arr_attr** %9, align 8
  store %struct.ib_uverbs_attr* %3, %struct.ib_uverbs_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.uverbs_api_attr*, %struct.uverbs_api_attr** %8, align 8
  %18 = getelementptr inbounds %struct.uverbs_api_attr, %struct.uverbs_api_attr* %17, i32 0, i32 0
  store %struct.uverbs_attr_spec* %18, %struct.uverbs_attr_spec** %12, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %181

27:                                               ; preds = %5
  %28 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = urem i64 %31, 4
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %181

37:                                               ; preds = %27
  %38 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %39 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.uverbs_attr_spec*, %struct.uverbs_attr_spec** %12, align 8
  %45 = getelementptr inbounds %struct.uverbs_attr_spec, %struct.uverbs_attr_spec* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %43, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %37
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.uverbs_attr_spec*, %struct.uverbs_attr_spec** %12, align 8
  %53 = getelementptr inbounds %struct.uverbs_attr_spec, %struct.uverbs_attr_spec* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %51, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50, %37
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %181

61:                                               ; preds = %50
  %62 = load %struct.bundle_priv*, %struct.bundle_priv** %7, align 8
  %63 = getelementptr inbounds %struct.bundle_priv, %struct.bundle_priv* %62, i32 0, i32 1
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @array_size(i64 %64, i32 8)
  %66 = call i32* @uverbs_alloc(i32* %63, i32 %65)
  %67 = bitcast i32* %66 to i32**
  %68 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %69 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %68, i32 0, i32 1
  store i32** %67, i32*** %69, align 8
  %70 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %71 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = bitcast i32** %72 to i32*
  %74 = call i64 @IS_ERR(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %61
  %77 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %78 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = bitcast i32** %79 to i32*
  %81 = call i32 @PTR_ERR(i32* %80)
  store i32 %81, i32* %6, align 4
  br label %181

82:                                               ; preds = %61
  %83 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %84 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %83, i32 0, i32 1
  %85 = load i32**, i32*** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32*, i32** %85, i64 %86
  %88 = bitcast i32** %87 to i32*
  %89 = load i64, i64* %13, align 8
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32* %91, i32** %14, align 8
  %92 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %93 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ugt i64 %95, 4
  br i1 %96, label %97, label %113

97:                                               ; preds = %82
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %100 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @u64_to_user_ptr(i32 %101)
  %103 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %104 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @copy_from_user(i32* %98, i32 %102, i32 %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load i32, i32* @EFAULT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %181

112:                                              ; preds = %97
  br label %121

113:                                              ; preds = %82
  %114 = load i32*, i32** %14, align 8
  %115 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %116 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %115, i32 0, i32 1
  %117 = load %struct.ib_uverbs_attr*, %struct.ib_uverbs_attr** %10, align 8
  %118 = getelementptr inbounds %struct.ib_uverbs_attr, %struct.ib_uverbs_attr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i32* %114, i32* %116, i32 %119)
  br label %121

121:                                              ; preds = %113, %112
  store i64 0, i64* %16, align 8
  br label %122

122:                                              ; preds = %168, %121
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %122
  %127 = load %struct.uverbs_attr_spec*, %struct.uverbs_attr_spec** %12, align 8
  %128 = getelementptr inbounds %struct.uverbs_attr_spec, %struct.uverbs_attr_spec* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.uverbs_attr_spec*, %struct.uverbs_attr_spec** %12, align 8
  %133 = getelementptr inbounds %struct.uverbs_attr_spec, %struct.uverbs_attr_spec* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i64, i64* %16, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.bundle_priv*, %struct.bundle_priv** %7, align 8
  %142 = getelementptr inbounds %struct.bundle_priv, %struct.bundle_priv* %141, i32 0, i32 1
  %143 = call i32 @uverbs_get_uobject_from_file(i32 %131, i32 %136, i32 %140, i32* %142)
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to i32*
  %146 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %147 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %146, i32 0, i32 1
  %148 = load i32**, i32*** %147, align 8
  %149 = load i64, i64* %16, align 8
  %150 = getelementptr inbounds i32*, i32** %148, i64 %149
  store i32* %145, i32** %150, align 8
  %151 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %152 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = call i64 @IS_ERR(i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %126
  %160 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %161 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %160, i32 0, i32 1
  %162 = load i32**, i32*** %161, align 8
  %163 = load i64, i64* %16, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @PTR_ERR(i32* %165)
  store i32 %166, i32* %15, align 4
  br label %171

167:                                              ; preds = %126
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %16, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %16, align 8
  br label %122

171:                                              ; preds = %159, %122
  %172 = load i64, i64* %16, align 8
  %173 = load %struct.uverbs_objs_arr_attr*, %struct.uverbs_objs_arr_attr** %9, align 8
  %174 = getelementptr inbounds %struct.uverbs_objs_arr_attr, %struct.uverbs_objs_arr_attr* %173, i32 0, i32 0
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.bundle_priv*, %struct.bundle_priv** %7, align 8
  %177 = getelementptr inbounds %struct.bundle_priv, %struct.bundle_priv* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @__set_bit(i32 %175, i32 %178)
  %180 = load i32, i32* %15, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %171, %109, %76, %58, %34, %24
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32* @uverbs_alloc(i32*, i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @uverbs_get_uobject_from_file(i32, i32, i32, i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
