; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_merge_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_merge_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }
%struct.ib_device = type { i32 }
%struct.uapi_definition = type { %struct.TYPE_3__, i32 (%struct.ib_device.0*)*, i32, %struct.TYPE_4__*, %struct.uapi_definition*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_device.0 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.uverbs_api_object = type { i32 }

@UVERBS_API_KEY_ERR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_api*, %struct.ib_device*, %struct.uapi_definition*, i32)* @uapi_merge_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uapi_merge_def(%struct.uverbs_api* %0, %struct.ib_device* %1, %struct.uapi_definition* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uverbs_api*, align 8
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca %struct.uapi_definition*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uapi_definition*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca %struct.uverbs_api_object*, align 8
  store %struct.uverbs_api* %0, %struct.uverbs_api** %6, align 8
  store %struct.ib_device* %1, %struct.ib_device** %7, align 8
  store %struct.uapi_definition* %2, %struct.uapi_definition** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.uapi_definition*, %struct.uapi_definition** %8, align 8
  store %struct.uapi_definition* %17, %struct.uapi_definition** %10, align 8
  %18 = load i32, i32* @UVERBS_API_KEY_ERR, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* @UVERBS_API_KEY_ERR, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.uapi_definition*, %struct.uapi_definition** %8, align 8
  %21 = icmp ne %struct.uapi_definition* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %155

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %152, %23
  %25 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %26 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %148 [
    i32 134, label %28
    i32 133, label %41
    i32 132, label %75
    i32 131, label %76
    i32 130, label %101
    i32 129, label %121
    i32 128, label %137
  ]

28:                                               ; preds = %24
  %29 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %31 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %32 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %31, i32 0, i32 4
  %33 = load %struct.uapi_definition*, %struct.uapi_definition** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @uapi_merge_def(%struct.uverbs_api* %29, %struct.ib_device* %30, %struct.uapi_definition* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  br label %155

40:                                               ; preds = %28
  br label %152

41:                                               ; preds = %24
  %42 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %43 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %47 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %45, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %155

58:                                               ; preds = %41
  %59 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %60 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @uapi_key_obj(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %65 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %66 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @uapi_merge_obj_tree(%struct.uverbs_api* %64, %struct.TYPE_4__* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %155

74:                                               ; preds = %58
  br label %152

75:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %155

76:                                               ; preds = %24
  %77 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %78 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %77, i32 0, i32 0
  %79 = bitcast i32* %78 to i8*
  %80 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %81 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %79, i64 %83
  %85 = bitcast i8* %84 to i8**
  store i8** %85, i8*** %15, align 8
  %86 = load i8**, i8*** %15, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %152

90:                                               ; preds = %76
  %91 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %92 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @uapi_disable_elm(%struct.uverbs_api* %91, %struct.uapi_definition* %92, i32 %93, i32 %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %5, align 4
  br label %155

100:                                              ; preds = %90
  br label %152

101:                                              ; preds = %24
  %102 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %103 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %102, i32 0, i32 1
  %104 = load i32 (%struct.ib_device.0*)*, i32 (%struct.ib_device.0*)** %103, align 8
  %105 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %106 = bitcast %struct.ib_device* %105 to %struct.ib_device.0*
  %107 = call i32 %104(%struct.ib_device.0* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %152

110:                                              ; preds = %101
  %111 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %112 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @uapi_disable_elm(%struct.uverbs_api* %111, %struct.uapi_definition* %112, i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %5, align 4
  br label %155

120:                                              ; preds = %110
  br label %152

121:                                              ; preds = %24
  %122 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %123 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @uapi_key_obj(i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call %struct.uverbs_api_object* @uapi_add_get_elm(%struct.uverbs_api* %127, i32 %128, i32 4, i32* %13)
  store %struct.uverbs_api_object* %129, %struct.uverbs_api_object** %16, align 8
  %130 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %16, align 8
  %131 = call i32 @IS_ERR(%struct.uverbs_api_object* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %121
  %134 = load %struct.uverbs_api_object*, %struct.uverbs_api_object** %16, align 8
  %135 = call i32 @PTR_ERR(%struct.uverbs_api_object* %134)
  store i32 %135, i32* %5, align 4
  br label %155

136:                                              ; preds = %121
  br label %152

137:                                              ; preds = %24
  %138 = load %struct.uverbs_api*, %struct.uverbs_api** %6, align 8
  %139 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %140 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @uapi_create_write(%struct.uverbs_api* %138, %struct.ib_device* %139, %struct.uapi_definition* %140, i32 %141, i32* %12)
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %155

147:                                              ; preds = %137
  br label %152

148:                                              ; preds = %24
  %149 = call i32 @WARN_ON(i32 1)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %155

152:                                              ; preds = %147, %136, %120, %109, %100, %89, %74, %40
  %153 = load %struct.uapi_definition*, %struct.uapi_definition** %10, align 8
  %154 = getelementptr inbounds %struct.uapi_definition, %struct.uapi_definition* %153, i32 1
  store %struct.uapi_definition* %154, %struct.uapi_definition** %10, align 8
  br label %24

155:                                              ; preds = %148, %145, %133, %118, %98, %75, %72, %55, %38, %22
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @uapi_key_obj(i32) #1

declare dso_local i32 @uapi_merge_obj_tree(%struct.uverbs_api*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @uapi_disable_elm(%struct.uverbs_api*, %struct.uapi_definition*, i32, i32) #1

declare dso_local %struct.uverbs_api_object* @uapi_add_get_elm(%struct.uverbs_api*, i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(%struct.uverbs_api_object*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_api_object*) #1

declare dso_local i32 @uapi_create_write(%struct.uverbs_api*, %struct.ib_device*, %struct.uapi_definition*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
